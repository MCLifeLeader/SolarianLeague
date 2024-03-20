using Solarian.League.Web.Models.Discord.Widget;

namespace Solarian.League.Web.Services.Interfaces
{
    public interface IDiscordService
    {
        public Task<Widget> GetDiscordServerDataAsync();
    }
}