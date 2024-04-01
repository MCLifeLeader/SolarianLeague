﻿using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class CharacterClass
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key Key { get; set; } = new();

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }
}