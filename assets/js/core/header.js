//== Sticky menu en Vanilla : https://www.creativejuiz.fr/blog/tutoriels/creer-menu-sticky-avec-javascript-css
(function (w, d, undefined) {

    let body = d.getElementsByTagName('body')[0],
        header = d.getElementById('header'),
        stickHeader = function () {
            let wScrollTop = w.pageYOffset || body.scrollTop,
                regexp = /(header\-sticky)/i,
                classFound = header.className.match(regexp),
                scrollValue = header.offsetHeight;
            //console.log(wScrollTop);
            if (wScrollTop > scrollValue && !classFound) {
                header.classList.add('header-sticky');
            }

            // si le scroll est inférieur à 2 et
            if (wScrollTop < 2 && classFound) {
                header.classList.remove('header-sticky');
            }
        },
        onScrolling = function () {
            stickHeader();
        };

    // quand on scroll
    w.addEventListener('scroll', function () {
        // on exécute la fonction onScrolling()
        w.requestAnimationFrame(onScrolling);
    });

}(window, document));