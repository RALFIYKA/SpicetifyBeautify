const { shell } = require('electron');
const os = require('os');
const username = os.userInfo().username;
window.$ = window.jQuery = require('jquery');
// On installtion (after spicetify) copy config ini  and use it like backup
// Themes are actually ZIP from github

function sendForm(form) {
    let fullOutput = $(form).serialize();
    let themeName = fullOutput.slice(fullOutput.search('=') + 1);
    return fileOpen(themeName);
}

function fileOpen(themeName) {
    shell.openExternal("C:/tools/Spicetify-themes-app/res/" + themeName + ".png")
};