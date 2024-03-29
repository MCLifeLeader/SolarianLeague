using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity
{
    public class Faction
    {
        [JsonPropertyName("type")]
        [JsonProperty("type")]
        public string Type { get; set; }

        [JsonPropertyName("name")]
        [JsonProperty("name")]
        public Name Name { get; set; }
    }
}