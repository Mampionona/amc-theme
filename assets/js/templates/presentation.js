(function(w, d, undefined) {
  const setBackground = () => {
    d.querySelectorAll('.page-wrapper.has-background').forEach(page => {
      const background = page.querySelector('.background')
      background.style.backgroundImage = `url(${background.dataset.backgroundImage})`
      background.classList.add('fadeInUp', 'animated', 'delay-1s')
    })
  }

  setBackground()

  d.addEventListener('AWSSuccess', setBackground)
} (window, document))
