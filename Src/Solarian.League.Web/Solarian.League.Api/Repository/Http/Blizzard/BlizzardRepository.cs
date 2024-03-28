using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Solarian.League.Api.Constants;
using Solarian.League.Api.Models.ApplicationSettings;
using Solarian.League.Api.Repository.Http.Blizzard.Interfaces;
using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Repository.Http.Blizzard;

public class BlizzardRepository : IBlizzardRepository
{
    private readonly IHttpClientWrapper _httpClient;
    private readonly AppSettings _appSettings;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardRepository(
        IOptions<AppSettings> appSettings,
        IHttpClientWrapper httpClientWrapper)
    {
        _appSettings = appSettings.Value;
        _httpClient = httpClientWrapper;
    }

    public async Task<GuildRoot> GetGuildRosterAsync()
    {
        string? realm = _appSettings.HttpClients!.BlizzardClient!.Realm;
        string? guildName = _appSettings.HttpClients.BlizzardClient.GuildName;

        string route = $"data/wow/guild/{realm}/{guildName}?namespace=profile-us";
        GuildRoot response = await _httpClient.GetObjectAsync<GuildRoot>(route, HttpClientNames.BLIZZARD_SERVER_DATA);
        return response;
    }
}