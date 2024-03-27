using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Solarian.League.Api.Model.Blizzard;

namespace Solarian.League.Api;

public class BlizzardWrapper
{
    private readonly ILogger<BlizzardWrapper> _logger;

    public BlizzardWrapper(ILogger<BlizzardWrapper> logger)
    {
        _logger = logger;
    }

    [Function("roster")]
    public IActionResult Run([HttpTrigger(AuthorizationLevel.Function, "get")] HttpRequest req)
    {
        _logger.LogInformation("C# HTTP trigger function processed a request.");

        GuildRoster roster = new GuildRoster()
        {
            Message = "Hello World!"
        };

        return new OkObjectResult(roster);
    }
}