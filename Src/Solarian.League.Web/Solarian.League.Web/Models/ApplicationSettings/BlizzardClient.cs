namespace Solarian.League.Web.Models.ApplicationSettings;

public class BlizzardClient
{
    public string? BaseUrl { get; set; }
    public int TimeoutInSeconds { get; set; }
    public int CacheDurationInSeconds { get; set; }
}