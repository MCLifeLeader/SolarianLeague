using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Detail;

public class GuildDetails
{
    [JsonPropertyName("_links")]
    [JsonProperty("_links")]
    public Links Links { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public string Name { get; set; }

    [JsonPropertyName("faction")]
    [JsonProperty("faction")]
    public Faction Faction { get; set; }

    [JsonPropertyName("achievement_points")]
    [JsonProperty("achievement_points")]
    public int AchievementPoints { get; set; }

    [JsonPropertyName("member_count")]
    [JsonProperty("member_count")]
    public int MemberCount { get; set; }

    [JsonPropertyName("realm")]
    [JsonProperty("realm")]
    public Realm Realm { get; set; }

    [JsonPropertyName("crest")]
    [JsonProperty("crest")]
    public Crest Crest { get; set; }

    [JsonPropertyName("roster")]
    [JsonProperty("roster")]
    public Roster Roster { get; set; }

    [JsonPropertyName("achievements")]
    [JsonProperty("achievements")]
    public Achievements Achievements { get; set; }

    [JsonPropertyName("created_timestamp")]
    [JsonProperty("created_timestamp")]
    public long CreatedTimestamp { get; set; }

    [JsonPropertyName("activity")]
    [JsonProperty("activity")]
    public Activity Activity { get; set; }

    [JsonPropertyName("name_search")]
    [JsonProperty("name_search")]
    public string NameSearch { get; set; }
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

public class Faction
{
    [JsonPropertyName("type")]
    [JsonProperty("type")]
    public string Type { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public Name Name { get; set; }
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

public class Realm
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key Key { get; set; }

    [JsonPropertyName("name")]
    [JsonProperty("name")]
    public Name1 Name { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("slug")]
    [JsonProperty("slug")]
    public string Slug { get; set; }
}

public class Key
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
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

public class Crest
{
    [JsonPropertyName("emblem")]
    [JsonProperty("emblem")]
    public Emblem Emblem { get; set; }

    [JsonPropertyName("border")]
    [JsonProperty("border")]
    public Border Border { get; set; }

    [JsonPropertyName("background")]
    [JsonProperty("background")]
    public Background Background { get; set; }
}

public class Emblem
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("media")]
    [JsonProperty("media")]
    public Media Media { get; set; }

    [JsonPropertyName("color")]
    [JsonProperty("color")]
    public Color Color { get; set; }
}

public class Media
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key1 Key { get; set; }

    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }
}

public class Key1
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class Color
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("rgba")]
    [JsonProperty("rgba")]
    public Rgba Rgba { get; set; }
}

public class Rgba
{
    [JsonPropertyName("r")]
    [JsonProperty("r")]
    public int R { get; set; }

    [JsonPropertyName("g")]
    [JsonProperty("g")]
    public int G { get; set; }

    [JsonPropertyName("b")]
    [JsonProperty("b")]
    public int B { get; set; }

    [JsonPropertyName("a")]
    [JsonProperty("a")]
    public float A { get; set; }
}

public class Border
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("media")]
    [JsonProperty("media")]
    public Media1 Media { get; set; }

    [JsonPropertyName("color")]
    [JsonProperty("color")]
    public Color1 Color { get; set; }
}

public class Media1
{
    [JsonPropertyName("key")]
    [JsonProperty("key")]
    public Key2 Key { get; set; }

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

public class Color1
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("rgba")]
    [JsonProperty("rgba")]
    public Rgba1 Rgba { get; set; }
}

public class Rgba1
{
    [JsonPropertyName("r")]
    [JsonProperty("r")]
    public int R { get; set; }

    [JsonPropertyName("g")]
    [JsonProperty("g")]
    public int G { get; set; }

    [JsonPropertyName("b")]
    [JsonProperty("b")]
    public int B { get; set; }

    [JsonPropertyName("a")]
    [JsonProperty("a")]
    public float A { get; set; }
}

public class Background
{
    [JsonPropertyName("color")]
    [JsonProperty("color")]
    public Color2 Color { get; set; }
}

public class Color2
{
    [JsonPropertyName("id")]
    [JsonProperty("id")]
    public int Id { get; set; }

    [JsonPropertyName("rgba")]
    [JsonProperty("rgba")]
    public Rgba2 Rgba { get; set; }
}

public class Rgba2
{
    [JsonPropertyName("r")]
    [JsonProperty("r")]
    public int R { get; set; }

    [JsonPropertyName("g")]
    [JsonProperty("g")]
    public int G { get; set; }

    [JsonPropertyName("b")]
    [JsonProperty("b")]
    public int B { get; set; }

    [JsonPropertyName("a")]
    [JsonProperty("a")]
    public float A { get; set; }
}

public class Roster
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class Achievements
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}

public class Activity
{
    [JsonPropertyName("href")]
    [JsonProperty("href")]
    public string Href { get; set; }
}
