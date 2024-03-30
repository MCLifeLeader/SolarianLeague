using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Solarian.League.Api.Constants;
using Solarian.League.Api.Models.ApplicationSettings;
using Solarian.League.Api.Repository.Http.Blizzard.Interfaces;
using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Detail;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Api.Repository.Http.Blizzard;

public class BlizzardRepository : IBlizzardRepository
{
    private readonly IHttpClientWrapper _httpClient;
    private readonly AppSettings _appSettings;
    private readonly string _realm;
    private readonly string _guildName;
    private readonly ILogger<BlizzardRepository> _logger;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardRepository(
        ILogger<BlizzardRepository> logger,
        IOptions<AppSettings> appSettings,
        IHttpClientWrapper httpClientWrapper)
    {
        _logger = logger;
        _appSettings = appSettings.Value;
        _httpClient = httpClientWrapper;
        _realm = _appSettings.HttpClients!.BlizzardClient!.Realm!;
        _guildName = _appSettings.HttpClients.BlizzardClient.GuildName!;
    }

    public async Task<GuildDetails> GetGuildDetailsAsync()
    {
        string route = $"data/wow/guild/{_realm}/{_guildName}?namespace=profile-us";
        var response = await _httpClient.GetObjectAsync<GuildDetails>(route, HttpClientNames.BLIZZARD_SERVER_DATA);

        return response;
    }

    public async Task<GuildRoster?> GetGuildRosterAsync()
    {
        string route = $"data/wow/guild/{_realm}/{_guildName}/roster?namespace=profile-us";
        var response = await _httpClient.GetObjectAsync<GuildRoster>(route, HttpClientNames.BLIZZARD_SERVER_DATA);

        return response;
    }

    public async Task<GuildActivity?> GetGuildActivityAsync()
    {
        string route = $"data/wow/guild/{_realm}/{_guildName}/activity?namespace=profile-us";
        var response = await _httpClient.GetObjectAsync<GuildActivity>(route, HttpClientNames.BLIZZARD_SERVER_DATA);

        return response;
    }

    public async Task<GuildAchievements?> GetGuildAchievementsAsync()
    {
        string route = $"data/wow/guild/{_realm}/{_guildName}/achievements?namespace=profile-us";
        var response = await _httpClient.GetObjectAsync<GuildAchievements>(route, HttpClientNames.BLIZZARD_SERVER_DATA);

        return response;
    }

    public async Task<CharacterSummary?> GetCharacterSummaryAsync(string characterName)
    {
        string route = $"profile/wow/character/{_realm}/{characterName}?namespace=profile-us&locale=en_US";
        var response = await _httpClient.GetObjectAsync<CharacterSummary>(route, HttpClientNames.BLIZZARD_SERVER_DATA);

        return response;
    }
}