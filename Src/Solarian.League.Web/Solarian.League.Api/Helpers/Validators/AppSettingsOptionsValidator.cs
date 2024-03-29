using FluentValidation;
using Solarian.League.Api.Models.ApplicationSettings;

namespace Solarian.League.Api.Helpers.Validators;

public class AppSettingsOptionsValidator : AbstractValidator<AppSettings>
{
    public AppSettingsOptionsValidator()
    {
        RuleFor(x => x!.MaxHttpTimeoutSeconds)
            .InclusiveBetween(10, 600)
            .WithMessage("Invalid range value, must be between 10 and 600");

        RuleFor(x => x!.HttpClients!.BlizzardClient!.BaseUrl)
            .NotNull()
            .NotEmpty()
            .Must(e => e!.Contains("https://"))
            .WithMessage("All external url references must be https.");

        // ToDo: Figure out how to import and bind Environment Settings prior to validation
        //RuleFor(x => x!.HttpClients!.BlizzardClient!.ClientId)
        //    .NotNull()
        //    .NotEmpty()
        //    .Must(e => e!.Contains("YOUR_CLIENT") == false)
        //    .WithMessage("Replace the default value with your client Id");

        // ToDo: Figure out how to import and bind Environment Settings prior to validation
        //RuleFor(x => x!.HttpClients!.BlizzardClient!.ClientSecret)
        //    .NotNull()
        //    .NotEmpty()
        //    .Must(e => e!.Contains("YOUR_SECRET") == false)
        //    .WithMessage("Replace the default value with your client Secret");

        RuleFor(x => x!.HttpClients!.BlizzardClient!.TimeoutInSeconds)
            .InclusiveBetween(10, 120)
            .WithMessage("Invalid range value, must be between 10 and 120");
    }
}