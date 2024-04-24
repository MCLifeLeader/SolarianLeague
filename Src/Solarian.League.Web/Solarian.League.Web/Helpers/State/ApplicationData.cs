using Solarian.League.Common.Models.Discord;
using Solarian.League.Common.Models.Wow.Character.Media;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Web.Helpers.State;

/// <summary>
/// This class is used to store the application state globally.
/// </summary>
public class ApplicationData
{
    #region Active Discord Users Widget
    public class DiscordWidget
    {
        public WidgetData? DiscordWidgetData { get; set; } = new();
        public DateTime DiscordWidgetLastUpdated { get; set; } = DateTime.MinValue;
    }
    #endregion

    #region Guild Roster Widget
    public class GuildRosterWidget
    {
        public GuildRoster RosterWidgetData { get; set; } = new();
        public DateTime RosterWidgetLastUpdated { get; set; } = DateTime.MinValue;
        public Dictionary<int, CharacterMedia?> CharacterMedias { get; set; } = new();
        public Dictionary<int, CharacterSummary?> CharacterSummaries { get; set; } = new();
    }
    #endregion

    public DiscordWidget ActiveDiscordUsers { get; private set; } = new DiscordWidget();
    public GuildRosterWidget ActiveGuildRoster { get; private set; } = new GuildRosterWidget();
}