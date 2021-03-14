echo y|@powershell -NoProfile -ExecutionPolicy Bypass -Command "[System.Net.WebRequest]::DefaultWebProxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
echo y|@powershell -NoProfile -ExecutionPolicy Bypass -Command "choco install spicetify-cli -y;
powershell.exe -ExecutionPolicy Unrestricted -Command ". '.\a.ps1'"
TIMEOUT /T 10
