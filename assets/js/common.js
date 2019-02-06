(function(w, d, undefined) {
  const hideLoader = () => d.getElementById('loader').classList.remove('in')

  d.addEventListener('AWSSuccess', () => {
    const wpcf7_form = document.querySelectorAll('.wpcf7-form')
    wpcf7_form.forEach(form => wpcf7.initForm(form))

    if (!d.body.className.includes('home')) {
      d.getElementById('ajax-content').style.backgroundImage = 'none'
    }

    hideLoader()

    // Google invisible recaptcha
    if ('function' === typeof renderGoogleInvisibleRecaptchaFront) {
      renderGoogleInvisibleRecaptchaFront()
    }
  })

  const update = () => $.scrollify.update()
 
  // cf7 DOM events
  d.addEventListener('wpcf7invalid', update)
  d.addEventListener('wpcf7spam', update)
  d.addEventListener('wpcf7mailsent', update)
  d.addEventListener('wpcf7mailfailed ', update)
  d.addEventListener('wpcf7submit', update)
} (window, document))
