using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Media;

public class Self
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}