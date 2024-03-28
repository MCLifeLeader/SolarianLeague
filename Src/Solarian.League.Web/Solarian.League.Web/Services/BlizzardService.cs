using Solarian.League.Web.Models.Blizzard;
using Solarian.League.Web.Repository.Http.Blizzard;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Services;

public class BlizzardService : IBlizzardService
{
    private readonly IBlizzardWrapperRepository _blizzardRepository;

    public BlizzardService(IBlizzardWrapperRepository blizzardRepository)
    {
        _blizzardRepository = blizzardRepository;
    }

    public async Task<GuildRoster> GetGuildRosterAsync()
    {
        return await _blizzardRepository.GetGuildRosterAsync();
    }
}