const { shell } = require('electron');
const os = require('os');
const username = os.userInfo().username;
// On installtion (after spicetify) copy config ini  and use it like backup
// Themes are actually ZIP from github

function fileOpen(themeName) {
    shell.openExternal("C:/tools/Spicetify-themes-app/res/" + themeName + ".png")
};