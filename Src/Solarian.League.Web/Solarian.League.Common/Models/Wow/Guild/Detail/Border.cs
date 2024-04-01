using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class Border
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("media")]
    [JsonProperty("media")]
    public Media Media { get; set; }

    [JsonPropertyName("color")]
    [JsonProperty("color")]
    public Color Color { get; set; }
}