using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Stats;

public class StatsRoot
{
    [JsonProperty("_links")]
    [JsonPropertyName("_links")]
    public Links Links { get; set; }

    [JsonProperty("health")]
    [JsonPropertyName("health")]
    public int? Health { get; set; }

    [JsonProperty("power")]
    [JsonPropertyName("power")]
    public int? Power { get; set; }

    [JsonProperty("power_type")]
    [JsonPropertyName("power_type")]
    public PowerType PowerType { get; set; }

    [JsonProperty("speed")]
    [JsonPropertyName("speed")]
    public Speed Speed { get; set; }

    [JsonProperty("strength")]
    [JsonPropertyName("strength")]
    public Strength Strength { get; set; }

    [JsonProperty("agility")]
    [JsonPropertyName("agility")]
    public Agility Agility { get; set; }

    [JsonProperty("intellect")]
    [JsonPropertyName("intellect")]
    public Intellect Intellect { get; set; }

    [JsonProperty("stamina")]
    [JsonPropertyName("stamina")]
    public Stamina Stamina { get; set; }

    [JsonProperty("melee_crit")]
    [JsonPropertyName("melee_crit")]
    public MeleeCrit MeleeCrit { get; set; }

    [JsonProperty("melee_haste")]
    [JsonPropertyName("melee_haste")]
    public MeleeHaste MeleeHaste { get; set; }

    [JsonProperty("mastery")]
    [JsonPropertyName("mastery")]
    public Mastery Mastery { get; set; }

    [JsonProperty("bonus_armor")]
    [JsonPropertyName("bonus_armor")]
    public int? BonusArmor { get; set; }

    [JsonProperty("lifesteal")]
    [JsonPropertyName("lifesteal")]
    public Lifesteal Lifesteal { get; set; }

    [JsonProperty("versatility")]
    [JsonPropertyName("versatility")]
    public double? Versatility { get; set; }

    [JsonProperty("versatility_damage_done_bonus")]
    [JsonPropertyName("versatility_damage_done_bonus")]
    public double? VersatilityDamageDoneBonus { get; set; }

    [JsonProperty("versatility_healing_done_bonus")]
    [JsonPropertyName("versatility_healing_done_bonus")]
    public double? VersatilityHealingDoneBonus { get; set; }

    [JsonProperty("versatility_damage_taken_bonus")]
    [JsonPropertyName("versatility_damage_taken_bonus")]
    public double? VersatilityDamageTakenBonus { get; set; }

    [JsonProperty("avoidance")]
    [JsonPropertyName("avoidance")]
    public Avoidance Avoidance { get; set; }

    [JsonProperty("attack_power")]
    [JsonPropertyName("attack_power")]
    public int? AttackPower { get; set; }

    [JsonProperty("main_hand_damage_min")]
    [JsonPropertyName("main_hand_damage_min")]
    public double? MainHandDamageMin { get; set; }

    [JsonProperty("main_hand_damage_max")]
    [JsonPropertyName("main_hand_damage_max")]
    public double? MainHandDamageMax { get; set; }

    [JsonProperty("main_hand_speed")]
    [JsonPropertyName("main_hand_speed")]
    public double? MainHandSpeed { get; set; }

    [JsonProperty("main_hand_dps")]
    [JsonPropertyName("main_hand_dps")]
    public double? MainHandDps { get; set; }

    [JsonProperty("off_hand_damage_min")]
    [JsonPropertyName("off_hand_damage_min")]
    public double? OffHandDamageMin { get; set; }

    [JsonProperty("off_hand_damage_max")]
    [JsonPropertyName("off_hand_damage_max")]
    public double? OffHandDamageMax { get; set; }

    [JsonProperty("off_hand_speed")]
    [JsonPropertyName("off_hand_speed")]
    public double? OffHandSpeed { get; set; }

    [JsonProperty("off_hand_dps")]
    [JsonPropertyName("off_hand_dps")]
    public double? OffHandDps { get; set; }

    [JsonProperty("spell_power")]
    [JsonPropertyName("spell_power")]
    public int? SpellPower { get; set; }

    [JsonProperty("spell_penetration")]
    [JsonPropertyName("spell_penetration")]
    public int? SpellPenetration { get; set; }

    [JsonProperty("spell_crit")]
    [JsonPropertyName("spell_crit")]
    public SpellCrit SpellCrit { get; set; }

    [JsonProperty("mana_regen")]
    [JsonPropertyName("mana_regen")]
    public double? ManaRegen { get; set; }

    [JsonProperty("mana_regen_combat")]
    [JsonPropertyName("mana_regen_combat")]
    public double? ManaRegenCombat { get; set; }

    [JsonProperty("armor")]
    [JsonPropertyName("armor")]
    public Armor Armor { get; set; }

    [JsonProperty("dodge")]
    [JsonPropertyName("dodge")]
    public Dodge Dodge { get; set; }

    [JsonProperty("parry")]
    [JsonPropertyName("parry")]
    public Parry Parry { get; set; }

    [JsonProperty("block")]
    [JsonPropertyName("block")]
    public Block Block { get; set; }

    [JsonProperty("ranged_crit")]
    [JsonPropertyName("ranged_crit")]
    public RangedCrit RangedCrit { get; set; }

    [JsonProperty("ranged_haste")]
    [JsonPropertyName("ranged_haste")]
    public RangedHaste RangedHaste { get; set; }

    [JsonProperty("spell_haste")]
    [JsonPropertyName("spell_haste")]
    public SpellHaste SpellHaste { get; set; }

    [JsonProperty("character")]
    [JsonPropertyName("character")]
    public Character Character { get; set; }
}