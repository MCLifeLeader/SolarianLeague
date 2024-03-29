using Microsoft.Extensions.DependencyInjection;
using Solarian.League.Api.Models.State;

namespace Solarian.League.Api.Helpers.DependencyInjection;

public static class HelpersResolver
{
    public static void RegisterDependencies(IServiceCollection services)
    {
        services.AddTransient<ApplicationData>();

    }
}