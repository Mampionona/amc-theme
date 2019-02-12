import 'jquery-scrollify';

(function(w, d, undefined) {
  const MENU = {
    1: d.querySelector('.menu-niveau-1'),
    2: d.querySelector('.menu-niveau-2')
  };
  const navbar_toggler = d.querySelector('.navbar-toggler');
  const body = d.body;
  const current_class = 'current-menu-item';

  w.addEventListener('DOMContentLoaded', () => (
    MENU[2].classList.add('in')
  ));

  // Update menu menu_level_ 2
  const menuItem = item => {
    if (!item.className.includes(current_class)) {
      return;
    }    

    const regex = /menu\-item\-([0-9]+)/;
    const result = regex.exec(item.className);
    if (result) {
      const current_item = result[0];

      const old_item = MENU[2].querySelector('.current-menu-item');
      if (old_item) {
        old_item.classList.remove(current_class, 'current_page_item');
      }

      MENU[2].querySelector(`.nav > .${current_item}`).classList.add(current_class, 'current_page_item');
      setTimeout(() => MENU[2].classList.add('in'), 600);
    }
  };

  // Update menu level2 after AWS Success
  d.addEventListener('AWSSuccess', () => {
    d.querySelector('.navbar-toggler').classList.remove('out');
    MENU[2].classList.remove('in');
    MENU[1].classList.remove('in');
    MENU[1].querySelectorAll('.nav > .menu-item').forEach(menuItem);
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
    
    menu.querySelectorAll('a').forEach(({ parentNode }) => parentNode.classList.remove(current_class));

    const link1 = menu.querySelector(`[href*="${pathname + hash}"]`);
    const link2 = menu.querySelector(`[href$="${pathname}"]`);
    
    if (link1) {
      link1.parentNode.classList.add(current_class);
    } else if (link2) {
      link2.parentNode.classList.add(current_class);
    }
  };

  // mettre à jour le menu responsive après ajax
  d.addEventListener('AWSSuccess', highlightActiveLink);

  // afficher menu mobile
  navbar_toggler.addEventListener('click', () => {
    // desactiver scrollify
    if (w.innerWidth < 1200) {
      $.scrollify.disable();
    }

    body.classList.add('menu-in');

    highlightActiveLink();
  });

  // fermer le menu
  d.querySelector('.close-menu').addEventListener('click', () => {
    body.classList.remove('menu-in');
    navbar_toggler.classList.remove('out');
    $.scrollify.enable();
    $.scrollify.update();
  });

  w.addEventListener('resize', function () {
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
