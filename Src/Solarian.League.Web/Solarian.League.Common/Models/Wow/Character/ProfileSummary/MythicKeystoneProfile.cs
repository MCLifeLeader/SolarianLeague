﻿using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class MythicKeystoneProfile
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}