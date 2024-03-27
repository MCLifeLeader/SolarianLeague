using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster;

public class RosterRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("guild")]
    [JsonPropertyName("guild")]
    public Guild Guild { get; set; }

    [JsonProperty("members")]
    [JsonPropertyName("members")]
    public List<Member> Members { get; set; }
}