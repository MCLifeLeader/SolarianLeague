using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Character.ProfileStatus;

public class Self
{
    [JsonProperty("href")]
    [JsonPropertyName("href")]
    public string Href { get; set; }
}