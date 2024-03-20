using Newtonsoft.Json;

namespace Solarian.League.Web.Models.Discord.Widget;

public class Widget
{
    [JsonProperty("id")]
    public long Id { get; set; }

    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonProperty("instant_invite")]
    public string InstantInvite { get; set; }

    [JsonProperty("channels")]
    public IList<Channel> Channels { get; set; }

    [JsonProperty("members")]
    public IList<Member> Members { get; set; }

    [JsonProperty("presence_count")]
    public int PresenceCount { get; set; }
}