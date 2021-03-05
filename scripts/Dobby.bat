@powershell rm $(spicetify -c) >nul
echo y|spicetify restore backup >nul
spicetify apply >nul
spicetify config current_theme Dobby >nul
spicetify apply >nul