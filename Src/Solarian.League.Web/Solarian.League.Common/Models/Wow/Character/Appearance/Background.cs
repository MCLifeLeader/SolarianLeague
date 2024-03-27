using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class Background
{
    [JsonProperty("color")]
    [JsonPropertyName("color")]
    public Color Color { get; set; }
}