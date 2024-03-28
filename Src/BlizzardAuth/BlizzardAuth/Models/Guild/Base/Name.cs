using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace BlizzardAuth.Models.Guild.Base;

public class Name
{
    [JsonProperty("en_US")]
    [JsonPropertyName("en_US")]
    public string EnUS { get; set; }

    [JsonProperty("es_MX")]
    [JsonPropertyName("es_MX")]
    public string EsMX { get; set; }

    [JsonProperty("pt_BR")]
    [JsonPropertyName("pt_BR")]
    public string PtBR { get; set; }

    [JsonProperty("de_DE")]
    [JsonPropertyName("de_DE")]
    public string DeDE { get; set; }

    [JsonProperty("en_GB")]
    [JsonPropertyName("en_GB")]
    public string EnGB { get; set; }

    [JsonProperty("es_ES")]
    [JsonPropertyName("es_ES")]
    public string EsES { get; set; }

    [JsonProperty("fr_FR")]
    [JsonPropertyName("fr_FR")]
    public string FrFR { get; set; }

    [JsonProperty("it_IT")]
    [JsonPropertyName("it_IT")]
    public string ItIT { get; set; }

    [JsonProperty("ru_RU")]
    [JsonPropertyName("ru_RU")]
    public string RuRU { get; set; }

    [JsonProperty("ko_KR")]
    [JsonPropertyName("ko_KR")]
    public string KoKR { get; set; }

    [JsonProperty("zh_TW")]
    [JsonPropertyName("zh_TW")]
    public string ZhTW { get; set; }

    [JsonProperty("zh_CN")]
    [JsonPropertyName("zh_CN")]
    public string ZhCN { get; set; }
}