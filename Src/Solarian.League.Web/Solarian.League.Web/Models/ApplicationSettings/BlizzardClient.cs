﻿namespace Solarian.League.Web.Models.ApplicationSettings;

public class BlizzardWrapperClient
{
    public string? BaseUrl { get; set; }
    public int TimeoutInSeconds { get; set; }
    public int CacheDurationInSeconds { get; set; }
}