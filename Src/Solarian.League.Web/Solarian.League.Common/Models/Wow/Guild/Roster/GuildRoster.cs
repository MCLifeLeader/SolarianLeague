using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster
{
    public class GuildRoster
    {
        [JsonPropertyName("_links")]
        [JsonProperty("_links")]
        public Links Links { get; set; } = new();

        [JsonPropertyName("guild")]
        [JsonProperty("guild")]
        public Guild Guild { get; set; } = new();

        [JsonPropertyName("members")]
        [JsonProperty("members")]
        public IList<Member> Members { get; set; } = new List<Member>();
    }
}
