// Scroll Animations
(function (w, d, undefined) {
  const isScrolledIntoView = element => {
    const doc_view_top = w.pageYOffset
    const doc_view_bottom = doc_view_top + window.innerHeight
    const elem_top = element.offsetTop
    const elem_bottom = elem_top + element.offsetHeight

    return (elem_bottom <= doc_view_bottom) && (elem_top >= doc_view_top)
  }

  const handleScroll = animated => {
    if (isScrolledIntoView(animated)) {
      const { classList, dataset } = animated
      classList.add('animated', dataset.animate)
    }
  }

  const animate = () => (
    d.querySelectorAll('.scroll-animations [data-animate]:not(.animated)').forEach(handleScroll)
  )

  animate()

  // If element is scrolled into view, fade it in
  w.addEventListener('scroll', animate)
} (window, document))
