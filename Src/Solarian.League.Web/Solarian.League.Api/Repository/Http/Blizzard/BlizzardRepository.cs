using Solarian.League.Api.Constants;
using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Repository.Http.Blizzard;

public class BlizzardRepository : IBlizzardRepository
{
    private readonly IHttpClientWrapper _httpClient;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardRepository(IHttpClientWrapper httpClientWrapper)
    {
        _httpClient = httpClientWrapper;
    }

    public async Task<GuildRoot> GetGuildRosterAsync()
    {
        string route = $"api/roster?t={DateTime.UtcNow.Ticks}";
        GuildRoot response = await _httpClient.GetObjectAsync<GuildRoot>(route, HttpClientNames.BLIZZARD_SERVER_DATA);
            
        return response;
    }
}