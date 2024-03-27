using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class GuildCrest
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