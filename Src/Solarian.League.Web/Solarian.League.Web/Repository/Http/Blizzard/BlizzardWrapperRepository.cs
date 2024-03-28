﻿using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Web.Constants;
using Solarian.League.Web.Models.Blizzard;

namespace Solarian.League.Web.Repository.Http.Blizzard;

public class BlizzardWrapperRepository : IBlizzardWrapperRepository
{
    private readonly IHttpClientWrapper _httpClient;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardWrapperRepository(IHttpClientWrapper httpClientWrapper)
    {
        _httpClient = httpClientWrapper;
    }

    public async Task<GuildRoster> GetGuildRosterAsync()
    {
        string route = $"api/roster?t={DateTime.UtcNow.Ticks}";
        GuildRoster response = await _httpClient.GetObjectAsync<GuildRoster>(route, HttpClientNames.BLIZZARD_SERVER_WRAPPER_DATA);
            
        return response;
    }
}