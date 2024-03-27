using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class Achievement
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("achievement")]
    [JsonPropertyName("achievement")]
    public Achievement2 Achievement2 { get; set; }

    [JsonProperty("criteria")]
    [JsonPropertyName("criteria")]
    public Criteria Criteria { get; set; }

    [JsonProperty("completed_timestamp")]
    [JsonPropertyName("completed_timestamp")]
    public long? CompletedTimestamp { get; set; }
}