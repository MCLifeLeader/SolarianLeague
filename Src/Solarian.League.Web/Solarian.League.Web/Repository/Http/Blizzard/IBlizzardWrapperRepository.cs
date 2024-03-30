using Solarian.League.Common.Models.Wow.Character.Media;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Detail;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Web.Repository.Http.Blizzard;

public interface IBlizzardWrapperRepository
{
    public Task<GuildDetails> GetGuildDetailsAsync();
    public Task<GuildRoster?> GetGuildRosterAsync();
    public Task<GuildActivity?> GetGuildActivityAsync();
    public Task<GuildAchievements?> GetGuildAchievementsAsync(); 
    public Task<CharacterSummary?> GetCharacterSummaryAsync(string characterName);
    public Task<CharacterMedia?> GetCharacterMediaAsync(string characterName);
}