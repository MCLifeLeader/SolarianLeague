using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class Choice
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("display_order")]
    [JsonPropertyName("display_order")]
    public int? DisplayOrder { get; set; }

    [JsonProperty("name")]
    [JsonPropertyName("name")]
    public string Name { get; set; }
}