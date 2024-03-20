namespace Solarian.League.Web.Models.ApplicationSettings;

public class DiscordData
{
    public string? BaseUrl { get; set; }

    public int TimeoutInSeconds { get; set; }
    public int CacheDurationInSeconds { get; set; }
}