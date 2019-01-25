import 'owl.carousel';

$(function() {
  const owl = $('.histoire-carousel').owlCarousel({
    autoplay: true,
    dotsContainer: '#dates',
    items: 1,
    loop: true,
    smartSpeed: 1000
  })

  $('.owl-dot').on('click', function () {
    owl.trigger('to.owl.carousel', [$(this).index(), 300]);
  })
})
