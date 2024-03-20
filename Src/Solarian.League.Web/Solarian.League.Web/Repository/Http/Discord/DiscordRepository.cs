using Microsoft.Extensions.Options;
using Solarian.League.Web.Connection.Interfaces;
using Solarian.League.Web.Constants;
using Solarian.League.Web.Models.ApplicationSettings;
using Solarian.League.Web.Models.Discord.Widget;
using System.Text;

namespace Solarian.League.Web.Repository.Http.Discord
{
    public class DiscordRepository : IDiscordRepository
    {
        private readonly IHttpClientWrapper _httpClient;

        // ReSharper disable once ConvertToPrimaryConstructor
        public DiscordRepository(IHttpClientWrapper httpClientWrapper)
        {
            _httpClient = httpClientWrapper;
        }

        public async Task<Widget> GetDiscordServerDataAsync()
        {
            var response = await _httpClient.GetObjectAsync<Widget>("api/guilds/511303656193392652/widget.json", HttpClientNames.DISCORD_SERVER_DATA);
            
            return response;
        }
    }
}
