using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class AchievementRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("guild")]
    [JsonPropertyName("guild")]
    public Guild Guild { get; set; }

    [JsonProperty("total_quantity")]
    [JsonPropertyName("total_quantity")]
    public int? TotalQuantity { get; set; }

    [JsonProperty("total_points")]
    [JsonPropertyName("total_points")]
    public int? TotalPoints { get; set; }

    [JsonProperty("achievements")]
    [JsonPropertyName("achievements")]
    public List<Achievement> Achievements { get; set; }

    [JsonProperty("category_progress")]
    [JsonPropertyName("category_progress")]
    public List<CategoryProgress> CategoryProgress { get; set; }

    [JsonProperty("recent_events")]
    [JsonPropertyName("recent_events")]
    public List<RecentEvent> RecentEvents { get; set; }
}