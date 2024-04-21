using Microsoft.AspNetCore.Components;
using Solarian.League.Common.Models.Wow.Character.Media;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Web.Helpers.Extensions;
using Solarian.League.Web.Helpers.State;
using Solarian.League.Web.Models.ApplicationSettings;
using Solarian.League.Web.Services;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Components.Widgets;

public partial class GuildRoster
{
    [Inject]
    private IBlizzardService BlizzardService { get; set; } = default!;
    [Inject]
    public ApplicationData? ApplicationData { get; set; }
    [Inject]
    public AppSettings? AppSettings { get; set; }
    public string ErrorMessage { get; set; } = string.Empty;

    private Common.Models.Wow.Guild.Roster.GuildRoster? GuildRosterData { get; set; } = new();
    private Dictionary<int, CharacterSummary?> CharacterSummaries { get; set; } = new();
    private Dictionary<int, CharacterMedia?> CharacterMedias { get; set; } = new();

    protected override async Task OnInitializedAsync()
    {
        await RefreshDataAsync();
        await base.OnInitializedAsync();
    }

    private async Task RefreshDataAsync()
    {
        try
        {
            if (ApplicationData!.ActiveGuildRoster.RosterWidgetLastUpdated <= DateTime.UtcNow)
            {
                GuildRosterData = await BlizzardService.GetGuildRosterAsync();

                Dictionary<int, Task<CharacterMedia>> mediaTasks = new();
                Dictionary<int, Task<CharacterSummary>> summaryTasks = new();
                foreach (var member in GuildRosterData?.Members!)
                {
                    mediaTasks.Add(member.Character.Id, BlizzardService.GetCharacterMediaAsync(member.Character.Name.ToLower())!);
                    summaryTasks.Add(member.Character.Id, BlizzardService.GetCharacterSummaryAsync(member.Character.Name.ToLower())!);
                }

                await Task.WhenAll(mediaTasks.Values);
                await Task.WhenAll(summaryTasks.Values);

                foreach (var task in mediaTasks)
                {
                    CharacterMedias.Add(task.Key, task.Value.Result);
                }

                foreach (var task in summaryTasks)
                {
                    CharacterSummaries.Add(task.Key, task.Value.Result);
                }

                ApplicationData!.ActiveGuildRoster.RosterWidgetLastUpdated =
                    DateTime.UtcNow.AddSeconds(AppSettings!.HttpClients!.BlizzardWrapperClient!.CacheDurationInSeconds);

                ApplicationData.ActiveGuildRoster.RosterWidgetData = GuildRosterData;
                ApplicationData.ActiveGuildRoster.CharacterMedias = CharacterMedias;
                ApplicationData.ActiveGuildRoster.CharacterSummaries = CharacterSummaries;
            }
            else
            {
                GuildRosterData = ApplicationData.ActiveGuildRoster.RosterWidgetData;
                CharacterMedias = ApplicationData.ActiveGuildRoster.CharacterMedias;
                CharacterSummaries = ApplicationData.ActiveGuildRoster.CharacterSummaries;
            }
        }
        catch (Exception ex)
        {
            ErrorMessage = ex.ToString();
        }
    }
}