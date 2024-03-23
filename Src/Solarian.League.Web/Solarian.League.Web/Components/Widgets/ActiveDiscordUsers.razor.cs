using Microsoft.AspNetCore.Components;
using Solarian.League.Web.Models.Discord.Widget;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Components.Widgets;

public partial class ActiveDiscordUsers
{
    [Inject]
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    public IDiscordService DiscordService { get; set; }
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
    
    public Widget DiscordData { get; set; } = new Widget();
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