cp -Path "$(Get-Location)\themes\*" -Destination "$(spicetify -c | Split-Path)\Themes\" -Recurse
@powershell -NoProfile -ExecutionPolicy Bypass -Command "Expand-Archive -Force -Path "$(Get-Location)\Themes.zip" -DestinationPath "$(spicetify -c | Split-Path)\Themes\"";
