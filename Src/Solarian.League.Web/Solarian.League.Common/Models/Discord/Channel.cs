using Newtonsoft.Json;

namespace Solarian.League.Common.Models.Discord;

public class Channel
{
    [JsonProperty("id")]
    public long Id { get; set; }

    [JsonProperty("name")]
    public string Name { get; set; } = string.Empty;

    [JsonProperty("position")]
    public int Position { get; set; }
}