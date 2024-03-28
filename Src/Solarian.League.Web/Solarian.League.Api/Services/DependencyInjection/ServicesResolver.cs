using Microsoft.Extensions.DependencyInjection;
using Solarian.League.Api.Services.Interfaces;

namespace Solarian.League.Api.Services.DependencyInjection;

public static class ServicesResolver
{
    public static void RegisterDependencies(IServiceCollection service)
    {
        service.AddTransient<IBlizzardService, BlizzardService>();
    }
}