using Solarian.League.Common.Connection.Interfaces;
using Solarian.League.Common.Models.Discord;
using Solarian.League.Web.Constants;

namespace Solarian.League.Web.Repository.Http.Discord;

public class DiscordRepository : IDiscordRepository
{
    private readonly IHttpClientWrapper _httpClient;

    // ReSharper disable once ConvertToPrimaryConstructor
    public DiscordRepository(IHttpClientWrapper httpClientWrapper)
    {
        _httpClient = httpClientWrapper;
    }

    public async Task<WidgetData> GetDiscordServerDataAsync()
    {
        string route = $"api/guilds/511303656193392652/widget.json?t={DateTime.UtcNow.Ticks}";
        var response = await _httpClient.GetObjectAsync<WidgetData>(route, HttpClientNames.DISCORD_SERVER_DATA);
            
        return response;
    }
}