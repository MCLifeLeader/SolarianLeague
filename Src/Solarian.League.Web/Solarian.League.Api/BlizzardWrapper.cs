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

    [Function("GuildDetails")]
    public async Task<IActionResult> GuildDetails([HttpTrigger(AuthorizationLevel.Function, "get", Route = "Guild/GuildDetails")] HttpRequest req)
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GuildDetails));

        try
        {
            return new OkObjectResult(await _blizzardService.GetGuildDetailsAsync());
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error in {nameof(GuildDetails)}");
            return new BadRequestObjectResult(ex.Message);
        }
    }

    [Function("GuildRoster")]
    public async Task<IActionResult> GuildRoster([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildRoster")] HttpRequest req)
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GuildRoster));

        try
        {
            return new OkObjectResult(await _blizzardService.GetGuildRosterAsync());
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error in {nameof(GuildRoster)}");
            return new BadRequestObjectResult(ex.Message);
        }
    }


    [Function("GuildActivity")]
    public async Task<IActionResult> GuildActivity([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildActivity")] HttpRequest req)
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GuildActivity));

        try
        {
            return new OkObjectResult(await _blizzardService.GetGuildActivityAsync());
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error in {nameof(GuildActivity)}");
            return new BadRequestObjectResult(ex.Message);
        }
    }

    [Function("GuildAchievements")]
    public async Task<IActionResult> GuildAchievements([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildAchievements")] HttpRequest req)
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GuildAchievements));

        try
        {
            return new OkObjectResult(await _blizzardService.GetGuildAchievementsAsync());
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error in {nameof(GuildAchievements)}");
            return new BadRequestObjectResult(ex.Message);
        }
    }

    [Function("CharacterSummary")]
    public async Task<IActionResult> CharacterSummary([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/CharacterSummary")] HttpRequest req)
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GuildAchievements));

        try
        {
            var character = req.Query["name"];

            if (string.IsNullOrEmpty(character))
            {
                return new BadRequestObjectResult("Missing 'name' on query string.");
            }

            return new OkObjectResult(await _blizzardService.GetCharacterSummaryAsync(character!));
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error in {nameof(GuildAchievements)}");
            return new BadRequestObjectResult(ex.Message);
        }
    }

    [Function("CharacterMedia")]
    public async Task<IActionResult> CharacterMedia([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/CharacterMedia")] HttpRequest req)
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(CharacterMedia));

        try
        {
            var character = req.Query["name"];

            if (string.IsNullOrEmpty(character))
            {
                return new BadRequestObjectResult("Missing 'name' on query string.");
            }

            return new OkObjectResult(await _blizzardService.GetCharacterMediaAsync(character!));
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, $"Error in {nameof(CharacterMedia)}");
            return new BadRequestObjectResult(ex.Message);
        }
    }
}
