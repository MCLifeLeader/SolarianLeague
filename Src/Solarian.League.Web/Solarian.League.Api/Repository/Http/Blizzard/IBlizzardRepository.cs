using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Repository.Http.Blizzard;

public interface IBlizzardRepository
{
    public Task<GuildRoot> GetGuildRosterAsync();
}