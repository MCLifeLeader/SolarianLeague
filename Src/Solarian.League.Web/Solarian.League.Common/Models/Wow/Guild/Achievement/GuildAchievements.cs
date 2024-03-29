using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class GuildAchievements
{
    [JsonPropertyName("_links")]
    [JsonProperty("_links")]
    public Links Links { get; set; }

    [JsonPropertyName("guild")]
    [JsonProperty("guild")]
    public Guild Guild { get; set; }

    [JsonPropertyName("total_quantity")]
    [JsonProperty("total_quantity")]
    public int TotalQuantity { get; set; }

    [JsonPropertyName("total_points")]
    [JsonProperty("total_points")]
    public int TotalPoints { get; set; }

    [JsonPropertyName("achievements")]
    [JsonProperty("achievements")]
    public IList<Achievement> Achievements { get; set; }

    [JsonPropertyName("category_progress")]
    [JsonProperty("category_progress")]
    public IList<CategoryProgress> CategoryProgress { get; set; }

    [JsonPropertyName("recent_events")]
    [JsonProperty("recent_events")]
    public IList<RecentEvents> RecentEvents { get; set; }
}