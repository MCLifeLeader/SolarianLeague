using Solarian.League.Web.Models.Blizzard;
using Solarian.League.Web.Repository.Http.Blizzard;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Services;

public class BlizzardService : IBlizzardService
{
    private readonly IBlizzardRepository _blizzardRepository;

    public BlizzardService(IBlizzardRepository blizzardRepository)
    {
        _blizzardRepository = blizzardRepository;
    }

    public async Task<GuildRoster> GetGuildRosterAsync()
    {
        return await _blizzardRepository.GetGuildRosterAsync();
    }
}