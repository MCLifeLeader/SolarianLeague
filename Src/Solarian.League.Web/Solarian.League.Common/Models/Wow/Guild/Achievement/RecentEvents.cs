using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement
{
    public class RecentEvents
    {
        [JsonPropertyName("achievement")]
        [JsonProperty("achievement")]
        public ChildAchievement Achievement { get; set; }

        [JsonPropertyName("timestamp")]
        [JsonProperty("timestamp")]
        public long Timestamp { get; set; }
    }
}