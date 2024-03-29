namespace Solarian.League.Api.Models.State;

/// <summary>
/// This class is used to store the application state globally.
/// </summary>
public class ApplicationData
{
    public DateTime LastTokenRefresh { get; set; } = DateTime.MinValue;
    public OAuthToken AuthToken { get; set; } = new();
}