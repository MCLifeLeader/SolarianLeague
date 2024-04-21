# Define the environment variables
$BASE_URL = $args[0]
$API_KEY = $args[1]

# Load the appsettings.json file
$appSettings = Get-Content -Path .\Src\Solarian.League.Web\Solarian.League.Web\wwwroot\appsettings.json -Raw

# Use -replace to replace the placeholders in appsettings.json
$appSettings = $appSettings -replace "http://localhost:7138/", $BASE_URL
$appSettings = $appSettings -replace "zzyzzx", $API_KEY

# Write the updated appsettings.json back to the file
$appSettings | Set-Content -Path .\Src\Solarian.League.Web\Solarian.League.Web\wwwroot\appsettings.json