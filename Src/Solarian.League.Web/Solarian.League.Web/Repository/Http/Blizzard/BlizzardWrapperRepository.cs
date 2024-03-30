using Microsoft.Extensions.Options;
using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Detail;
using Solarian.League.Common.Models.Wow.Guild.Roster;
using Solarian.League.Web.Constants;
using Solarian.League.Web.Models.ApplicationSettings;

namespace Solarian.League.Web.Repository.Http.Blizzard;

public class BlizzardWrapperRepository : IBlizzardWrapperRepository
{
    private readonly IHttpClientWrapper _httpClient;
    private readonly AppSettings _appSettings;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardWrapperRepository(
        IOptions<AppSettings> appSettings,
        IHttpClientWrapper httpClientWrapper)
    {
        _appSettings = appSettings.Value;
        _httpClient = httpClientWrapper;
    }

    public async Task<GuildDetails> GetGuildDetailsAsync()
    {
        string route = $"api/Guild/GuildDetails?t={DateTime.UtcNow.Ticks}&code={_appSettings.HttpClients!.BlizzardWrapperClient!.ApiKey}";
        var response = await _httpClient.GetObjectAsync<GuildDetails>(route, HttpClientNames.BLIZZARD_SERVER_WRAPPER_DATA);
            
        return response;
    }

    public async Task<GuildRoster?> GetGuildRosterAsync()
    {
        string route = $"api/Guild/GuildRoster?t={DateTime.UtcNow.Ticks}&code={_appSettings.HttpClients!.BlizzardWrapperClient!.ApiKey}";
        var response = await _httpClient.GetObjectAsync<GuildRoster>(route, HttpClientNames.BLIZZARD_SERVER_WRAPPER_DATA);

        return response;
    }

    public async Task<GuildActivity?> GetGuildActivityAsync()
    {
        string route = $"api/Guild/GuildActivity?t={DateTime.UtcNow.Ticks}&code={_appSettings.HttpClients!.BlizzardWrapperClient!.ApiKey}";
        var response = await _httpClient.GetObjectAsync<GuildActivity>(route, HttpClientNames.BLIZZARD_SERVER_WRAPPER_DATA);

        return response;
    }

    public async Task<GuildAchievements?> GetGuildAchievementsAsync()
    {
        string route = $"api/Guild/GuildAchievements?t={DateTime.UtcNow.Ticks}&code={_appSettings.HttpClients!.BlizzardWrapperClient!.ApiKey}";
        var response = await _httpClient.GetObjectAsync<GuildAchievements>(route, HttpClientNames.BLIZZARD_SERVER_WRAPPER_DATA);

        return response;
    }

    public async Task<CharacterSummary?> GetCharacterSummaryAsync(string characterName)
    {
        string route = $"api/Guild/CharacterSummary?name={characterName}&t={DateTime.UtcNow.Ticks}&code={_appSettings.HttpClients!.BlizzardWrapperClient!.ApiKey}";
        var response = await _httpClient.GetObjectAsync<CharacterSummary>(route, HttpClientNames.BLIZZARD_SERVER_WRAPPER_DATA);

        return response;
    }
}