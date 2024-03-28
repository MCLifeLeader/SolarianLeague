using Solarian.League.Api.Repository.Http.Blizzard;
using Solarian.League.Api.Services.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Services;

public class BlizzardService : IBlizzardService
{
    private readonly IBlizzardRepository _blizzardRepository;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardService(IBlizzardRepository blizzardRepository)
    {
        _blizzardRepository = blizzardRepository;
    }

    public async Task<GuildRoot> GetGuildRosterAsync()
    {
        return await _blizzardRepository.GetGuildRosterAsync();
    }
}