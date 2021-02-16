@powershell rm $(spicetify -c)
echo y|spicetify restore backup
spicetify apply
spicetify config color_scheme 1
spicetify config current_theme Adapta-Nokto
spicetify apply
