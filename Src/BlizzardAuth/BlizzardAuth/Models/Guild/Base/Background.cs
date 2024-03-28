using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class Background
{
    [JsonProperty("color")]
    [JsonPropertyName("color")]
    public Color Color { get; set; }
}