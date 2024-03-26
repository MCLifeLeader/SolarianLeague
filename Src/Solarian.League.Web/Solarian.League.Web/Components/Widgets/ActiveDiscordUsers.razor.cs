using Microsoft.AspNetCore.Components;
using Solarian.League.Web.Helpers.State;
using Solarian.League.Web.Models.ApplicationSettings;
using Solarian.League.Web.Models.Discord;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Components.Widgets;

public partial class ActiveDiscordUsers
{
    [Inject]
    public IDiscordService? DiscordService { get; set; }
    [Inject]
    public ApplicationData? ApplicationData { get; set; }
    [Inject]
    public AppSettings? AppSettings { get; set; }

    public WidgetData DiscordData { get; set; } = new WidgetData();
    public string ErrorMessage { get; set; } = string.Empty;

    protected override async Task OnInitializedAsync()
    {
        await RefreshDataAsync();
        await base.OnInitializedAsync();
    }

    private async Task RefreshDataAsync()
    {
        try
        {
            if (ApplicationData!.ActiveDiscordUsers.DiscordWidgetLastUpdated <= DateTime.UtcNow)
            {
                DiscordData = await DiscordService!.GetDiscordServerDataAsync();

                ApplicationData.ActiveDiscordUsers.DiscordWidgetLastUpdated = DateTime.UtcNow.AddSeconds(
                    AppSettings!.HttpClients!.DiscordData!.CacheDurationInSeconds);
                ApplicationData.ActiveDiscordUsers.DiscordWidgetData = DiscordData;
            }
            else
            {
                DiscordData = ApplicationData.ActiveDiscordUsers.DiscordWidgetData;
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = ex.ToString();
        }
    }
}