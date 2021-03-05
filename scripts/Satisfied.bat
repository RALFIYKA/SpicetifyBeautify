@powershell rm $(spicetify -c)
echo y|spicetify restore backup
spicetify apply
@powershell -NoProfile -ExecutionPolicy Bypass -Command "cd $(spicetify -c | Split-Path); cd Themes\DribbblishDynamic\; cp dribbblish-dynamic.js ..\..\Extensions"
spicetify config extensions dribbblish-dynamic.js
spicetify config current_theme Satisfied color_scheme dark
spicetify apply