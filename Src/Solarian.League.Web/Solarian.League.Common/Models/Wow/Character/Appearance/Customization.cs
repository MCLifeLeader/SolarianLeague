using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class Customization
{
    [JsonProperty("option")]
    [JsonPropertyName("option")]
    public Option Option { get; set; }

    [JsonProperty("choice")]
    [JsonPropertyName("choice")]
    public Choice Choice { get; set; }
}