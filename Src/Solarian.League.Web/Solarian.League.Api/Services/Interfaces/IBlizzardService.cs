﻿using Microsoft.Extensions.Logging;
using Solarian.League.Common.Models.Wow.Guild.Achievement;
using Solarian.League.Common.Models.Wow.Guild.Activity;
using Solarian.League.Common.Models.Wow.Guild.Base;
using Solarian.League.Common.Models.Wow.Guild.Roster;

namespace Solarian.League.Api.Services.Interfaces;

public interface IBlizzardService
{
    public Task<GuildDetails?> GetGuildDetailsAsync();
    public Task<GuildRoster?> GetGuildRosterAsync();
    public Task<GuildActivity?> GetGuildActivityAsync();
    public Task<GuildAchievements?> GetGuildAchievementsAsync();
}