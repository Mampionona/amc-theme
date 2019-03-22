(function(w, d, undefined) {
  if (d.body.classList.contains('home')) {
    const main = d.getElementById('ajax-content');
    if (main) {
      main.style.backgroundImage = `url('${main.dataset.backgroundImage}')`;
    }

    d.body.classList.add('menu-in');
  }
} (window, document));
