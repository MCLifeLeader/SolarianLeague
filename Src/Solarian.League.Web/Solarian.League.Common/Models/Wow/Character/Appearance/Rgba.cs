using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class Rgba
{
    [JsonProperty("r")]
    [JsonPropertyName("r")]
    public int? R { get; set; }

    [JsonProperty("g")]
    [JsonPropertyName("g")]
    public int? G { get; set; }

    [JsonProperty("b")]
    [JsonPropertyName("b")]
    public int? B { get; set; }

    [JsonProperty("a")]
    [JsonPropertyName("a")]
    public double? A { get; set; }
}