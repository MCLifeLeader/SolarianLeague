using Microsoft.Extensions.DependencyInjection;
using Solarian.League.Api.Repository.Http.Blizzard;

namespace Solarian.League.Api.Repository.DependencyInjection;

public static class RepositoriesResolver
{
    public static void RegisterDependencies(IServiceCollection service)
    {
        service.AddScoped<IBlizzardRepository, BlizzardRepository>();
    }
}