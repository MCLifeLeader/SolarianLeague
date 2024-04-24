using Solarian.League.Common.Models.Discord;

namespace Solarian.League.Web.Services.Interfaces;

public interface IDiscordService
{
    public Task<WidgetData?> GetDiscordServerDataAsync();
}