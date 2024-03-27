using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class Links
{
    [JsonProperty("self")]
    [JsonPropertyName("self")]
    public Self Self { get; set; }
}