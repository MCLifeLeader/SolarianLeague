using Newtonsoft.Json;

namespace Solarian.League.Common.Models.Discord;

public class WidgetData
{
    [JsonProperty("id")]
    public long Id { get; set; }

    [JsonProperty("name")]
    public string Name { get; set; } = string.Empty;

    [JsonProperty("instant_invite")]
    public string InstantInvite { get; set; } = string.Empty;

    [JsonProperty("channels")]
    public IList<Channel> Channels { get; set; } = new List<Channel>();

    [JsonProperty("members")]
    public IList<Member> Members { get; set; } = new List<Member>();

    [JsonProperty("presence_count")]
    public int PresenceCount { get; set; }
}