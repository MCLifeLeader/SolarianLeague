using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class Faction
{
    [JsonProperty("type")]
    [JsonPropertyName("type")]
    public string Type { get; set; }

    [JsonProperty("name")]
    [JsonPropertyName("name")]
    public Name Name { get; set; }
}