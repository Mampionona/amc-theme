import 'owl.carousel'

$(function() {
  const init = () => {
    const owl = $('.logos-carousel')

    // const callback = () => (
    //   owl.find('.logo-item').height(owl.height())
    // )

    // owl.on({
    //   'initialized.owl.carousel': callback,
    //   'loaded.owl.lazy': callback
    // })

    owl.owlCarousel({
      items: 3,
      lazyLoad: true,
      responsive: {
        992: {
          items: 5
        }
      }
    })
  }

  init()

  document.addEventListener('AWSSuccess', init)
})
