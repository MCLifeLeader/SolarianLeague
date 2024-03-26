using Solarian.League.Web.Models.Blizzard;

namespace Solarian.League.Web.Services.Interfaces;

public interface IBlizzardService
{
    Task<GuildRoster> GetGuildRosterAsync();
}