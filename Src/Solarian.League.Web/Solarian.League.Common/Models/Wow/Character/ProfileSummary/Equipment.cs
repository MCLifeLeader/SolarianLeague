using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class Equipment
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}