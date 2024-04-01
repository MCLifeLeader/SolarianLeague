using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class Rgba
{
    [JsonPropertyName("r")]
    [JsonProperty("r")]
    public int R { get; set; }

    [JsonPropertyName("g")]
    [JsonProperty("g")]
    public int G { get; set; }

    [JsonPropertyName("b")]
    [JsonProperty("b")]
    public int B { get; set; }

    [JsonPropertyName("a")]
    [JsonProperty("a")]
    public float A { get; set; }
}