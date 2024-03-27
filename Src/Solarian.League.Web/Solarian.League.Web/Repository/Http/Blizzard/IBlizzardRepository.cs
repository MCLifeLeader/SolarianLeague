using Solarian.League.Web.Models.Blizzard;

namespace Solarian.League.Web.Repository.Http.Blizzard;

public interface IBlizzardRepository
{
    public Task<GuildRoster> GetGuildRosterAsync();
}