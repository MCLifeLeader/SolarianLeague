using Newtonsoft.Json;

namespace Solarian.League.Web.Models.Discord.Widget
{
    public class Game
    {
        [JsonProperty("name")]
        public string Name { get; set; } = string.Empty;
    }
}