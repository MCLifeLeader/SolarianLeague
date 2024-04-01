using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class Key
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}