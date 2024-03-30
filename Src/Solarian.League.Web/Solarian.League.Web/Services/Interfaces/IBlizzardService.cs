using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Detail;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Web.Services.Interfaces;

public interface IBlizzardService
{
    public Task<GuildDetails?> GetGuildDetailsAsync();
    public Task<GuildRoster?> GetGuildRosterAsync();
    public Task<GuildActivity?> GetGuildActivityAsync();
    public Task<GuildAchievements?> GetGuildAchievementsAsync();
    public Task<CharacterSummary?> GetCharacterSummaryAsync(string characterName);
}