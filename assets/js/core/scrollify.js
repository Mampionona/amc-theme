import 'jquery-scrollify'

$(function() {
  const header = document.getElementById('header')

  const clearCurrentClass = () => (
    document.querySelectorAll('.menu-niveau-2 [data-hash]').forEach(item => item.classList.remove('current'))
  )

  $.scrollify({
    section: '.scrollify',
    before (index, elements) {
      header.classList.add('out')
    },
    after (index, elements) {
      header.classList.remove('out')      

      const id = window.location.hash.replace(/#/, '')
      const current = document.querySelector(`.menu-niveau-2 [data-hash=${id}]`)

      if (current) {
        clearCurrentClass()
        current.classList.add('current')
      }
    },
    afterRender () {
      clearCurrentClass()
      const first_item = document.querySelector('.menu-niveau-2 .current-menu-item .menu-item')
      if (first_item) {
        first_item.classList.add('current')
      }
    }
  })

  const updateScrollify = () => $.scrollify.update();

  window.addEventListener('resize', updateScrollify)
  
  document.addEventListener('AWSSuccess', () => {
    updateScrollify()
    clearCurrentClass()
    const first_item = document.querySelector('.menu-niveau-2 .current-menu-item .menu-item')
    if (first_item) {
      first_item.classList.add('current')
    }
  })

  $('.menu-niveau-2 [data-hash] a').on('click', function(e) {
    e.preventDefault()
    const hash = /(#[a-z0-9\-]+)$/.exec(this.href)
    if (hash) {
      $.scrollify.move(hash[1])
    }
  })
})
