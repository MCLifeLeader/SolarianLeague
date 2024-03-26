using Solarian.League.Web.Models.ApplicationSettings;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Services.DependencyInjection;

public static class ServicesResolver
{
    public static void RegisterDependencies(IServiceCollection service, AppSettings appSettings)
    {
        service.AddTransient<IDiscordService, DiscordService>();
        service.AddTransient<IBlizzardService, BlizzardService>();
    }
}