using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class Activity
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}