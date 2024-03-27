using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class ActivityRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("guild")]
    [JsonPropertyName("guild")]
    public Guild Guild { get; set; }
}