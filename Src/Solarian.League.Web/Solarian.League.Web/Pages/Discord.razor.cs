using Microsoft.AspNetCore.Components;
using Solarian.League.Web.Models.Discord.Widget;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Pages;

public partial class Discord
{
    [Inject]
    public IDiscordService DiscordService { get; set; }

    public Widget DiscordData { get; set; } = default!;
    public string ErrorMessage { get; set; } = string.Empty;

    protected override async Task OnInitializedAsync()
    {
        try
        {
            DiscordData = await DiscordService.GetDiscordServerDataAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = ex.ToString();
        }
    }
}