using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Services.Interfaces;

public interface IBlizzardService
{
    Task<GuildRoot> GetGuildRosterAsync();
}