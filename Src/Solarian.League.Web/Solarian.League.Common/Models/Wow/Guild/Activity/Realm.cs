using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class Realm
{
    [JsonProperty("key")]
    [JsonPropertyName("key")]
    public Key Key { get; set; }

    [JsonProperty("name")]
    [JsonPropertyName("name")]
    public Name Name { get; set; }

    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("slug")]
    [JsonPropertyName("slug")]
    public string Slug { get; set; }
}