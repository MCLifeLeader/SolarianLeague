using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Azure.Functions.Worker;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Solarian.League.Api.Models.ApplicationSettings;
using Solarian.League.Api.Services.Interfaces;
using Solarian.League.Common.Models.Wow.Guild.Base;

namespace Solarian.League.Api;

public class BlizzardWrapper
{
    private readonly ILogger<BlizzardWrapper> _logger;
    private readonly IBlizzardService _blizzardService;
    private readonly AppSettings _appSettings;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardWrapper(
        ILogger<BlizzardWrapper> logger,
        IOptions<AppSettings> appSettings,
        IBlizzardService blizzardService)
    {
        _logger = logger;
        _appSettings = appSettings.Value;
        _blizzardService = blizzardService;
    }

    [Function("GuildBase")]
    public async Task<IActionResult> GuildBase([HttpTrigger(AuthorizationLevel.Anonymous, "get", Route = "Guild/GuildBase")] HttpRequest req)
    {
        _logger.LogInformation("C# HTTP trigger function processed a request.");
        _logger.LogInformation($"AppSettings: '{_appSettings?.HttpClients?.BlizzardClient?.ClientId}'");
        try
        {
            GuildRoot? result = await _blizzardService.GetGuildRosterAsync();
            return new OkObjectResult(result);
        }
        catch (Exception ex)
        {
            _logger.LogError(ex, "Error in GuildBase");
            return new BadRequestObjectResult(ex.Message);
        }
    }
}
