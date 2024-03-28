namespace Solarian.League.Api.Models.State;

/// <summary>
/// This class is used to store the application state globally.
/// </summary>
public class ApplicationData
{
    public string? BlizzardClientId { get; set; }
    public string? BlizzardClientSecret { get; set; }
}