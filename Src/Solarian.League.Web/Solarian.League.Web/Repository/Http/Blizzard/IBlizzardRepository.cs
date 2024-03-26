using Solarian.League.Web.Models.Blizzard;
using Solarian.League.Web.Models.Discord;

namespace Solarian.League.Web.Repository.Http.Blizzard;

public interface IBlizzardRepository
{
    public Task<GuildRoster> GetGuildRosterAsync();
}