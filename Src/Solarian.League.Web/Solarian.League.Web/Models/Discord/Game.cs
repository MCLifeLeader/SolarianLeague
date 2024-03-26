using Newtonsoft.Json;

namespace Solarian.League.Web.Models.Discord;

public class Game
{
    [JsonProperty("name")]
    public string Name { get; set; } = string.Empty;
}