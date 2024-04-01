using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileSummary;

public class Quests
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}