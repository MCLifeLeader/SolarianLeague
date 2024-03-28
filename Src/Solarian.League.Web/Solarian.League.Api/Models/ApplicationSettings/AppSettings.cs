using Microsoft.Extensions.Configuration;
using System.Text.Json.Serialization;
using System.Xml.Serialization;

namespace Solarian.League.Api.Models.ApplicationSettings;

public class AppSettings
{
    [JsonIgnore]
    [XmlIgnore]
    public IConfiguration? ConfigurationBase { get; set; }

    public int MaxHttpTimeoutSeconds { get; set; }
    public HttpClients? HttpClients { get; set; } = new();
}