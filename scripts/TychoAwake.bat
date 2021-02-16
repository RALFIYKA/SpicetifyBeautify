cd "$(spicetify -c | Split-Path)";
rm .\config.ini;
echo y|spicetify restore backup
spicetify apply
Taskkill /IM spotify.exe /F
spicetify config  current_theme TychoAwake
spicetify apply
