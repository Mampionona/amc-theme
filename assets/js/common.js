import { fireAfterImagesLoad } from './utils';
import 'jquery-scrollify';

(function($, w, d, undefined) {
  const header = d.getElementById('header');
  const navbar_toggler = d.querySelector('.navbar-toggler');
  const hideLoader = () => d.getElementById('loader').classList.remove('in');
  const clearCurrentClass = () => (
    d.querySelectorAll('.menu-niveau-2 [data-hash]').forEach(item => item.classList.remove('current'))
  );

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
    // updateScrollifyAfterImagesLoaded();
    d.querySelector('.page-wrapper').classList.add('in');

    const wpcf7_form = document.querySelectorAll('.wpcf7-form');
    wpcf7_form.forEach(form => wpcf7.initForm(form));

    if (!d.body.className.includes('home')) {
      d.getElementById('ajax-content').style.backgroundImage = 'none';
    }

    hideLoader();

    // Google invisible recaptcha
    if ('function' === typeof renderGoogleInvisibleRecaptchaFront) {
      renderGoogleInvisibleRecaptchaFront();
    }
  });
  
  const update = () => $.scrollify.update();
  
  // cf7 DOM events
  d.addEventListener('wpcf7invalid', update);
  d.addEventListener('wpcf7spam', update);
  d.addEventListener('wpcf7mailsent', update);
  d.addEventListener('wpcf7mailfailed ', update);
  d.addEventListener('wpcf7submit', update);

  d.addEventListener('scrollify.after', () => {
    fireAfterImagesLoad('img[class^="wp-image"]', update);
  });

  d.addEventListener('scrollify.after.render', () => {
    fireAfterImagesLoad('img[class^="wp-image"]', update);
  });

  d.addEventListener('scrollify.after.resize', () => {
    update();
  });

  $(d).on('click', '.scroll-down', () => $.scrollify.next());
} ($, window, document));
