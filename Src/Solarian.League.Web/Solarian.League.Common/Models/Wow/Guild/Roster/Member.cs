using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster
{
    public class Member
    {
        [JsonPropertyName("character")]
        [JsonProperty("character")]
        public Character Character { get; set; }

        [JsonPropertyName("rank")]
        [JsonProperty("rank")]
        public int Rank { get; set; }
    }
}