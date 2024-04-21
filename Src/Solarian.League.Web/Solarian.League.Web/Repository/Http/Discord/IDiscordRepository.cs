using Solarian.League.Common.Models.Discord;

namespace Solarian.League.Web.Repository.Http.Discord;

public interface IDiscordRepository
{
    public Task<WidgetData> GetDiscordServerDataAsync();
}