using Solarian.League.Common.Models.Discord;
using Solarian.League.Web.Repository.Http.Discord;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Services;

public class DiscordService : IDiscordService
{
    private readonly ILogger<DiscordService> _logger;
    private readonly IDiscordRepository _discordRepository;

    // ReSharper disable once ConvertToPrimaryConstructor
    public DiscordService(ILogger<DiscordService> logger,
        IDiscordRepository discordRepository)
    {
        _logger = logger;
        _discordRepository = discordRepository;
    }

    public async Task<WidgetData?> GetDiscordServerDataAsync()
    {
        try
        {
            return await _discordRepository.GetDiscordServerDataAsync();
        }
        catch (Exception e)
        {
            _logger.LogError(e, e.Message);
        }

        return null;
    }
}