using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster;

public class PlayableRace
{
    [JsonProperty("key")]
    [JsonPropertyName("key")]
    public Key Key { get; set; }

    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }
}