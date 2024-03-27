using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class AppearanceRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("character")]
    [JsonPropertyName("character")]
    public Character Character { get; set; }

    [JsonProperty("playable_race")]
    [JsonPropertyName("playable_race")]
    public PlayableRace PlayableRace { get; set; }

    [JsonProperty("playable_class")]
    [JsonPropertyName("playable_class")]
    public PlayableClass PlayableClass { get; set; }

    [JsonProperty("active_spec")]
    [JsonPropertyName("active_spec")]
    public ActiveSpec ActiveSpec { get; set; }

    [JsonProperty("gender")]
    [JsonPropertyName("gender")]
    public Gender Gender { get; set; }

    [JsonProperty("faction")]
    [JsonPropertyName("faction")]
    public Faction Faction { get; set; }

    [JsonProperty("guild_crest")]
    [JsonPropertyName("guild_crest")]
    public GuildCrest GuildCrest { get; set; }

    [JsonProperty("items")]
    [JsonPropertyName("items")]
    public List<Item> Items { get; set; }

    [JsonProperty("customizations")]
    [JsonPropertyName("customizations")]
    public List<Customization> Customizations { get; set; }
}