using Microsoft.AspNetCore.Components.WebAssembly.Hosting;

namespace Solarian.League.Web;

public static class SetupMiddlewarePipeline
{
    public static WebAssemblyHost SetupMiddleware(this WebAssemblyHost app)
    {
        return app;
    }
}