using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class ProfileSummaryRoot
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

    [JsonProperty("gender")]
    [JsonPropertyName("gender")]
    public Gender Gender { get; set; }

    [JsonProperty("faction")]
    [JsonPropertyName("faction")]
    public Faction Faction { get; set; }

    [JsonProperty("race")]
    [JsonPropertyName("race")]
    public Race Race { get; set; }

    [JsonProperty("character_class")]
    [JsonPropertyName("character_class")]
    public CharacterClass CharacterClass { get; set; }

    [JsonProperty("active_spec")]
    [JsonPropertyName("active_spec")]
    public ActiveSpec ActiveSpec { get; set; }

    [JsonProperty("realm")]
    [JsonPropertyName("realm")]
    public Realm Realm { get; set; }

    [JsonProperty("guild")]
    [JsonPropertyName("guild")]
    public Guild Guild { get; set; }

    [JsonProperty("level")]
    [JsonPropertyName("level")]
    public int? Level { get; set; }

    [JsonProperty("experience")]
    [JsonPropertyName("experience")]
    public int? Experience { get; set; }

    [JsonProperty("achievement_points")]
    [JsonPropertyName("achievement_points")]
    public int? AchievementPoints { get; set; }

    [JsonProperty("achievements")]
    [JsonPropertyName("achievements")]
    public Achievements Achievements { get; set; }

    [JsonProperty("titles")]
    [JsonPropertyName("titles")]
    public Titles Titles { get; set; }

    [JsonProperty("pvp_summary")]
    [JsonPropertyName("pvp_summary")]
    public PvpSummary PvpSummary { get; set; }

    [JsonProperty("encounters")]
    [JsonPropertyName("encounters")]
    public Encounters Encounters { get; set; }

    [JsonProperty("media")]
    [JsonPropertyName("media")]
    public Media Media { get; set; }

    [JsonProperty("hunter_pets")]
    [JsonPropertyName("hunter_pets")]
    public HunterPets HunterPets { get; set; }

    [JsonProperty("last_login_timestamp")]
    [JsonPropertyName("last_login_timestamp")]
    public long? LastLoginTimestamp { get; set; }

    [JsonProperty("average_item_level")]
    [JsonPropertyName("average_item_level")]
    public int? AverageItemLevel { get; set; }

    [JsonProperty("equipped_item_level")]
    [JsonPropertyName("equipped_item_level")]
    public int? EquippedItemLevel { get; set; }

    [JsonProperty("specializations")]
    [JsonPropertyName("specializations")]
    public Specializations Specializations { get; set; }

    [JsonProperty("statistics")]
    [JsonPropertyName("statistics")]
    public Statistics Statistics { get; set; }

    [JsonProperty("mythic_keystone_profile")]
    [JsonPropertyName("mythic_keystone_profile")]
    public MythicKeystoneProfile MythicKeystoneProfile { get; set; }

    [JsonProperty("equipment")]
    [JsonPropertyName("equipment")]
    public Equipment Equipment { get; set; }

    [JsonProperty("appearance")]
    [JsonPropertyName("appearance")]
    public Appearance Appearance { get; set; }

    [JsonProperty("collections")]
    [JsonPropertyName("collections")]
    public Collections Collections { get; set; }

    [JsonProperty("reputations")]
    [JsonPropertyName("reputations")]
    public Reputations Reputations { get; set; }

    [JsonProperty("quests")]
    [JsonPropertyName("quests")]
    public Quests Quests { get; set; }

    [JsonProperty("achievements_statistics")]
    [JsonPropertyName("achievements_statistics")]
    public AchievementsStatistics AchievementsStatistics { get; set; }

    [JsonProperty("professions")]
    [JsonPropertyName("professions")]
    public Professions Professions { get; set; }

    [JsonProperty("name_search")]
    [JsonPropertyName("name_search")]
    public string NameSearch { get; set; }
}