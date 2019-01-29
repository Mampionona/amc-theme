import 'jquery-scrollify'

$(function() {
  $.scrollify({
    section: '.scrollify',
    interstitialSection : '#header, #footer',
    setHeights: false,
    /**
     * 
     * A callback that is fired after a new section is scrolled to. 
     * Arguments include the index of the section and an array of all section elements.
     */
    after (index, elements) {
      // declenchena ny animation
    }
  })
})
