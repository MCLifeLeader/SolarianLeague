using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class RecentEvent
{
    [JsonProperty("achievement")]
    [JsonPropertyName("achievement")]
    public Achievement Achievement { get; set; }

    [JsonProperty("timestamp")]
    [JsonPropertyName("timestamp")]
    public object Timestamp { get; set; }
}