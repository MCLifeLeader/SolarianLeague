using FluentValidation;
using Solarian.League.Api.Models.ApplicationSettings;

namespace Solarian.League.Api.Helpers.Validators;

public class AppSettingsOptionsValidator : AbstractValidator<AppSettings>
{
    public AppSettingsOptionsValidator()
    {
        RuleFor(x => x.HttpClients.BlizzardClient.BaseUrl)
            .NotNull()
            .NotEmpty()
            .Must(e => e.Contains("https://"));

        RuleFor(x => x.HttpClients.BlizzardClient.TimeoutInSeconds)
            .InclusiveBetween(5, 120);

        RuleFor(x => x.HttpClients.BlizzardClient.CacheDurationInSeconds)
            .InclusiveBetween(5, 120);
    }
}