import 'owl.carousel'
import 'jquery-scrollify'

$(function() {
  const init = () => {
    const owl = $('.histoire-carousel');

    const titles = $('.histoire-carousel-wrap .header').children();

    const callback = ({ page: { index } }) => {
      const animation = 'fadeInRight'
      if (index == -1) {
        index = 0
      }
      titles
        .css('opacity', 0)
        .removeClass(animation)
        .eq(index).css('opacity', 1)
        .addClass(animation)
    }

    const fullWidth = item => {
      const window_width = $(window).width()

      let current_styles = item.getAttribute('style')
      if ('undefined' !== typeof current_styles && current_styles) {
        // supprime les propriétés CSS left et width
        current_styles = current_styles.replace(/(left|width):\s?\-?\d+(px|%|vh|rem);/gi, '')
        item.setAttribute('style', current_styles)
      }

      // boxé pour les écrans > 500px
      if (window_width > 500) {
        return
      }

      $(item).css({
        left: ($(item).width() - window_width) / 2,
        width: window_width
      })
    }

    const resizeCarousel = () => (
      document.querySelectorAll('.full-width').forEach(fullWidth)
    )

    resizeCarousel()

    $(window).on('resize', resizeCarousel)

    owl.on({
      'initialized.owl.carousel': (event) => {
        callback(event)        
        $.scrollify.update()
        const current = $.scrollify.current()
        $.scrollify.move(0)
        if (current) {
          setTimeout(() => {
            $.scrollify.move(`#${current[0]['id']}`)
            // document.getElementById('loader').classList.remove('in')
          }, 600)
        }
      },
      'translated.owl.carousel': callback
    })

    owl.owlCarousel({
      autoplay: true,
      dotsContainer: '#dates',
      items: 1,
      lazyLoad: true,
      loop: true,
      smartSpeed: 1000
    })

    $('.owl-dot').on('click', function () {
      owl.trigger('to.owl.carousel', [$(this).index(), 300]);
    })
  }

  init()

  document.addEventListener('AWSSuccess', init)
})
