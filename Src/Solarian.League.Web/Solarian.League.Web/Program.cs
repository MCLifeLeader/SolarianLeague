using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using Solarian.League.Web;

await WebAssemblyHostBuilder.CreateDefault(args)
    .RegisterServices()
    .Build()
    .SetupMiddleware()
    .RunAsync();