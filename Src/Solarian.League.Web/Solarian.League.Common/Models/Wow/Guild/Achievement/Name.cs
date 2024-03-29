using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement
{
    public class Name
    {
        [JsonPropertyName("en_US")]
        [JsonProperty("en_US")]
        public string EnUs { get; set; }

        [JsonPropertyName("es_MX")]
        [JsonProperty("es_MX")]
        public string EsMx { get; set; }

        [JsonPropertyName("pt_BR")]
        [JsonProperty("pt_BR")]
        public string PtBr { get; set; }

        [JsonPropertyName("de_DE")]
        [JsonProperty("de_DE")]
        public string DeDe { get; set; }

        [JsonPropertyName("en_GB")]
        [JsonProperty("en_GB")]
        public string EnGb { get; set; }

        [JsonPropertyName("es_ES")]
        [JsonProperty("es_ES")]
        public string EsEs { get; set; }

        [JsonPropertyName("fr_FR")]
        [JsonProperty("fr_FR")]
        public string FrFr { get; set; }

        [JsonPropertyName("it_IT")]
        [JsonProperty("it_IT")]
        public string ItIt { get; set; }

        [JsonPropertyName("ru_RU")]
        [JsonProperty("ru_RU")]
        public string RuRu { get; set; }

        [JsonPropertyName("ko_KR")]
        [JsonProperty("ko_KR")]
        public string KoKr { get; set; }

        [JsonPropertyName("zh_TW")]
        [JsonProperty("zh_TW")]
        public string ZhTw { get; set; }

        [JsonPropertyName("zh_CN")]
        [JsonProperty("zh_CN")]
        public string ZhCn { get; set; }
    }
}