@powershell rm $(spicetify -c)
echo y|spicetify restore backup
spicetify apply
spicetify config current_theme Kaapi
spicetify apply