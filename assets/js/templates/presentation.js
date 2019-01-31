(function(w, d, undefined) {
  const setBackground = () => {
    d.querySelectorAll('.page-wrapper.has-background').forEach(page => {
      const background = page.querySelector('.background')
      background.style.backgroundImage = `url(${background.dataset.backgroundImage})`
      background.style.height = `${w.innerHeight}px`
    })
  }

  setBackground()

  d.addEventListener('AWSSuccess', setBackground)
  w.addEventListener('resize', setBackground)
} (window, document))
