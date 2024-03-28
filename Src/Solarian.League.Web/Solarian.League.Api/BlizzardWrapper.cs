using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Solarian.League.Api.Services.Interfaces;

namespace Solarian.League.Api;

public class BlizzardWrapper
{
    private readonly ILogger<BlizzardWrapper> _logger;
    private readonly IBlizzardService _blizzardService;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardWrapper(
        ILogger<BlizzardWrapper> logger,
        IBlizzardService blizzardService)
    {
        _logger = logger;
        _blizzardService = blizzardService;
    }

    [Function("GuildBase")]
    public async Task<IActionResult> GuildBase([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildBase")] HttpRequest req)
    {
        var result = await _blizzardService.GetGuildRosterAsync();

        return new OkObjectResult(result);
    }
}
