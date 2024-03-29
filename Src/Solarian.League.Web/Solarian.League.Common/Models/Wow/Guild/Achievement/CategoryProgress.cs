using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement
{
    public class CategoryProgress
    {
        [JsonPropertyName("category")]
        [JsonProperty("category")]
        public Category Category { get; set; }

        [JsonPropertyName("quantity")]
        [JsonProperty("quantity")]
        public int Quantity { get; set; }

        [JsonPropertyName("points")]
        [JsonProperty("points")]
        public int Points { get; set; }
    }
}