using Solarian.League.Web.Models.Discord;

namespace Solarian.League.Web.Helpers.State;

/// <summary>
/// This class is used to store the application state globally.
/// </summary>
public class ApplicationData
{
    #region Active Discord Users Widget
    public class DiscordWidget
    {
        public WidgetData DiscordWidgetData { get; set; } = new WidgetData();
        public DateTime DiscordWidgetLastUpdated { get; set; } = DateTime.MinValue;
    }
    #endregion

    public DiscordWidget ActiveDiscordUsers { get; set; } = new DiscordWidget();
}