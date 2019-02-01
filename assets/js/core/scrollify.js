import 'jquery-scrollify'

$(function() {
  const header = document.getElementById('header')
  const firstCurrentMenuItem = '.menu-niveau-2 .current-menu-item .menu-item'

  const clearCurrentClass = () => (
    document.querySelectorAll('.menu-niveau-2 [data-hash]').forEach(item => item.classList.remove('current'))
  )

  $.scrollify({
    section: '.scrollify',
    before (index, elements) {
      header.classList.add('out')
    },
    // A callback that is fired after a new section is scrolled to
    after (index, elements) {
      header.classList.remove('out')
      header.style.top = index === 0 ? 0 : `${window.pageYOffset}px`

      const id = elements[index][0]['id']

      if (id.length > 0) {
        const current = document.querySelector(`.menu-niveau-2 [data-hash=${id}]`)

        if (current) {
          clearCurrentClass()
          current.classList.add('current')
        }
      }

      document.querySelectorAll('.page-wrapper.has-background').forEach(page => {
        const hash = window.location.hash.replace(/#/, '')
        page.classList.remove('in')
        if (page.id == hash) {
          page.classList.add('in')
        }
      })
    },
    // A callback that is fired after the window is resized.
    afterResize() {
      clearCurrentClass()
      const first_item = document.querySelector(firstCurrentMenuItem)
      if (first_item) {
        first_item.classList.add('current')
      }
      header.style.top = `${window.pageYOffset}px`
    },
    // A callback that is fired after Scrollify's initialisation.
    afterRender () {
      clearCurrentClass()
      const first_item = document.querySelector(firstCurrentMenuItem)
      if (first_item) {
        first_item.classList.add('current')
      }
    }
  })

  // The update method recalculates the heights and positions of the panels.
  const updateScrollify = () => ($.scrollify.update());

  window.addEventListener('resize', updateScrollify)
  
  document.addEventListener('AWSSuccess', () => {
    updateScrollify()
    clearCurrentClass()

    header.style.top = 0

    const current_menu_item = document.querySelector('.menu-niveau-2 .current-menu-item')
    const first = current_menu_item.querySelector('.menu-item')
    if (first) {
      first.classList.add('current')
    }
  })

  // activation ancre menu niveau 2
  $('.menu-niveau-2 [data-hash] a').on('click', function(e) {
    e.preventDefault()
    const hash = /(#[a-z0-9\-]+)$/.exec(this.href)
    if (hash) {
      $.scrollify.move(hash[1])
    }
  })

  $(document).on('click', '.scroll-down', () => $.scrollify.next())
})
