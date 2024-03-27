using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Stats;

public class Avoidance
{
    [JsonProperty("rating")]
    [JsonPropertyName("rating")]
    public int? Rating { get; set; }

    [JsonProperty("rating_bonus")]
    [JsonPropertyName("rating_bonus")]
    public double? RatingBonus { get; set; }
}