using Microsoft.AspNetCore.Components;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Pages;

public partial class Discord
{
    [Inject]
    public IDiscordService? DiscordService { get; set; }
    [Parameter]
    public string PageRoute { get; set; } = default!;
}