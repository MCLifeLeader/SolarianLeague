using Solarian.League.Web.Models.ApplicationSettings;
using Solarian.League.Web.Repository.Http.Discord;
using Solarian.League.Web.Services;

namespace Solarian.League.Web.Repository.DependencyInjection;

public static class RepositoriesResolver
{
    public static void RegisterDependencies(IServiceCollection service, AppSettings appSettings)
    {
        service.AddScoped<IDiscordRepository, DiscordRepository>();
    }
}