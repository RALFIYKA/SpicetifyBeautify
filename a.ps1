Expand-Archive -Force "$(Get-Location)\themes.zip" -DestinationPath "$(spicetify -c | Split-Path)\Themes"
