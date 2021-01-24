let vars = document.getElementsByTagName('a')

vars.onclick = function (event) {
    let target = event.target; // где был клик?

    if (target.tagName != 'a') return; // не на TD? тогда не интересует
    if (target.tagName != 'img') return;
    if (target.tagName != 'button') return;

    alert('hey');
};