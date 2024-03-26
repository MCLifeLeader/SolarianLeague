using FluentValidation;
using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using System.Net.Http.Headers;
using Solarian.League.Web.Constants;
using Solarian.League.Web.Helpers.DependencyInjection;
using Solarian.League.Web.Models.ApplicationSettings;
using Solarian.League.Web.Connection.DependencyInjection;
using Solarian.League.Web.Factories.DependencyInjection;
using Solarian.League.Web.Helpers.Extensions;
using Solarian.League.Web.Services.DependencyInjection;
using Solarian.League.Web.Repository.DependencyInjection;

namespace Solarian.League.Web;

public static class RegisterDependentServices
{
    public static WebAssemblyHostBuilder RegisterServices(this WebAssemblyHostBuilder builder)
    {
        #region Configuration Setup

        // Pull from configuration files based on base or lane specific settings.
        builder.Configuration
            .SetBasePath(Directory.GetCurrentDirectory())
            .AddJsonFile("appsettings.json", false, true)
            .AddJsonFile($"appsettings.{builder.HostEnvironment.Environment}.json", true, true);

        builder.Services.Configure<AppSettings>(builder.Configuration);
        AppSettings appSettings = new()
        {
            ConfigurationBase = builder.Configuration
        };

        // Bind the app settings to the model
        builder.Configuration.Bind(appSettings);

        // Adds the Fluent Validation to DI.
        builder.Services.AddValidatorsFromAssemblyContaining<Program>(ServiceLifetime.Singleton);

        // Validate the app settings model
        builder.Services
            .AddOptions<AppSettings>()
            .Bind(builder.Configuration)
            //.ValidateDataAnnotations()
            .ValidateFluently()
            .ValidateOnStart();

        builder.Services.AddSingleton(builder.Configuration);
        builder.Services.AddSingleton(appSettings);

        #endregion

        builder.Services.ConfigureHttpClientDefaults(http =>
        {
            // Turn on resilience by default
            http.AddStandardResilienceHandler();
        });
        builder.SetHttpClients(appSettings);

        builder.SetDependencyInjection(appSettings);

        builder.RootComponents.Add<App>("#app");
        builder.RootComponents.Add<HeadOutlet>("head::after");

        return builder;
    }

    private static void SetDependencyInjection(this WebAssemblyHostBuilder builder, AppSettings appSettings)
    {
        // connections
        ConnectionResolver.RegisterDependencies(builder.Services, appSettings);

        // services
        ServicesResolver.RegisterDependencies(builder.Services, appSettings);

        // helpers
        HelpersResolver.RegisterDependencies(builder.Services, appSettings);

        // repositories
        RepositoriesResolver.RegisterDependencies(builder.Services, appSettings);

        //factories
        FactoriesResolver.RegisterDependencies(builder.Services, appSettings);
    }

    private static void SetHttpClients(this WebAssemblyHostBuilder builder, AppSettings appSettings)
    {
        builder.Services.AddHttpClient(HttpClientNames.DISCORD_SERVER_DATA, c =>
        {
            c.BaseAddress = new Uri(appSettings.HttpClients!.DiscordClient!.BaseUrl!);

            c.DefaultRequestHeaders.Accept.Clear();
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            c.Timeout = TimeSpan.FromSeconds(120);
        });

        builder.Services.AddHttpClient(HttpClientNames.BLIZZARD_SERVER_DATA, c =>
        {
            c.BaseAddress = new Uri(appSettings.HttpClients!.BlizzardClient!.BaseUrl!);

            c.DefaultRequestHeaders.Accept.Clear();
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            c.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("text/plain"));
            c.Timeout = TimeSpan.FromSeconds(120);
        });

        //https://kb7ppb-function.azurewebsites.net
    }
}