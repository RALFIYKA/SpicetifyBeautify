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
};

function fileOpen(themeName) {
    shell.openExternal(process.cwd() + "/scripts/" + themeName + ".bat");
};

// let currentPage = 1;
// let nextPage = 1;
// function sendPage(page) {
//     let fullOutpu = $(page).serialize();
//     nextPage = fullOutput.slice(fullOutput.search('=') + 1); // int??
//     // $('hidden="true"').hide();
//     // $(document).on('click', '.item-title', function (e) {
//     //     e.preventDefault();
//     //     $(this).next('.item-content').toggle();
//     // });
//     var dynamicEl = document.getElementById('themePage' + currentPage);
//     dynamicEl.id = 'themePage' + nextPage;
//     currentPage = nextPage;
//     return false;
// };