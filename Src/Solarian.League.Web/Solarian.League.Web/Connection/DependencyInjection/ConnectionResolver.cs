using Solarian.League.Common.Connection;
using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Web.Models.ApplicationSettings;

namespace Solarian.League.Web.Connection.DependencyInjection;

public static class ConnectionResolver
{
    public static void RegisterDependencies(IServiceCollection service, AppSettings appSettings)
    {
        service.AddScoped<IHttpClientWrapper, HttpClientWrapper>();
    }
}