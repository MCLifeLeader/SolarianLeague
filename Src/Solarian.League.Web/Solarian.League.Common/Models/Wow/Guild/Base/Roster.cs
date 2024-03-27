using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Base;

public class Roster
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}