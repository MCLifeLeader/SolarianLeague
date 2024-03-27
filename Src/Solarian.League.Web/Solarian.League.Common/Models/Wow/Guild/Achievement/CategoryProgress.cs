using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class CategoryProgress
{
    [JsonProperty("category")]
    [JsonPropertyName("category")]
    public Category Category { get; set; }

    [JsonProperty("quantity")]
    [JsonPropertyName("quantity")]
    public int? Quantity { get; set; }

    [JsonProperty("points")]
    [JsonPropertyName("points")]
    public int? Points { get; set; }
}