using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster;

public class Character
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

    [JsonProperty("realm")]
    [JsonPropertyName("realm")]
    public Realm Realm { get; set; }

    [JsonProperty("level")]
    [JsonPropertyName("level")]
    public int? Level { get; set; }

    [JsonProperty("playable_class")]
    [JsonPropertyName("playable_class")]
    public PlayableClass PlayableClass { get; set; }

    [JsonProperty("playable_race")]
    [JsonPropertyName("playable_race")]
    public PlayableRace PlayableRace { get; set; }
}