﻿using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.Appearance;

public class Gender
{
    [JsonProperty("type")]
    [JsonPropertyName("type")]
    public string Type { get; set; }

    [JsonProperty("name")]
    [JsonPropertyName("name")]
    public string Name { get; set; }
}