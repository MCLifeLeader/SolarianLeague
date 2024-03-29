using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Solarian.League.Api.Models.ApplicationSettings;
using Solarian.League.Api.Services.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api;

public class BlizzardWrapper
{
    private readonly ILogger<BlizzardWrapper> _logger;
    private readonly IBlizzardService _blizzardService;
    private readonly AppSettings _appSettings;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardWrapper(
        ILogger<BlizzardWrapper> logger,
        IOptions<AppSettings> appSettings,
        IBlizzardService blizzardService)
    {
        _logger = logger;
        _appSettings = appSettings.Value;
        _blizzardService = blizzardService;
    }

    [Function("GuildDetails")]
    public async Task<IActionResult> GuildDetails([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildDetails")] HttpRequest req)
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
}
