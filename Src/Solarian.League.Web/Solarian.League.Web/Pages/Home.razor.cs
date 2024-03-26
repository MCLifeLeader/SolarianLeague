using Microsoft.AspNetCore.Components;
using Solarian.League.Web.Models.Blizzard;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Pages;

public partial class Home
{

    [Inject]
    public IBlizzardService BlizzardService { get; set; }

    public GuildRoster? Message { get; set; }
    public string? ErrorMessage { get; set; }

    protected override async Task OnInitializedAsync()
    {
        try
        {
            Message = await BlizzardService.GetGuildRosterAsync();
        }
        catch (Exception ex)
        {
            ErrorMessage = ex.ToString();
        }

        await base.OnInitializedAsync();
    }
}