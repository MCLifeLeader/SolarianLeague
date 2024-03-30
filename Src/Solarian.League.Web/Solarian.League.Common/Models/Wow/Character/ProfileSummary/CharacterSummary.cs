using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary
{

    public class CharacterSummary
    {
        [JsonPropertyName("_links")]
        [JsonProperty("_links")]
        public Links Links { get; set; } = new();

        [JsonPropertyName("id")]
        [JsonProperty("id")]
        public int Id { get; set; }

        [JsonPropertyName("name")]
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonPropertyName("gender")]
        [JsonProperty("gender")]
        public Gender Gender { get; set; } = new();

        [JsonPropertyName("faction")]
        [JsonProperty("faction")]
        public Faction Faction { get; set; } = new();

        [JsonPropertyName("race")]
        [JsonProperty("race")]
        public Race Race { get; set; } = new();

        [JsonPropertyName("character_class")]
        [JsonProperty("character_class")]
        public CharacterClass CharacterClass { get; set; } = new();

        [JsonPropertyName("active_spec")]
        [JsonProperty("active_spec")]
        public ActiveSpec ActiveSpec { get; set; } = new();

        [JsonPropertyName("realm")]
        [JsonProperty("realm")]
        public Realm Realm { get; set; } = new();

        [JsonPropertyName("guild")]
        [JsonProperty("guild")]
        public Guild Guild { get; set; } = new();

        [JsonPropertyName("level")]
        [JsonProperty("level")]
        public int Level { get; set; }

        [JsonPropertyName("experience")]
        [JsonProperty("experience")]
        public int Experience { get; set; }

        [JsonPropertyName("achievement_points")]
        [JsonProperty("achievement_points")]
        public int AchievementPoints { get; set; }

        [JsonPropertyName("achievements")]
        [JsonProperty("achievements")]
        public Achievements Achievements { get; set; } = new();

        [JsonPropertyName("titles")]
        [JsonProperty("titles")]
        public Titles Titles { get; set; } = new();

        [JsonPropertyName("pvp_summary")]
        [JsonProperty("pvp_summary")]
        public PvpSummary PvpSummary { get; set; } = new();

        [JsonPropertyName("encounters")]
        [JsonProperty("encounters")]
        public Encounters Encounters { get; set; } = new();

        [JsonPropertyName("media")]
        [JsonProperty("media")]
        public Media Media { get; set; } = new();

        [JsonPropertyName("hunter_pets")]
        [JsonProperty("hunter_pets")]
        public HunterPets HunterPets { get; set; } = new();

        [JsonPropertyName("last_login_timestamp")]
        [JsonProperty("last_login_timestamp")]
        public long LastLoginTimestamp { get; set; }

        [JsonPropertyName("average_item_level")]
        [JsonProperty("average_item_level")]
        public int AverageItemLevel { get; set; }

        [JsonPropertyName("equipped_item_level")]
        [JsonProperty("equipped_item_level")]
        public int EquippedItemLevel { get; set; }

        [JsonPropertyName("specializations")]
        [JsonProperty("specializations")]
        public Specializations Specializations { get; set; }

        [JsonPropertyName("statistics")]
        [JsonProperty("statistics")]
        public Statistics Statistics { get; set; } = new();

        [JsonPropertyName("mythic_keystone_profile")]
        [JsonProperty("mythic_keystone_profile")]
        public MythicKeystoneProfile MythicKeystoneProfile { get; set; } = new();

        [JsonPropertyName("equipment")]
        [JsonProperty("equipment")]
        public Equipment Equipment { get; set; } = new();

        [JsonPropertyName("appearance")]
        [JsonProperty("appearance")]
        public Appearance Appearance { get; set; } = new();

        [JsonPropertyName("collections")]
        [JsonProperty("collections")]
        public Collections Collections { get; set; } = new();

        [JsonPropertyName("reputations")]
        [JsonProperty("reputations")]
        public Reputations Reputations { get; set; } = new();

        [JsonPropertyName("quests")]
        [JsonProperty("quests")]
        public Quests Quests { get; set; } = new();

        [JsonPropertyName("achievements_statistics")]
        [JsonProperty("achievements_statistics")]
        public AchievementsStatistics AchievementsStatistics { get; set; } = new();

        [JsonPropertyName("professions")]
        [JsonProperty("professions")]
        public Professions Professions { get; set; } = new();

        [JsonPropertyName("name_search")]
        [JsonProperty("name_search")]
        public string NameSearch { get; set; }
    }
}
