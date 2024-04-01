using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Api.Models.State;

public class OAuthTokenValidation
{
    [JsonProperty("scope")]
    [JsonPropertyName("scope")]
    public IList<object>? Scope { get; set; }
    [JsonProperty("account_authorities")]
    [JsonPropertyName("account_authorities")]
    public IList<object>? AccountAuthorities { get; set; }
    [JsonProperty("exp")]
    [JsonPropertyName("exp")]
    public int? Exp { get; set; }
    [JsonProperty("client_authorities")]
    [JsonPropertyName("client_authorities")]
    public IList<object>? ClientAuthorities { get; set; }
    [JsonProperty("authorities")]
    [JsonPropertyName("authorities")]
    public IList<string>? Authorities { get; set; }
    [JsonProperty("client_id")]
    [JsonPropertyName("client_id")]
    public string? ClientId { get; set; }
}