using Solarian.League.Web.Helpers.State;
using Solarian.League.Web.Models.ApplicationSettings;

namespace Solarian.League.Web.Helpers.DependencyInjection;

public static class HelpersResolver
{
    public static void RegisterDependencies(IServiceCollection service, AppSettings appSettings)
    {
        service.AddScoped<ApplicationData>();
    }
}