using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Repository.Http.Blizzard.Interfaces;

public interface IBlizzardRepository
{
    public Task<GuildRoot> GetGuildRosterAsync();
}