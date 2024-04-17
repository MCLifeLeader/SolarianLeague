using FluentValidation;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Solarian.League.Api.Connection.DependencyInjection;
using Solarian.League.Api.Constants;
using Solarian.League.Api.Factories.DependencyInjection;
using Solarian.League.Api.Helpers.DependencyInjection;
using Solarian.League.Api.Helpers.Extensions;
using Solarian.League.Api.Models.ApplicationSettings;
using Solarian.League.Api.Models.State;
using Solarian.League.Api.Repository.DependencyInjection;
using Solarian.League.Api.Services.DependencyInjection;
using Solarian.League.Common.Connection.Interfaces;
using System.Net.Http.Headers;
using System.Text;

namespace Solarian.League.Api;

public static class RegisterDependentServices
{
    public static HostBuilder RegisterServices(this IHostBuilder builder)
    {
        IConfiguration? configuration = null;
        AppSettings appSettings = new();

        builder.ConfigureFunctionsWebApplication((hostContext, services) =>
        {
            #region ConfigureFunctionsWebApplication
            IConfigurationBuilder configBuilder = new ConfigurationBuilder()
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", false, true)
                .AddEnvironmentVariables();

            configuration = configBuilder.Build();

            // Use the Prebuild configuration
            configuration = configBuilder
                .SetBasePath(Directory.GetCurrentDirectory())
                .AddJsonFile("appsettings.json", false, true)
                .AddEnvironmentVariables()
                .AddUserSecrets<Program>()
                .Build();

            // Bind the app settings to the model
            configuration.Bind(appSettings);

            appSettings.ConfigurationBase = configuration;
            #endregion
        })
        .ConfigureServices((hostContext, services) =>
        {
            #region ConfigureServices
            services.Configure<AppSettings>(configuration!);
            services.AddValidatorsFromAssemblyContaining<Program>(ServiceLifetime.Singleton);

            // Validate the app settings model
            services
                .AddOptions<AppSettings>()
                .Bind(configuration!)
                .ValidateDataAnnotations()
                .ValidateFluently()
                .ValidateOnStart();

            if (string.IsNullOrEmpty(appSettings.HttpClients!.BlizzardClient!.ClientId))
            {
                appSettings.HttpClients!.BlizzardClient!.ClientId =
                    Environment.GetEnvironmentVariable("Blizzard_ClientId") ?? configuration!["ClientId"];
            }

            if (string.IsNullOrEmpty(appSettings.HttpClients!.BlizzardClient!.ClientSecret))
            {
                appSettings.HttpClients!.BlizzardClient!.ClientSecret =
                    Environment.GetEnvironmentVariable("Blizzard_ClientSecret") ?? configuration!["ClientSecret"];
            }

            services.AddSingleton(appSettings);

            services.SetDependencyInjection();

            //services.ConfigureHttpClientDefaults(http =>
            //{
            //    // Turn on resilience by default
            //    http.AddStandardResilienceHandler();
            //});
            
            services.AddCors(o =>
            {
                o.AddPolicy("CorsAllowAll", build =>
                {
                    build.AllowAnyOrigin()
                        .AllowAnyMethod()
                        .AllowAnyHeader();
                });
            });

            services.SetHttpClients(appSettings);

            services.AddApplicationInsightsTelemetryWorkerService();
            services.ConfigureFunctionsApplicationInsights();
            #endregion
        });

        return (HostBuilder)builder;
    }

    private static void SetDependencyInjection(this IServiceCollection services)
    {
        // connection
        ConnectionResolver.RegisterDependencies(services);

        // services
        ServicesResolver.RegisterDependencies(services);

        // helpers
        HelpersResolver.RegisterDependencies(services);

        // repositories
        RepositoriesResolver.RegisterDependencies(services);

        //factories
        FactoriesResolver.RegisterDependencies(services);
    }

    private static void SetHttpClients(this IServiceCollection services, AppSettings appSettings)
    {
        #region Blizzard OAuth Client
        services.AddHttpClient(HttpClientNames.BLIZZARD_OAUTH, c =>
        {
            string clientId = appSettings.HttpClients!.BlizzardClient!.ClientId!.Trim();
            string clientSecret = appSettings.HttpClients!.BlizzardClient!.ClientSecret!.Trim();

            string serverUrl = appSettings.HttpClients!.BlizzardClient!.BaseOAuthUrl!
                .Replace("*", appSettings.HttpClients.BlizzardClient.Region);

            c.BaseAddress = new Uri(serverUrl);
            c.DefaultRequestHeaders.Accept.Clear();
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            c.DefaultRequestHeaders.Add("cache-control", "no-cache");
            c.DefaultRequestHeaders.Add("User-Agent", "Solarian.League.Api");

            byte[] byteArray = Encoding.ASCII.GetBytes($"{clientId}:{clientSecret}");
            c.DefaultRequestHeaders.Authorization = new("Basic", Convert.ToBase64String(byteArray));

            c.Timeout = TimeSpan.FromSeconds(appSettings.HttpClients!.BlizzardClient.TimeoutInSeconds);
        }).ConfigurePrimaryHttpMessageHandler(c =>
        {
            HttpClientHandler h = new HttpClientHandler
            {
                UseProxy = false
            };
            return h;
        });
        #endregion

        #region Blizzard Server Data Client
        services.AddHttpClient(HttpClientNames.BLIZZARD_SERVER_DATA, c =>
        {
            string serverUrl = appSettings.HttpClients!.BlizzardClient!.BaseUrl!
                .Replace("*", appSettings.HttpClients.BlizzardClient.Region);

            c.BaseAddress = new Uri(serverUrl);
            c.DefaultRequestHeaders.Accept.Clear();
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            c.Timeout = TimeSpan.FromSeconds(appSettings.HttpClients!.BlizzardClient.TimeoutInSeconds);

            var token = GetAuthToken(services, appSettings)!;

            c.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token.AccessToken);
        }).ConfigurePrimaryHttpMessageHandler(c =>
        {
            HttpClientHandler h = new HttpClientHandler
            {
                UseProxy = false
            };
            return h;
        });
        #endregion
    }

    #region Get Auth Token Method
    private static OAuthToken GetAuthToken(IServiceCollection services, AppSettings appSettings)
    {
        OAuthToken token;
        IServiceProvider serviceProvider = services.BuildServiceProvider();
        IHttpClientWrapper httpClient = serviceProvider.GetRequiredService<IHttpClientWrapper>();
        ApplicationData applicationData = serviceProvider.GetRequiredService<ApplicationData>();

        if (applicationData.LastTokenRefresh <= DateTime.UtcNow)
        {
            if (!string.IsNullOrEmpty(applicationData.AuthToken?.AccessToken))
            {
                try
                {
                    string route = $"oauth/check_token?token={applicationData.AuthToken?.AccessToken}&region={appSettings.HttpClients!.BlizzardClient!.Region}";
                    var validTokenCheck = httpClient.PostData(route, string.Empty, HttpClientNames.BLIZZARD_OAUTH);
                    OAuthTokenValidation tokenValidation = validTokenCheck.FromJson<OAuthTokenValidation>();

                    if (tokenValidation.Exp < 0 || tokenValidation.Authorities?.Count == 0)
                    {
                        applicationData.AuthToken!.AccessToken = string.Empty;
                    }
                }
                catch
                {
                    applicationData.AuthToken!.AccessToken = string.Empty;
                }
            }

            // Check if token is expired or not set
            if (applicationData.AuthToken == null || string.IsNullOrEmpty(applicationData.AuthToken.AccessToken))
            {
                string route = "oauth/token?grant_type=client_credentials";
                var result = httpClient.PostData(route, string.Empty, HttpClientNames.BLIZZARD_OAUTH);
                token = result.FromJson<OAuthToken>();

                applicationData.AuthToken = token;
                applicationData.LastTokenRefresh = DateTime.UtcNow.AddSeconds(token.ExpiresIn);
            }
            else
            {
                // Use cached token
                token = applicationData.AuthToken!;
            }
        }
        else
        {
            // Use cached token
            token = applicationData.AuthToken!;
        }

        return token;
    }
    #endregion
}