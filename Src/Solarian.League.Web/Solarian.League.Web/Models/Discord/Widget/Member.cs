using Newtonsoft.Json;

namespace Solarian.League.Web.Models.Discord.Widget
{
    public class Member
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("username")]
        public string Username { get; set; } = string.Empty;

        [JsonProperty("discriminator")]
        public string Discriminator { get; set; } = string.Empty;

        [JsonProperty("avatar")]
        public object? Avatar { get; set; }

        [JsonProperty("status")]
        public string Status { get; set; } = string.Empty;

        [JsonProperty("avatar_url")]
        public string AvatarUrl { get; set; } = string.Empty;

        [JsonProperty("game")]
        public Game Game { get; set; } = new Game();

        [JsonProperty("deaf")]
        public bool Deaf { get; set; }

        [JsonProperty("mute")]
        public bool Mute { get; set; }

        [JsonProperty("self_deaf")]
        public bool SelfDeaf { get; set; }

        [JsonProperty("self_mute")]
        public bool SelfMute { get; set; }

        [JsonProperty("suppress")]
        public bool Suppress { get; set; }

        [JsonProperty("channel_id")]
        public long ChannelId { get; set; }
    }
}