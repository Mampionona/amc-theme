import 'owl.carousel'

$(function() {
  const carousel = () => (
    $('.logos-carousel').owlCarousel({
      items: 3,
      lazyLoad: true,
      responsive: {
        992: {
          items: 5
        }
      }
    })
  )

  document.addEventListener('AWSSuccess', carousel)
})
