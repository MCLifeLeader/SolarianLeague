using Solarian.League.Web.Models.Discord.Widget;
using Solarian.League.Web.Repository.Http.Discord;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Services
{
    public class DiscordService : IDiscordService
    {
        private readonly IDiscordRepository _discordRepository;

        // ReSharper disable once ConvertToPrimaryConstructor
        public DiscordService(IDiscordRepository discordRepository)
        {
            _discordRepository = discordRepository;
        }

        public async Task<Widget> GetDiscordServerDataAsync()
        {
            return await _discordRepository.GetDiscordServerDataAsync();
        }
    }
}
