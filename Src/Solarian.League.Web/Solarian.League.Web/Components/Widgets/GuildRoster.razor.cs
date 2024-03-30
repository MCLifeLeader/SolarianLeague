using Microsoft.AspNetCore.Components;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Components.Widgets;

public partial class GuildRoster
{
    [Inject]
    private IBlizzardService BlizzardService { get; set; } = default!;

    private Common.Models.Wow.Guild.Roster.GuildRoster? GuildRosterData { get; set; } = new();
    private Dictionary<int, CharacterSummary?> CharacterSummaries { get; set; } = new();

    protected override async Task OnInitializedAsync()
    {
        GuildRosterData = await BlizzardService.GetGuildRosterAsync();

        foreach (var member in GuildRosterData?.Members!)
        {
            if (!CharacterSummaries.ContainsKey(member.Character.Id))
            {
                CharacterSummaries.Add(member.Character.Id, await BlizzardService.GetCharacterSummaryAsync(member.Character.Name)!);
            }
        }
    }
}