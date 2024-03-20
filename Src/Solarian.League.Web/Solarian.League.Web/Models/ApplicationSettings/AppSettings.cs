using System.Text.Json.Serialization;
using System.Xml.Serialization;

namespace Solarian.League.Web.Models.ApplicationSettings;

public class AppSettings
{
    [JsonIgnore]
    [XmlIgnore]
    public IConfiguration? ConfigurationBase { get; set; }

    public HttpClients? HttpClients { get; set; }
}