import 'jquery-scrollify';

(function(w, d, undefined) {
  const menu_level_2 = d.querySelector('.menu-niveau-2');
  const menu_level_1 = d.querySelector('.menu-niveau-1');
  const navbar_toggler = d.querySelector('.navbar-toggler');
  const body = d.body;

  w.addEventListener('DOMContentLoaded', () => (
    menu_level_2.classList.add('in')
  ));

  // Update menu menu_level_ 2
  const menuItem = item => {
    if (!item.className.includes('current-menu-item')) {
      return;
    }    

    const regex = /menu\-item\-([0-9]+)/;
    const result = regex.exec(item.className);
    if (result) {
      const current_item = result[0];

      const old_item = menu_level_2.querySelector('.current-menu-item');
      if (old_item) {
        old_item.classList.remove('current-menu-item', 'current_page_item');
      }

      menu_level_2.querySelector(`.nav > .${current_item}`).classList.add('current-menu-item', 'current_page_item');
      setTimeout(() => menu_level_2.classList.add('in'), 600);
    }
  };

  // Update menu level2 after AWS Success
  d.addEventListener('AWSSuccess', () => {
    d.querySelector('.navbar-toggler').classList.remove('out');
    menu_level_2.classList.remove('in');
    menu_level_1.classList.remove('in');
    menu_level_1.querySelectorAll('.nav > .menu-item').forEach(menuItem);
  });

  // défiler ou ouvrir une nouvelle page
  d.querySelectorAll('.menu-responsive a').forEach(link => {
    link.addEventListener('click', function (e) {
      if (this.href.match(/#[a-z0-9\-]+/)) {        
        // raha mitovy ny pathname-n'ilay lien sy window
        if (w.location.href.includes(this.pathname)) {
          e.preventDefault();
          const hash = /(#[a-z0-9\-]+)/.exec(this.href);

          if (hash) {
            d.body.classList.remove('menu-in');
            d.querySelector('.navbar-toggler').classList.remove('out');

            $.scrollify.enable();
            $.scrollify.move(hash[1]);
          }          
        }
      }
    });
  });

  // mettre en surbrillance le menu actif
  const menu = d.getElementById('menu-responsive');

  // Mettre en surbrillance le lien actif
  const highlightActiveLink = () => {
    const { pathname, hash } = w.location;
    
    menu.querySelectorAll('a').forEach(({ parentNode }) => parentNode.classList.remove('current-menu-item'));

    const link1 = menu.querySelector(`[href*="${pathname + hash}"]`);
    const link2 = menu.querySelector(`[href$="${pathname}"]`);
    
    if (link1) {
      link1.parentNode.classList.add('current-menu-item');
    } else if (link2) {
      link2.parentNode.classList.add('current-menu-item');
    }
  };

  // mettre à jour le menu responsive après ajax
  d.addEventListener('AWSSuccess', highlightActiveLink);

  // afficher menu mobile
  navbar_toggler.addEventListener('click', function () {
    if (w.innerWidth < 1200) {
      $.scrollify.disable();
    }

    body.classList.add('menu-in');

    highlightActiveLink();
  });

  // fermer le menu
  document.querySelector('.close-menu').addEventListener('click', () => {
    body.classList.remove('menu-in');
    navbar_toggler.classList.remove('out');
    $.scrollify.enable();
    $.scrollify.update();
  });

  window.addEventListener('resize', function () {
    $.scrollify.update();
    if (this.innerWidth > 1199) {
      navbar_toggler.removeAttribute('style');

      if ($.scrollify.isDisabled()) {
        $.scrollify.enable();
      }
    }

    const current = $.scrollify.current();
    if (current) {
      header.style.top = navbar_toggler.style.top = `${current[0].offsetTop}px`;
    }
  });
} (window, document));
