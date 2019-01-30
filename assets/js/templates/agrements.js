import 'owl.carousel'

$(function() {
  $('.logos-carousel').owlCarousel({
    items: 3,
    lazyLoad: true,
    responsive: {
      992: {
        items: 5
      }
    }
  })
})
