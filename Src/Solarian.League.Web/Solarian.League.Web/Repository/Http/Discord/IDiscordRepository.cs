using Solarian.League.Web.Models.Discord.Widget;

namespace Solarian.League.Web.Repository.Http.Discord
{
    public interface IDiscordRepository
    {
        public Task<Widget> GetDiscordServerDataAsync();
    }
}