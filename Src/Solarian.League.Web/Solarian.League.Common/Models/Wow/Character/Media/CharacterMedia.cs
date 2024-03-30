using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Media
{
    public class CharacterMedia
    {
        [JsonPropertyName("_links")]
        [JsonProperty("_links")]
        public Links Links { get; set; } = new();

        [JsonPropertyName("character")]
        [JsonProperty("character")]
        public Character Character { get; set; } = new();

        [JsonPropertyName("assets")]
        [JsonProperty("assets")]
        public IList<Asset> Assets { get; set; } = new List<Asset>();
    }
}