using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class Crest
{
    [JsonProperty("emblem")]
    [JsonPropertyName("emblem")]
    public Emblem Emblem { get; set; }

    [JsonProperty("border")]
    [JsonPropertyName("border")]
    public Border Border { get; set; }

    [JsonProperty("background")]
    [JsonPropertyName("background")]
    public Background Background { get; set; }
}