using Solarian.League.Web.Models.Discord;

namespace Solarian.League.Web.Repository.Http.Discord;

public interface IDiscordRepository
{
    public Task<WidgetData> GetDiscordServerDataAsync();
}