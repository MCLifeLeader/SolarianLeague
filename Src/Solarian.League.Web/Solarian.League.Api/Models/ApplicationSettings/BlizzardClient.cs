namespace Solarian.League.Api.Models.ApplicationSettings;

public class BlizzardClient
{
    public string? BaseUrl { get; set; }
    public string? BaseOAuthUrl { get; set; }
    public string? ClientId { get; set; }
    public string? ClientSecret { get; set; }
    public int TimeoutInSeconds { get; set; }
    public int CacheDurationInSeconds { get; set; }
    public string? Region { get; set; }
    public string? Realm { get; set; }
    public string? GuildName { get; set; }
}