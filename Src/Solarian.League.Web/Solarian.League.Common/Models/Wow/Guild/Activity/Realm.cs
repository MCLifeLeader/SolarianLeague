using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class Realm
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public Name Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("slug")]
    [JsonProperty("slug")]
    public string Slug { get; set; }
}