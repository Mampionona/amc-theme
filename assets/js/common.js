(function(w, d, undefined) {
  d.addEventListener('AWSSuccess', () => {
    const wpcf7_form = document.querySelectorAll('.wpcf7-form')
    wpcf7_form.forEach(form => wpcf7.initForm(form))
  })
} (window, document))
