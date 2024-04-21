using Newtonsoft.Json;

namespace Solarian.League.Common.Models.Discord;

public class Game
{
    [JsonProperty("name")]
    public string Name { get; set; } = string.Empty;
}