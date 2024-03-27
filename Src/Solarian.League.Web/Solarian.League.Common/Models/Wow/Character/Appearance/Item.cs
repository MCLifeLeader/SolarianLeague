using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class Item
{
    [JsonProperty("id")]
    [JsonPropertyName("id")]
    public int? Id { get; set; }

    [JsonProperty("slot")]
    [JsonPropertyName("slot")]
    public Slot Slot { get; set; }

    [JsonProperty("enchant")]
    [JsonPropertyName("enchant")]
    public int? Enchant { get; set; }

    [JsonProperty("item_appearance_modifier_id")]
    [JsonPropertyName("item_appearance_modifier_id")]
    public int? ItemAppearanceModifierId { get; set; }

    [JsonProperty("internal_slot_id")]
    [JsonPropertyName("internal_slot_id")]
    public int? InternalSlotId { get; set; }

    [JsonProperty("subclass")]
    [JsonPropertyName("subclass")]
    public int? Subclass { get; set; }
}