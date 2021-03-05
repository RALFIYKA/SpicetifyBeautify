@powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
@powershell -NoProfile -ExecutionPolicy Bypass -Command "choco install git -y
@powershell -NoProfile -ExecutionPolicy Bypass -Command "choco install spicetify-cli -y;
@powershell Expand-Archive -Force -Path "$(Get-Location)\Themes.zip" -DestinationPath "$(spicetify -c | Split-Path)\Themes\"