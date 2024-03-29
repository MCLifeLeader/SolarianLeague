using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Api.Models.State
{
    public class OAuthToken
    {
        [JsonProperty("access_token")]
        [JsonPropertyName("access_token")]
        public string AccessToken { get; set; } = string.Empty;
        [JsonProperty("token_type")]
        [JsonPropertyName("token_type")]
        public string TokenType { get; set; } = string.Empty;
        [JsonProperty("expires_in")]
        [JsonPropertyName("expires_in")]
        public int ExpiresIn { get; set; }
        [JsonProperty("sub")]
        [JsonPropertyName("sub")]
        public string Sub { get; set; } = string.Empty;
    }
}