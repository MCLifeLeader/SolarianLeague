﻿namespace Solarian.League.Web.Models.ApplicationSettings;

public class DiscordClient
{
    public string? BaseUrl { get; set; }
    public int TimeoutInSeconds { get; set; }
    public int CacheDurationInSeconds { get; set; }
}