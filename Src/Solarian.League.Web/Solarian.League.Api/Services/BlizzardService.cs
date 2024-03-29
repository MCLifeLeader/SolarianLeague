using Microsoft.Extensions.Logging;
using Solarian.League.Api.Repository.Http.Blizzard.Interfaces;
using Solarian.League.Api.Services.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Detail;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Api.Services;

public class BlizzardService : IBlizzardService
{
    private readonly ILogger<BlizzardService> _logger;
    private readonly IBlizzardRepository _blizzardRepository;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardService(
        ILogger<BlizzardService> logger,
        IBlizzardRepository blizzardRepository)
    {
        _logger = logger;
        _blizzardRepository = blizzardRepository;
    }

    public async Task<GuildDetails?> GetGuildDetailsAsync()
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GetGuildDetailsAsync));

        try
        {
            return await _blizzardRepository.GetGuildDetailsAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "An error occurred while getting guild details");
            throw;
        }
    }

    public async Task<GuildRoster?> GetGuildRosterAsync()
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GetGuildRosterAsync));

        try
        {
            return await _blizzardRepository.GetGuildRosterAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "An error occurred while getting guild roster");
            throw;
        }
    }

    public async Task<GuildActivity?> GetGuildActivityAsync()
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GetGuildActivityAsync));

        try
        {
            return await _blizzardRepository.GetGuildActivityAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "An error occurred while getting guild activity");
            throw;
        }
    }

    public async Task<GuildAchievements?> GetGuildAchievementsAsync()
    {
        _logger.LogDebug("'{Class}.{Method}' called", GetType().Name, nameof(GetGuildAchievementsAsync));

        try
        {
            return await _blizzardRepository.GetGuildAchievementsAsync();
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "An error occurred while getting guild achievements");
            throw;
        }
    }
}
