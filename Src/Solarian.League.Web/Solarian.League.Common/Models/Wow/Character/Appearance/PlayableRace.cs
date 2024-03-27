using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class PlayableRace
{
    [JsonProperty("key")]
    [JsonPropertyName("key")]
    public Key Key { get; set; }

    [JsonProperty("name")]
    [JsonPropertyName("name")]
    public string Name { get; set; }

    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }
}