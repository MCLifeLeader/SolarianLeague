using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster
{
    public class Character
    {
        [JsonPropertyName("key")]
        [JsonProperty("key")]
        public Key Key { get; set; }

        [JsonPropertyName("name")]
        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonPropertyName("id")]
        [JsonProperty("id")]
        public int Id { get; set; }

        [JsonPropertyName("realm")]
        [JsonProperty("realm")]
        public Realm Realm { get; set; }

        [JsonPropertyName("level")]
        [JsonProperty("level")]
        public int Level { get; set; }

        [JsonPropertyName("playable_class")]
        [JsonProperty("playable_class")]
        public PlayableClass PlayableClass { get; set; }

        [JsonPropertyName("playable_race")]
        [JsonProperty("playable_race")]
        public PlayableRace PlayableRace { get; set; }
    }
}