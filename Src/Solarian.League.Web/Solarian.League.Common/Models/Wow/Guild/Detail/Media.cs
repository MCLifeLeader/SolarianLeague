﻿using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class Media
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key Key { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }
}