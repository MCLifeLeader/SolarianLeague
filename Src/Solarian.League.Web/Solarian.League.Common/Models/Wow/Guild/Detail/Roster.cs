using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail
{
    public class Roster
    {
        [JsonPropertyName("href")]
        [JsonProperty("href")]
        public string Href { get; set; }
    }
}