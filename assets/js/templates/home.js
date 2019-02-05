(function(w, d, undefined) {
  if (d.body.className.match(/home/)) {
    const main = d.getElementById('ajax-content')
    if (main) {
      const image = new Image()
      image.addEventListener('load', () => {
        main.style.backgroundImage = `url('${main.dataset.backgroundImage}')`
      })
      
      image.src = main.dataset.backgroundImage
    }
  }
} (window, document))
