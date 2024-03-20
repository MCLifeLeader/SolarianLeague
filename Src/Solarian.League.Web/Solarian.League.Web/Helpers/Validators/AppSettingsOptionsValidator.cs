using FluentValidation;
using Solarian.League.Web.Models.ApplicationSettings;

namespace Solarian.League.Web.Helpers.Validators;

public class AppSettingsOptionsValidator : AbstractValidator<AppSettings>
{
    public AppSettingsOptionsValidator()
    {
        RuleFor(x => x.HttpClients.DiscordData.BaseUrl)
            .NotNull()
            .NotEmpty()
            .Must(e => e.Contains("https://"));

        RuleFor(x => x.HttpClients.DiscordData.TimeoutInSeconds)
            .InclusiveBetween(5, 120);

        RuleFor(x => x.HttpClients.DiscordData.CacheDurationInSeconds)
            .InclusiveBetween(5, 120);
    }
}