using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail
{
    public class Crest
    {
        [JsonPropertyName("emblem")]
        [JsonProperty("emblem")]
        public Emblem Emblem { get; set; }

        [JsonPropertyName("border")]
        [JsonProperty("border")]
        public Border Border { get; set; }

        [JsonPropertyName("background")]
        [JsonProperty("background")]
        public Background Background { get; set; }
    }
}