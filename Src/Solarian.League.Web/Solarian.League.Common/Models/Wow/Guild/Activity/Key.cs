using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class Key
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}