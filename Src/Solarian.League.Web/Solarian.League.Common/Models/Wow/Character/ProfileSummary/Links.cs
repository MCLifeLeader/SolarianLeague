using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class Links
{
    [JsonPropertyName("self")]
    [JsonProperty("self")]
    public Self Self { get; set; } = new();
}