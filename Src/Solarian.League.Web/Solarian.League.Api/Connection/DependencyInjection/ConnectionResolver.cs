using Microsoft.Extensions.DependencyInjection;
using Solarian.League.Common.Connection;
using Solarian.League.Common.Connection.Interfaces;

namespace Solarian.League.Api.Connection.DependencyInjection;

public static class ConnectionResolver
{
    public static void RegisterDependencies(IServiceCollection service)
    {
        service.AddScoped<IHttpClientWrapper, HttpClientWrapper>();
    }
}