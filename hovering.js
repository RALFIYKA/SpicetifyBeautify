var a = document.querySelectorAll('.btn');

//перебираем все найденные элементы и вешаем на них события
[].forEach.call(a, function (el) {
    //вешаем событие
    el.onclick = function (e) {
        //производим действия
        alert('Hello');
    }
});