using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class Criteria
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("is_completed")]
    [JsonPropertyName("is_completed")]
    public bool? IsCompleted { get; set; }

    [JsonProperty("child_criteria")]
    [JsonPropertyName("child_criteria")]
    public List<ChildCriterion> ChildCriteria { get; set; }

    [JsonProperty("amount")]
    [JsonPropertyName("amount")]
    public int? Amount { get; set; }
}