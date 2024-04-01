using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Media;

public class Asset
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public string Key { get; set; }

    [JsonPropertyName("value")]
    [JsonProperty("value")]
    public string Value { get; set; }
}