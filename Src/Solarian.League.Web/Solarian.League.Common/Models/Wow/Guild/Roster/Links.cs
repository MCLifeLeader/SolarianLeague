using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster;

public class Links
{
    [JsonProperty("self")]
    [JsonPropertyName("self")]
    public Self Self { get; set; }
}