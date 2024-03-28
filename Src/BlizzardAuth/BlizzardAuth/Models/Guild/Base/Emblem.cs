using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class Emblem
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("media")]
    [JsonPropertyName("media")]
    public Media Media { get; set; }

    [JsonProperty("color")]
    [JsonPropertyName("color")]
    public Color Color { get; set; }
}