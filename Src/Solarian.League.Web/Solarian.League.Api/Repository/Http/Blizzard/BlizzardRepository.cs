using Microsoft.Extensions.Logging;
using Solarian.League.Api.Constants;
using Solarian.League.Api.Repository.Http.Blizzard.Interfaces;
using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api.Repository.Http.Blizzard;

public class BlizzardRepository : IBlizzardRepository
{
    private readonly ILogger<BlizzardRepository> _logger;
    private readonly IHttpClientWrapper _httpClient;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardRepository(
        ILogger<BlizzardRepository> logger,
        IHttpClientWrapper httpClientWrapper)
    {
        _logger = logger;
        _httpClient = httpClientWrapper;
    }

    public async Task<GuildRoot> GetGuildRosterAsync()
    {
        _logger.LogInformation("GetGuildRosterAsync called.");
        try
        {
            string realm = "antonidas";
            string guildName = "solarian-league";

            string route = $"data/wow/guild/{realm}/{guildName}?namespace=profile-us";
            GuildRoot response = await _httpClient.GetObjectAsync<GuildRoot>(route, HttpClientNames.BLIZZARD_SERVER_DATA);
            return response;
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error in GetGuildRosterAsync");
            throw;
        }

        return new();
    }
}