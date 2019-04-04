(function(w, d, undefined) {
  function showOrHideMenu() {
    if (window.innerWidth < 1200) {
      d.body.classList.remove('menu-in');
    } else {
      d.body.classList.add('menu-in');
    }
  }
  if (d.body.classList.contains('home')) {
    const main = d.getElementById('ajax-content');
    if (main) {
      main.style.backgroundImage = `url('${main.dataset.backgroundImage}')`;
    }

    showOrHideMenu();
    w.addEventListener('resize', showOrHideMenu);
  }
} (window, document));
