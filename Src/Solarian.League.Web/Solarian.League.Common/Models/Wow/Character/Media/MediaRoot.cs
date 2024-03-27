using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Media;

public class MediaRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("character")]
    [JsonPropertyName("character")]
    public Character Character { get; set; }

    [JsonProperty("assets")]
    [JsonPropertyName("assets")]
    public List<Asset> Assets { get; set; }
}