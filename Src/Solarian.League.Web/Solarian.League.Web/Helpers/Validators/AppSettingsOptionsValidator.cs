using FluentValidation;
using Solarian.League.Web.Models.ApplicationSettings;

namespace Solarian.League.Web.Helpers.Validators;

public class AppSettingsOptionsValidator : AbstractValidator<AppSettings>
{
    public AppSettingsOptionsValidator()
    {
        RuleFor(x => x.HttpClients.DiscordClient.BaseUrl)
            .NotNull()
            .NotEmpty()
            .Must(e => e.Contains("https://"));

        RuleFor(x => x.HttpClients.DiscordClient.TimeoutInSeconds)
            .InclusiveBetween(5, 120);

        RuleFor(x => x.HttpClients.DiscordClient.CacheDurationInSeconds)
            .InclusiveBetween(5, 120);

        RuleFor(x => x.HttpClients.BlizzardWrapperClient.BaseUrl)
            .NotNull()
            .NotEmpty()
            .Must(e => e.Contains("http://") || e.Contains("https://"));

        RuleFor(x => x.HttpClients.BlizzardWrapperClient.TimeoutInSeconds)
            .InclusiveBetween(5, 120);

        RuleFor(x => x.HttpClients.BlizzardWrapperClient.CacheDurationInSeconds)
            .InclusiveBetween(5, 120);
    }
}