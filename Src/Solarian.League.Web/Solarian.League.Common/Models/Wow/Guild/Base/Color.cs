using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Base;

public class Color
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("rgba")]
    [JsonPropertyName("rgba")]
    public Rgba Rgba { get; set; }
}