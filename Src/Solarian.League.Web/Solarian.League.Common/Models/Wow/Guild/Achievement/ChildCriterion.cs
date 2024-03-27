using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class ChildCriterion
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("amount")]
    [JsonPropertyName("amount")]
    public int? Amount { get; set; }

    [JsonProperty("is_completed")]
    [JsonPropertyName("is_completed")]
    public bool? IsCompleted { get; set; }
}