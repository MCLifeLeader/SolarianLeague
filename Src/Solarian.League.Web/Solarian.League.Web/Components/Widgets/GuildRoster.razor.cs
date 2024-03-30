using Microsoft.AspNetCore.Components;
using Solarian.League.Common.Models.Wow.Character.Media;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Web.Helpers.Extensions;
using Solarian.League.Web.Services.Interfaces;
using System.Threading.Tasks;

namespace Solarian.League.Web.Components.Widgets;

public partial class GuildRoster
{
    [Inject]
    private IBlizzardService BlizzardService { get; set; } = default!;

    private Common.Models.Wow.Guild.Roster.GuildRoster? GuildRosterData { get; set; } = new();
    private Dictionary<int, CharacterSummary?> CharacterSummaries { get; set; } = new();
    private Dictionary<int, CharacterMedia?> CharacterMedias { get; set; } = new();

    protected override async Task OnInitializedAsync()
    {
        GuildRosterData = await BlizzardService.GetGuildRosterAsync();

        Dictionary<int, Task<CharacterMedia>> tasks = new();

        foreach (var member in GuildRosterData?.Members!)
        {
            tasks.Add(member.Character.Id, BlizzardService.GetCharacterMediaAsync(member.Character.Name.ToLower())!);
        }

        await Task.WhenAll(tasks.Values);

        foreach (var task in tasks)
        {
            CharacterMedias.Add(task.Key, task.Value.Result);
        }

        foreach (var characterMedia in CharacterMedias)
        {
            Console.WriteLine($"Id:{characterMedia.Key} - Img:{characterMedia.Value?.ToJson()}");
        }
    }
}