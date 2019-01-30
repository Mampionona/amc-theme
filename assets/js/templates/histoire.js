import 'owl.carousel';

$(function() {
  const init = () => {
    const owl = $('.histoire-carousel');

    const header = $('.histoire-carousel-wrap .header');

    const callback = ({ page: { index } }) => {
      if (index == -1) {
        index = 0
      }
      header.children().css('opacity', 0)
      header.children().eq(index).css('opacity', 1)
    }

    owl.on({
      'initialized.owl.carousel': callback,
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
