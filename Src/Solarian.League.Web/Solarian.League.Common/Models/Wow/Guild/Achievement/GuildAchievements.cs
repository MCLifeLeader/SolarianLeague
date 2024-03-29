using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Achievement;

public class GuildAchievements
{
    [JsonPropertyName("_links")]
    [JsonProperty("_links")]
    public Links Links { get; set; }

    [JsonPropertyName("guild")]
    [JsonProperty("guild")]
    public Guild Guild { get; set; }

    [JsonPropertyName("total_quantity")]
    [JsonProperty("total_quantity")]
    public int TotalQuantity { get; set; }

    [JsonPropertyName("total_points")]
    [JsonProperty("total_points")]
    public int TotalPoints { get; set; }

    [JsonPropertyName("achievements")]
    [JsonProperty("achievements")]
    public Achievement[] Achievements { get; set; }

    [JsonPropertyName("category_progress")]
    [JsonProperty("category_progress")]
    public CategoryProgress[] CategoryProgress { get; set; }

    [JsonPropertyName("recent_events")]
    [JsonProperty("recent_events")]
    public RecentEvents[] RecentEvents { get; set; }
}

public class Links
{
    [JsonPropertyName("self")]
    [JsonProperty("self")]
    public Self Self { get; set; }
}

public class Self
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class Guild
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("realm")]
    [JsonProperty("realm")]
    public Realm Realm { get; set; }

    [JsonPropertyName("faction")]
    [JsonProperty("faction")]
    public Faction Faction { get; set; }
}

public class Key
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class Realm
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key1 Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public Name Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("slug")]
    [JsonProperty("slug")]
    public string Slug { get; set; }
}

public class Key1
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

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

public class Faction
{
    [JsonPropertyName("type")]
    [JsonProperty("type")]
    public string Type { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public Name1 Name { get; set; }
}

public class Name1
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

public class Achievement
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("achievement")]
    [JsonProperty("achievement")]
    public Achievement1 Achievement1 { get; set; }

    [JsonPropertyName("criteria")]
    [JsonProperty("criteria")]
    public Criteria Criteria { get; set; }

    [JsonPropertyName("completed_timestamp")]
    [JsonProperty("completed_timestamp")]
    public long CompletedTimestamp { get; set; }
}

public class Achievement1
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key2 Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }
}

public class Key2
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class Criteria
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("is_completed")]
    [JsonProperty("is_completed")]
    public bool IsCompleted { get; set; }

    [JsonPropertyName("child_criteria")]
    [JsonProperty("child_criteria")]
    public ChildCriteria[] ChildCriteria { get; set; }

    [JsonPropertyName("amount")]
    [JsonProperty("amount")]
    public int Amount { get; set; }
}

public class ChildCriteria
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("amount")]
    [JsonProperty("amount")]
    public long Amount { get; set; }

    [JsonPropertyName("is_completed")]
    [JsonProperty("is_completed")]
    public bool IsCompleted { get; set; }
}

public class CategoryProgress
{
    [JsonPropertyName("category")]
    [JsonProperty("category")]
    public Category Category { get; set; }

    [JsonPropertyName("quantity")]
    [JsonProperty("quantity")]
    public int Quantity { get; set; }

    [JsonPropertyName("points")]
    [JsonProperty("points")]
    public int Points { get; set; }
}

public class Category
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key3 Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }
}

public class Key3
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class RecentEvents
{
    [JsonPropertyName("achievement")]
    [JsonProperty("achievement")]
    public Achievement2 Achievement { get; set; }

    [JsonPropertyName("timestamp")]
    [JsonProperty("timestamp")]
    public long Timestamp { get; set; }
}

public class Achievement2
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key4 Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public int Id { get; set; }
}

public class Key4
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

