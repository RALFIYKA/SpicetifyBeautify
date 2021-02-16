cd "$(spicetify -c | Split-Path)"
rm .\config.ini
echo y|spicetify restore backup
spicetify apply
Taskkill /IM spotify.exe /F
cd "$(spicetify -c | Split-Path)\Themes\DribbblishDynamic"
Copy-Item dribbblish-dynamic.js ..\..\Extensions
spicetify config extensions dribbblish-dynamic.js
spicetify config current_theme DribbblishDynamic color_scheme dark
spicetify config inject_css 1 replace_colors 1 overwrite_assets 1
spicetify apply
