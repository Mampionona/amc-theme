(function(w, d, undefined) {
  if (d.body.className.match(/home/)) {
    const main = d.getElementById('ajax-content')
    if (main) {
      main.style.backgroundImage = `url('${main.dataset.backgroundImage}')`
    }
  }
} (window, document))
