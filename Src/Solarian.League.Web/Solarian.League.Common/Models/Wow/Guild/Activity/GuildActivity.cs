using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Activity;

public class GuildActivity
{
    public _Links _links { get; set; }
    public Guild guild { get; set; }
}

public class _Links
{
    public Self self { get; set; }
}

public class Self
{
    public string href { get; set; }
}

public class Guild
{
    public Key key { get; set; }
    public string name { get; set; }
    public int id { get; set; }
    public Realm realm { get; set; }
    public Faction faction { get; set; }
}

public class Key
{
    public string href { get; set; }
}

public class Realm
{
    public Key1 key { get; set; }
    public Name name { get; set; }
    public int id { get; set; }
    public string slug { get; set; }
}

public class Key1
{
    public string href { get; set; }
}

public class Name
{
    public string en_US { get; set; }
    public string es_MX { get; set; }
    public string pt_BR { get; set; }
    public string de_DE { get; set; }
    public string en_GB { get; set; }
    public string es_ES { get; set; }
    public string fr_FR { get; set; }
    public string it_IT { get; set; }
    public string ru_RU { get; set; }
    public string ko_KR { get; set; }
    public string zh_TW { get; set; }
    public string zh_CN { get; set; }
}

public class Faction
{
    public string type { get; set; }
    public Name1 name { get; set; }
}

public class Name1
{
    public string en_US { get; set; }
    public string es_MX { get; set; }
    public string pt_BR { get; set; }
    public string de_DE { get; set; }
    public string en_GB { get; set; }
    public string es_ES { get; set; }
    public string fr_FR { get; set; }
    public string it_IT { get; set; }
    public string ru_RU { get; set; }
    public string ko_KR { get; set; }
    public string zh_TW { get; set; }
    public string zh_CN { get; set; }
}
