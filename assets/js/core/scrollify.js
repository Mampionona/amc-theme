import 'jquery-scrollify'

$(function() {
  const header = document.getElementById('header')
  const firstCurrentMenuItem = '.menu-niveau-2 .current-menu-item .menu-item'
  const navbar_toggler = document.querySelector('.navbar-toggler')
  const body = document.body

  const clearCurrentClass = () => (
    document.querySelectorAll('.menu-niveau-2 [data-hash]').forEach(item => item.classList.remove('current'))
  )

  $.scrollify({
    section: '.scrollify',
    before (index, elements) {
      header.classList.add('out')
      navbar_toggler.classList.add('out')
    },
    // A callback that is fired after a new section is scrolled to
    after (index, elements) {
      header.classList.remove('out')
      navbar_toggler.classList.remove('out')

      const section = elements[index][0]

      // update logo & navbar-toggler position
      header.style.top = navbar_toggler.style.top = `${section.offsetTop}px`

      if (window.innerWidth > 1199) {
        navbar_toggler.removeAttribute('style')
      }

      const id = section.id

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
  
  document.addEventListener('AWSSuccess', () => {
    if ($.scrollify.isDisabled()) {
      $.scrollify.enable()
    }

    $.scrollify.update()
    $.scrollify.instantMove(0)
    clearCurrentClass()

    header.style.top = 0
    navbar_toggler.style.top = 0

    if (window.innerWidth > 1199) {
      navbar_toggler.removeAttribute('style')
    }

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
