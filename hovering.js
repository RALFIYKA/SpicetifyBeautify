const { shell } = require('electron');
const remote = require('electron').remote;
// const app = remote.app;
const fileButton = document.getElementById('fileButton');

(function ($) {
    $.fn.toJson = function (options) {
        let settings = $.extend({
            stringify: false
        }, options);
        let json = {};
        $.each(this.serializeArray(), function () {
            let name = this.name.replace(/[^\w\s]/gi, '');
            if (name in json) {
                if (!json[name].push)
                    json[name] = [json[name]];
                json[name].push(this.value || '');
            } else
                json[name] = this.value || '';
        });
        if (settings.stringify)
            return JSON.stringify(json);
        else
            return json;
    };
})(jQuery);


$('#fileButton').click(function () {
    if (shell.openItem(app.getPath("downloads") + "ege26.doc")) {
        ipcRenderer.send('app-quit', '');
    }
});

// let myFile = null


// fileButton.ondragover = fileButton.ondragend = fileButton.ondragleave = () => {
//     return false;
// };

// fileButton.ondrop = (event) => {
//     console.log(event.dataTransfer.files)
//     myFile = event.dataTransfer.files[0].path;
//     shell.openItem(myFile)
//     return false;
// }

// window.onload = function () {

//     //получаем идентификатор элемента
//     var a = document.getElementById('switch');

//     //вешаем на него событие
//     a.onclick = function () {
//         //производим какие-то действия
//         if (this.innerHTML == 'On') this.innerHTML = 'Off';
//         else this.innerHTML = 'On';
//         //предотвращаем переход по ссылке href
//         return false;
//     }
// }

// var a = document.querySelectorAll('.btn');

// //перебираем все найденные элементы и вешаем на них события
// [].forEach.call(a, function (el) {
//     //вешаем событие
//     el.onclick = function (e) {
//         //производим действия
//         var runnableScript = exec('C:\\Users\\Someone\\Documents\\testfile.bat)',
//             (error, stdout, stderr) => {
//                 console.log(stdout);
//                 console.log(stderr);
//                 if (error !== null) {
//                     console.log(`exec error: ${error}`);
//                 }
//             });
//     }
// });