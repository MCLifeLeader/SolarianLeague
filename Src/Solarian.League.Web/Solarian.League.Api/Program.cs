using Microsoft.Extensions.Hosting;
using Solarian.League.Api;

new HostBuilder()
    .RegisterServices()
    .Build()
    .Run();
