using Newtonsoft.Json;
using System.Numerics;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class Criteria
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("is_completed")]
    [JsonProperty("is_completed")]
    public bool IsCompleted { get; set; }

    [JsonPropertyName("child_criteria")]
    [JsonProperty("child_criteria")]
    public IList<ChildCriteria> ChildCriteria { get; set; }

    [JsonPropertyName("amount")]
    [JsonProperty("amount")]
    public BigInteger Amount { get; set; }
}