using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class PvpSummary
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}