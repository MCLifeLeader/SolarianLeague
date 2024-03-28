﻿using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Base;

public class Activity
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}