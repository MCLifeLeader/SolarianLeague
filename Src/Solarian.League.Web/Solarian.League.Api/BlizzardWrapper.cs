using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api;

public class BlizzardWrapper
{
    private readonly ILogger<BlizzardWrapper> _logger;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardWrapper(ILogger<BlizzardWrapper> logger)
    {
        _logger = logger;
    }

    [Function("GuildBase")]
    public IActionResult GuildBase([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildBase")] HttpRequest req)
    {
        _logger.LogInformation("C# HTTP trigger function processed a request.");

        return new OkObjectResult(new GuildRoot());
    }
}
