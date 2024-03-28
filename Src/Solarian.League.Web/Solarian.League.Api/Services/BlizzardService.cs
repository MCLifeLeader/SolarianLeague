using Microsoft.Extensions.Logging;
using Solarian.League.Api.Repository.Http.Blizzard.Interfaces;
using Solarian.League.Api.Services.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

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

    public async Task<GuildRoot> GetGuildRosterAsync()
    {
        _logger.LogInformation("GetGuildRosterAsync Called");
        return await _blizzardRepository.GetGuildRosterAsync();
    }
}