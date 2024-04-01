using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class Achievement
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("achievement")]
    [JsonProperty("achievement")]
    public ChildAchievement ChildAchievement { get; set; }

    [JsonPropertyName("criteria")]
    [JsonProperty("criteria")]
    public Criteria Criteria { get; set; }

    [JsonPropertyName("completed_timestamp")]
    [JsonProperty("completed_timestamp")]
    public long CompletedTimestamp { get; set; }
}