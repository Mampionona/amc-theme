import 'jquery-scrollify';

$(function() {
  const w = window;
  const d = document;
  const header = d.getElementById('header');
  const navbar_toggler = d.querySelector('.navbar-toggler');

  const clearCurrentClass = () => (
    d.querySelectorAll('.menu-niveau-2 [data-hash]').forEach(item => item.classList.remove('current'))
  );
  const updateScrollifyAfterImagesLoaded = () => {
    const images = d.querySelectorAll('img[class^="wp-image"]');
    const len = images.length;
    let counter = 0;

    function incrementCounter() {
      counter++;

      if (counter === len) {
        $.scrollify.update();
        console.log('all images are loaded!');
      }
    }

    images.forEach(img => {
      const image = new Image();
      image.onload = incrementCounter;
      image.src = img.src;
    });
  };

  $.scrollify({
    offset: 0,
    section: '.scrollify',
    before () {
      header.classList.add('out');
      navbar_toggler.classList.add('out');
    },
    // A callback that is fired after a new section is scrolled to
    after (index, elements) {
      const section = elements[index][0];
      const id = section.id;
      const current = d.querySelector(`.menu-niveau-2 [data-hash=${id}]`);

      header.classList.remove('out');
      navbar_toggler.classList.remove('out');
      // update logo & navbar-toggler position
      header.style.top = navbar_toggler.style.top = `${section.offsetTop}px`;

      if (w.innerWidth > 1199) {
        navbar_toggler.removeAttribute('style');
      }
      if (current) {
        clearCurrentClass();
        current.classList.add('current');
      }
      d.querySelectorAll('.page-wrapper.has-background').forEach(page => page.classList.remove('in'));
      section.classList.add('in');
      updateScrollifyAfterImagesLoaded();
    },
    // A callback that is fired after the w is resized.
    afterResize() {
      clearCurrentClass();

      $.scrollify.update();

      const current = $.scrollify.current();
      if (current) {
        setTimeout(() => {
          // destructuration
          const {
            id,
            offsetTop: top
          } = current[0];

          // update logo and navbar-toggler position
          header.style.top = `${top}px`;

          if (w.innerWidth < 1200) {
            navbar_toggler.style.top = `${top}px`;
          } else {
            navbar_toggler.removeAttribute('style');
          }

          // move to current section
          $.scrollify.move(`#${id}`);

          // update menu level 2
          const section = d.querySelector(`.menu-niveau-2 [data-hash="${id}"]`);
          if (section) {
            section.classList.add('current');
          }
        }, 1200);
      }
    },
    // A callback that is fired after Scrollify's initialisation.
    afterRender () {
      clearCurrentClass();
      const first_item = d.querySelector('.menu-niveau-2 .current-menu-item .menu-item');
      if (first_item) {
        first_item.classList.add('current');
      }

      updateScrollifyAfterImagesLoaded();
    }
  });
  
  d.addEventListener('AWSSuccess', () => {
    if ($.scrollify.isDisabled()) {
      $.scrollify.enable();
    }

    $.scrollify.update();
    $.scrollify.instantMove(0);

    header.style.top = 0;
    navbar_toggler.style.top = 0;

    if (w.innerWidth > 1199) {
      navbar_toggler.removeAttribute('style');
    }

    clearCurrentClass();
    const first_menu_item = d.querySelector('.menu-niveau-2 .current-menu-item .menu-item');
    if (first_menu_item) {
      first_menu_item.classList.add('current');
    }
    updateScrollifyAfterImagesLoaded();
    d.querySelector('.page-wrapper').classList.add('in');
  });

  // activation ancre menu niveau 2
  $('.menu-niveau-2 [data-hash] a').on('click', function(e) {
    e.preventDefault();
    const hash = /(#[a-z0-9\-]+)$/.exec(this.href);
    if (hash) {
      $.scrollify.move(hash[1]);
    }
  });

  $(d).on('click', '.scroll-down', () => $.scrollify.next());
});
