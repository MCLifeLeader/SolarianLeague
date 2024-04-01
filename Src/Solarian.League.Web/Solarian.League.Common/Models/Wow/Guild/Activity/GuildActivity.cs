using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class GuildActivity
{
    [JsonPropertyName("_links")]
    [JsonProperty("_links")]
    public Links Links { get; set; }

    [JsonPropertyName("guild")]
    [JsonProperty("guild")]
    public Guild Guild { get; set; }
}