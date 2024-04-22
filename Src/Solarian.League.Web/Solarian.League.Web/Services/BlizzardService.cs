using Solarian.League.Common.Models.Wow.Character.Media;
using Solarian.League.Common.Models.Wow.Character.ProfileSummary;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Detail;
using Solarian.League.Common.Models.Wow.Guild.Roster;
using Solarian.League.Web.Repository.Http.Blizzard;
using Solarian.League.Web.Services.Interfaces;

namespace Solarian.League.Web.Services;

public class BlizzardService : IBlizzardService
{
    private readonly IBlizzardWrapperRepository _blizzardRepository;

    // ReSharper disable once ConvertToPrimaryConstructor
    public BlizzardService(IBlizzardWrapperRepository blizzardRepository)
    {
        _blizzardRepository = blizzardRepository;
    }

    public async Task<GuildDetails?> GetGuildDetailsAsync()
    {
        try
        {
            return await _blizzardRepository.GetGuildDetailsAsync();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }

        return null;
    }

    public async Task<GuildRoster?> GetGuildRosterAsync()
    {
        try
        {
            return await _blizzardRepository.GetGuildRosterAsync();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }

        return null;
    }

    public async Task<GuildActivity?> GetGuildActivityAsync()
    {
        try
        {
            return await _blizzardRepository.GetGuildActivityAsync();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }

        return null;
    }

    public async Task<GuildAchievements?> GetGuildAchievementsAsync()
    {
        try
        {
            return await _blizzardRepository.GetGuildAchievementsAsync();
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }

        return null;
    }

    public async Task<CharacterSummary?> GetCharacterSummaryAsync(string characterName)
    {
        try
        {
            return await _blizzardRepository.GetCharacterSummaryAsync(characterName);
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }

        return null;
    }

    public async Task<CharacterMedia?> GetCharacterMediaAsync(string characterName)
    {
        try
        {
            return await _blizzardRepository.GetCharacterMediaAsync(characterName);
        }
        catch (Exception e)
        {
            Console.WriteLine(e);
        }

        return null;
    }
}