using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class Background
{
    [JsonPropertyName("color")]
    [JsonProperty("color")]
    public Color Color { get; set; }
}