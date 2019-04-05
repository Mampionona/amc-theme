import 'jquery-scrollify';

(function($, w, d, undefined) {
  const header = d.getElementById('header');
  const navbar_toggler = d.querySelector('.navbar-toggler');

  d.addEventListener('scrollify.before', () => {
    header.classList.add('out');
    navbar_toggler.classList.add('out');
  });

  d.addEventListener('scrollify.after', (e) => {
    const { index, elements } = e.detail;
    const section = elements[index][0];

    header.classList.remove('out');
    navbar_toggler.classList.remove('out');
    header.style.top = `${section.offsetTop}px`;
    navbar_toggler.style.top = `${section.offsetTop}px`;

    if (w.innerWidth > 1199) {
      navbar_toggler.removeAttribute('style');
    }
  });

  d.addEventListener('scrollify.after.resize', () => {
    if ($.scrollify.current()) {
      const current = $.scrollify.current();

      setTimeout(() => {
        header.style.top = `${current[0].offsetTop}px`;

        if (w.innerWidth < 1200) {
          navbar_toggler.style.top = `${current[0].offsetTop}px`;
        } else {
          navbar_toggler.removeAttribute('style');
        }
      }, 1200);
    }
  });
} ($, window, document));
