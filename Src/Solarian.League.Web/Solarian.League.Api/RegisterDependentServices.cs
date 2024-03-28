using FluentValidation;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Newtonsoft.Json;
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
using System.Text.Json.Serialization;

namespace Solarian.League.Api;

public static class RegisterDependentServices
{
    public static HostBuilder RegisterServices(this IHostBuilder builder)
    {
        IConfiguration? configuration = null;
        AppSettings appSettings = new();

        builder.ConfigureFunctionsWebApplication((hostContext, services) =>
            {
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
            })
            .ConfigureServices((hostContext, services) =>
            {
                services.Configure<AppSettings>(configuration!);
                services.AddValidatorsFromAssemblyContaining<Program>(ServiceLifetime.Singleton);

                // Validate the app settings model
                services
                    .AddOptions<AppSettings>()
                    .Bind(configuration!)
                    .ValidateDataAnnotations()
                    .ValidateFluently()
                    .ValidateOnStart();

                if (string.IsNullOrEmpty(appSettings!.HttpClients!.BlizzardClient!.ClientId))
                {
                    appSettings!.HttpClients!.BlizzardClient!.ClientId =
                        Environment.GetEnvironmentVariable("Blizzard_ClientId") ?? configuration!["ClientId"];
                }

                if (string.IsNullOrEmpty(appSettings!.HttpClients!.BlizzardClient!.ClientSecret))
                {
                    appSettings!.HttpClients!.BlizzardClient!.ClientSecret =
                        Environment.GetEnvironmentVariable("Blizzard_ClientSecret") ?? configuration!["ClientSecret"];
                }

                services.AddSingleton(appSettings);

                services.SetDependencyInjection();

                //services.ConfigureHttpClientDefaults(http =>
                //{
                //    // Turn on resilience by default
                //    http.AddStandardResilienceHandler();
                //});

                services.SetHttpClients(appSettings);

                services.AddApplicationInsightsTelemetryWorkerService();
                services.ConfigureFunctionsApplicationInsights();
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
        BlizzardToken? token = null;

        services.AddHttpClient(HttpClientNames.BLIZZARD_OAUTH, c =>
        {
            string clientId = appSettings!.HttpClients!.BlizzardClient!.ClientId!;
            string clientSecret = appSettings!.HttpClients!.BlizzardClient!.ClientSecret!;

            c.BaseAddress = new Uri(appSettings!.HttpClients!.BlizzardClient!.BaseOAuthUrl!);

            c.DefaultRequestHeaders.Accept.Clear();
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            byte[] byteArray = Encoding.ASCII.GetBytes($"{clientId}:{clientSecret}");
            c.DefaultRequestHeaders.Authorization = new("Basic", Convert.ToBase64String(byteArray));

            c.Timeout = TimeSpan.FromSeconds(appSettings!.HttpClients!.BlizzardClient.TimeoutInSeconds);
        }).ConfigurePrimaryHttpMessageHandler(c =>
        {
            HttpClientHandler h = new HttpClientHandler
            {
                UseProxy = false
            };
            return h;
        });

        services.AddHttpClient(HttpClientNames.BLIZZARD_SERVER_DATA, c =>
        {
            c.BaseAddress = new Uri(appSettings!.HttpClients!.BlizzardClient!.BaseUrl!);

            c.DefaultRequestHeaders.Accept.Clear();
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            c.Timeout = TimeSpan.FromSeconds(appSettings!.HttpClients!.BlizzardClient.TimeoutInSeconds);

            // If we have a token, use it
            token ??= GetAuthToken(services, appSettings)!;

            c.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", token.AccessToken);
        }).ConfigurePrimaryHttpMessageHandler(c =>
        {
            HttpClientHandler h = new HttpClientHandler
            {
                UseProxy = false
            };
            return h;
        });
    }

    private static BlizzardToken? GetAuthToken(IServiceCollection services, AppSettings appSettings)
    {
        IServiceProvider serviceProvider = services.BuildServiceProvider();
        IHttpClientWrapper httpClient = serviceProvider.GetRequiredService<IHttpClientWrapper>();

        try
        {
            string route = "token?grant_type=client_credentials";
            string result = httpClient.PostData(route, string.Empty, HttpClientNames.BLIZZARD_OAUTH);
            BlizzardToken token=  result.FromJson<BlizzardToken>();
            
            return token;
        }
        catch (Exception e)
        {
            Console.WriteLine(e.ToString());
            return null;
        }
    }

    public class BlizzardToken
    {
        [JsonProperty("access_token")]
        [JsonPropertyName("access_token")]
        public string? AccessToken { get; set; }
        [JsonProperty("token_type")]
        [JsonPropertyName("token_type")]
        public string? TokenType { get; set; }
        [JsonProperty("expires_in")]
        [JsonPropertyName("expires_in")]
        public int? ExpiresIn { get; set; }
        [JsonProperty("sub")]
        [JsonPropertyName("sub")]
        public string? Sub { get; set; }
    }
}