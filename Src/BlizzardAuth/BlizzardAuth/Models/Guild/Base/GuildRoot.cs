using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class GuildRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("name")]
    [JsonPropertyName("name")]
    public string Name { get; set; }

    [JsonProperty("faction")]
    [JsonPropertyName("faction")]
    public Faction Faction { get; set; }

    [JsonProperty("achievement_points")]
    [JsonPropertyName("achievement_points")]
    public int? AchievementPoints { get; set; }

    [JsonProperty("member_count")]
    [JsonPropertyName("member_count")]
    public int? MemberCount { get; set; }

    [JsonProperty("realm")]
    [JsonPropertyName("realm")]
    public Realm Realm { get; set; }

    [JsonProperty("crest")]
    [JsonPropertyName("crest")]
    public Crest Crest { get; set; }

    [JsonProperty("roster")]
    [JsonPropertyName("roster")]
    public Roster Roster { get; set; }

    [JsonProperty("achievements")]
    [JsonPropertyName("achievements")]
    public Achievements Achievements { get; set; }

    [JsonProperty("created_timestamp")]
    [JsonPropertyName("created_timestamp")]
    public long? CreatedTimestamp { get; set; }

    [JsonProperty("activity")]
    [JsonPropertyName("activity")]
    public Activity Activity { get; set; }

    [JsonProperty("name_search")]
    [JsonPropertyName("name_search")]
    public string NameSearch { get; set; }
}