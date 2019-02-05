(function(w, d, undefined) {
  d.addEventListener('AWSSuccess', () => {
    const wpcf7_form = document.querySelectorAll('.wpcf7-form')
    wpcf7_form.forEach(form => wpcf7.initForm(form))

    if (!d.body.className.includes('home')) {
      d.getElementById('ajax-content').style.backgroundImage = 'none'
    }
  })
} (window, document))
