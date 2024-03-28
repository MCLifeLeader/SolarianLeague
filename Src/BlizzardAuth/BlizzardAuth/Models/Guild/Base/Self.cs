using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class Self
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}