﻿using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Base;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Api.Repository.Http.Blizzard.Interfaces;

public interface IBlizzardRepository
{
    public Task<GuildDetails> GetGuildDetailsAsync();
    public Task<GuildRoster?> GetGuildRosterAsync();
    public Task<GuildActivity?> GetGuildActivityAsync();
    public Task<GuildAchievements?> GetGuildAchievementsAsync();
}