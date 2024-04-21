#!/bin/bash

# Define the environment variables
BASE_URL=$1
API_KEY=$2

# Use sed to replace the placeholders in appsettings.json
sed -i "s|http://localhost:7138/|$BASE_URL|g" Src/Solarian.League.Web/Solarian.League.Web/wwwroot/appsettings.json
sed -i "s|zzyzzx|$API_KEY|g" Src/Solarian.League.Web/Solarian.League.Web/wwwroot/appsettings.json