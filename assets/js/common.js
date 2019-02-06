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
 
  // mettre à jour scrollify pour l'evenement cf7 wpcf7submit
  d.addEventListener('wpcf7submit', () => $.scrollify.update())
} (window, document))
