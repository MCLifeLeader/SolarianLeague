using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class Links
{
    [JsonPropertyName("self")]
    [JsonProperty("self")]
    public Self Self { get; set; }
}