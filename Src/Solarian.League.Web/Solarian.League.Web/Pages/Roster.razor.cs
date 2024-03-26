using Microsoft.AspNetCore.Components;

namespace Solarian.League.Web.Pages;

public partial class Roster
{
    [Parameter]
    public string PageRoute { get; set; } = default!;
}