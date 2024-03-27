using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Media;

public class Asset
{
    [JsonProperty("key")]
    [JsonPropertyName("key")]
    public string Key { get; set; }

    [JsonProperty("value")]
    [JsonPropertyName("value")]
    public string Value { get; set; }
}