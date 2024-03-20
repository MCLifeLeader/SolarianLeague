using Newtonsoft.Json;

namespace Solarian.League.Web.Models.Discord.Widget
{
    public class Channel
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("name")]
        public string Name { get; set; }

        [JsonProperty("position")]
        public int Position { get; set; }
    }
}