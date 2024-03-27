using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster;

public class Member
{
    [JsonProperty("character")]
    [JsonPropertyName("character")]
    public Character Character { get; set; }

    [JsonProperty("rank")]
    [JsonPropertyName("rank")]
    public int? Rank { get; set; }
}