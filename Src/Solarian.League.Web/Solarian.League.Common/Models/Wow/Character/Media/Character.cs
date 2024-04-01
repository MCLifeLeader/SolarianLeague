using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Media;

public class Character
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key Key { get; set; } = new();

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("realm")]
    [JsonProperty("realm")]
    public Realm Realm { get; set; } = new();
}