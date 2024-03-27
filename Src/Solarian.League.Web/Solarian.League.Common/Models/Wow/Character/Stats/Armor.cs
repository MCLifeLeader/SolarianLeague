using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Stats;

public class Armor
{
    [JsonProperty("base")]
    [JsonPropertyName("base")]
    public int? Base { get; set; }

    [JsonProperty("effective")]
    [JsonPropertyName("effective")]
    public int? Effective { get; set; }
}