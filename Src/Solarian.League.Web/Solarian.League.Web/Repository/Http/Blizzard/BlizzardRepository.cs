﻿using Solarian.League.Web.Connection.Interfaces;
using Solarian.League.Web.Constants;
using Solarian.League.Web.Models.Blizzard;
using Solarian.League.Web.Models.Discord;

namespace Solarian.League.Web.Repository.Http.Blizzard;

public class BlizzardRepository : IBlizzardRepository
{
    private readonly IHttpClientWrapper _httpClient;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardRepository(IHttpClientWrapper httpClientWrapper)
    {
        _httpClient = httpClientWrapper;
    }

    public async Task<GuildRoster> GetGuildRosterAsync()
    {
        string route = $"api/roster?t={DateTime.UtcNow.Ticks}";
        var response = await _httpClient.GetObjectAsync<GuildRoster>(route, HttpClientNames.BLIZZARD_SERVER_DATA);
            
        return response;
    }
}