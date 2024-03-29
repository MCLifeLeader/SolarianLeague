using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Roster
{
    public class GuildRoster
    {
        [JsonPropertyName("_links")]
        [JsonProperty("_links")]
        public Links Links { get; set; }

        [JsonPropertyName("guild")]
        [JsonProperty("guild")]
        public Guild Guild { get; set; }

        [JsonPropertyName("members")]
        [JsonProperty("members")]
        public Member[] Members { get; set; }
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

    public class Member
    {
        [JsonPropertyName("character")]
        [JsonProperty("character")]
        public Character Character { get; set; }

        [JsonPropertyName("rank")]
        [JsonProperty("rank")]
        public int Rank { get; set; }
    }

    public class Character
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

        [JsonPropertyName("realm")]
        [JsonProperty("realm")]
        public Realm1 Realm { get; set; }

        [JsonPropertyName("level")]
        [JsonProperty("level")]
        public int Level { get; set; }

        [JsonPropertyName("playable_class")]
        [JsonProperty("playable_class")]
        public PlayableClass PlayableClass { get; set; }

        [JsonPropertyName("playable_race")]
        [JsonProperty("playable_race")]
        public PlayableRace PlayableRace { get; set; }
    }

    public class Key2
    {
        [JsonPropertyName("href")]
        [JsonProperty("href")]
        public string Href { get; set; }
    }

    public class Realm1
    {
        [JsonPropertyName("key")]
        [JsonProperty("key")]
        public Key3 Key { get; set; }

        [JsonPropertyName("id")]
        [JsonProperty("id")]
        public int Id { get; set; }

        [JsonPropertyName("slug")]
        [JsonProperty("slug")]
        public string Slug { get; set; }
    }

    public class Key3
    {
        [JsonPropertyName("href")]
        [JsonProperty("href")]
        public string Href { get; set; }
    }

    public class PlayableClass
    {
        [JsonPropertyName("key")]
        [JsonProperty("key")]
        public Key4 Key { get; set; }

        [JsonPropertyName("id")]
        [JsonProperty("id")]
        public int Id { get; set; }
    }

    public class Key4
    {
        [JsonPropertyName("href")]
        [JsonProperty("href")]
        public string Href { get; set; }
    }

    public class PlayableRace
    {
        [JsonPropertyName("key")]
        [JsonProperty("key")]
        public Key5 Key { get; set; }

        [JsonPropertyName("id")]
        [JsonProperty("id")]
        public int Id { get; set; }
    }

    public class Key5
    {
        [JsonPropertyName("href")]
        [JsonProperty("href")]
        public string Href { get; set; }
    }
}
