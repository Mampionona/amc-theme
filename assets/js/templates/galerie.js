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

      // $.scrollify.update()
    }

    const resizeCarousel = () => {
      owl.removeAttr('style')

      if (window.innerWidth > 500) {
        return
      }

      owl.css({
        left: ((owl.width() - $(window).width()) / 2),
        width: $(window).width()
      })
    }

    resizeCarousel()

    $(window).on('resize', resizeCarousel)

    owl.on({
      'initialized.owl.carousel': (event) => {
        callback(event)        
        $.scrollify.update()
      },
      'translated.owl.carousel': callback
    })

    owl.owlCarousel({
      // autoplay: true,
      dotsContainer: '#dates',
      lazyLoadEager: 2,
      items: 1,
      lazyLoad: true,
      // loop: true,
      smartSpeed: 1000
    })

    $('.owl-dot').on('click', function () {
      owl.trigger('to.owl.carousel', [$(this).index(), 300]);
    })
  }

  init()

  document.addEventListener('AWSSuccess', init)
})
