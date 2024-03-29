using Newtonsoft.Json;
using System.Text.Json.Serialization;

namespace Solarian.League.Common.Models.Wow.Guild.Base;

public class GuildDetails
{
    public _Links _links { get; set; }
    public int id { get; set; }
    public string name { get; set; }
    public Faction faction { get; set; }
    public int achievement_points { get; set; }
    public int member_count { get; set; }
    public Realm realm { get; set; }
    public Crest crest { get; set; }
    public Roster roster { get; set; }
    public Achievements achievements { get; set; }
    public long created_timestamp { get; set; }
    public Activity activity { get; set; }
    public string name_search { get; set; }
}

public class _Links
{
    public Self self { get; set; }
}

public class Self
{
    public string href { get; set; }
}

public class Faction
{
    public string type { get; set; }
    public Name name { get; set; }
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

public class Realm
{
    public Key key { get; set; }
    public Name1 name { get; set; }
    public int id { get; set; }
    public string slug { get; set; }
}

public class Key
{
    public string href { get; set; }
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

public class Crest
{
    public Emblem emblem { get; set; }
    public Border border { get; set; }
    public Background background { get; set; }
}

public class Emblem
{
    public int id { get; set; }
    public Media media { get; set; }
    public Color color { get; set; }
}

public class Media
{
    public Key1 key { get; set; }
    public int id { get; set; }
}

public class Key1
{
    public string href { get; set; }
}

public class Color
{
    public int id { get; set; }
    public Rgba rgba { get; set; }
}

public class Rgba
{
    public int r { get; set; }
    public int g { get; set; }
    public int b { get; set; }
    public float a { get; set; }
}

public class Border
{
    public int id { get; set; }
    public Media1 media { get; set; }
    public Color1 color { get; set; }
}

public class Media1
{
    public Key2 key { get; set; }
    public int id { get; set; }
}

public class Key2
{
    public string href { get; set; }
}

public class Color1
{
    public int id { get; set; }
    public Rgba1 rgba { get; set; }
}

public class Rgba1
{
    public int r { get; set; }
    public int g { get; set; }
    public int b { get; set; }
    public float a { get; set; }
}

public class Background
{
    public Color2 color { get; set; }
}

public class Color2
{
    public int id { get; set; }
    public Rgba2 rgba { get; set; }
}

public class Rgba2
{
    public int r { get; set; }
    public int g { get; set; }
    public int b { get; set; }
    public float a { get; set; }
}

public class Roster
{
    public string href { get; set; }
}

public class Achievements
{
    public string href { get; set; }
}

public class Activity
{
    public string href { get; set; }
}
