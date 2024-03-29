using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class GuildDetails
{
    [JsonPropertyName("_links")]
    [JsonProperty("_links")]
    public Links Links { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("faction")]
    [JsonProperty("faction")]
    public Faction Faction { get; set; }

    [JsonPropertyName("achievement_points")]
    [JsonProperty("achievement_points")]
    public int AchievementPoints { get; set; }

    [JsonPropertyName("member_count")]
    [JsonProperty("member_count")]
    public int MemberCount { get; set; }

    [JsonPropertyName("realm")]
    [JsonProperty("realm")]
    public Realm Realm { get; set; }

    [JsonPropertyName("crest")]
    [JsonProperty("crest")]
    public Crest Crest { get; set; }

    [JsonPropertyName("roster")]
    [JsonProperty("roster")]
    public Roster Roster { get; set; }

    [JsonPropertyName("achievements")]
    [JsonProperty("achievements")]
    public Achievements Achievements { get; set; }

    [JsonPropertyName("created_timestamp")]
    [JsonProperty("created_timestamp")]
    public long CreatedTimestamp { get; set; }

    [JsonPropertyName("activity")]
    [JsonProperty("activity")]
    public Activity Activity { get; set; }

    [JsonPropertyName("name_search")]
    [JsonProperty("name_search")]
    public string NameSearch { get; set; }
}