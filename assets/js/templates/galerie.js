import 'owl.carousel';
import 'jquery-scrollify';
import Hammer from 'hammerjs';

const directions = [2, 4];

$(function() {
  const init = () => {
    const owl = $('.histoire-carousel');
    const titles = $('.galerie-carousel-wrap .header').children();
    const callback = ({ page: { index } }) => {
      const animation = 'fadeInRight';
      if (index == -1) {
        index = 0;
      }
      titles
        .css('opacity', 0)
        .removeClass(animation)
        .eq(index).css('opacity', 1)
        .addClass(animation);
    };
    const fullWidth = item => {
      const window_width = $(window).width();
      let current_styles = item.getAttribute('style');
      if ('undefined' !== typeof current_styles && current_styles) {
        // supprime les propriétés CSS left et width
        current_styles = current_styles.replace(/(left|width):\s?\-?\d+(px|%|vh|rem);/gi, '');
        item.setAttribute('style', current_styles);
      }

      // boxé pour les écrans > 500px
      if (window_width > 500) {
        return;
      }

      $(item).css({
        left: ($(item).width() - window_width) / 2,
        width: window_width
      });
    };

    // make dates clickable
    const hammer = () => {
      const swipeable = (element) => {
        const manager = new Hammer.Manager(element);
        const swipe = new Hammer.Swipe();
        let deltaX = 0;
        const get_scrollable_width = () => {
          let scrollable_width = 0;
          for (let child of element.children) {
            scrollable_width += child.offsetWidth;
          }
          return scrollable_width;
        };

        manager.add(swipe);
        manager.on('swipe', e => {
          deltaX = deltaX + e.deltaX;
          const direction = e.offsetDirection;
          let translate3d = 'translate3d(0, 0, 0)';
          const scrollable_width = get_scrollable_width();

          if (directions.includes(direction) && (scrollable_width > element.offsetWidth)) {
            if (deltaX > 0)
              deltaX = 0;
            if (deltaX <= element.offsetWidth - scrollable_width)
              deltaX = element.offsetWidth - scrollable_width;
            translate3d = `translate3d(${deltaX}px, 0, 0)`;
          }
          element.style.transform = translate3d;
        });

        window.addEventListener('resize', () => {
          const scrollable_width = get_scrollable_width();
          if (element.offsetWidth > scrollable_width) {
            element.style.transform = 'translate3d(0, 0, 0)';
          }
        });
      };

      document.querySelectorAll('.swipeable').forEach(swipeable);
    };

    const resizeCarousel = () => (
      document.querySelectorAll('.full-width').forEach(fullWidth)
    );

    resizeCarousel();

    $(window).on('resize', resizeCarousel);

    owl.owlCarousel({
      autoplay: true,
      autoplayTimeout: 20000,
      dotsContainer: '.step-dots',
      items: 1,
      lazyLoad: true,
      loop: true,
      smartSpeed: 1000,
      onInitialized (event) {
        document.querySelectorAll('.step-dots').forEach(dots_container => {
          if (dots_container.querySelector('.bullet')) {
            dots_container.classList.add('justify-content-center');
          }
        });

        callback(event);

        setTimeout(() => {
          $.scrollify.update();
          const current = $.scrollify.current();

          if (current) {
            const current_section = current[0];
            const top = current_section.offsetTop;
            document.getElementById('header').style.top = `${top}px`;
            if (window.innerWidth <= 500) {
              document.querySelector('.navbar-toggler').style.top = `${top}px`;
            }
          }
        }, 600);

        hammer();

        // console.log(event.target);
        // var current = event.item.index;
        // var src = $(event.target).find(".owl-item").eq(current).find("img").height();
        // console.log('Image current is ' + src);
      },
      onTranslated (event) {
        callback(event);
      },
      onLoadedLazy (event) {
        // owl-lazy
        // console.log('loaded')
        // const item = event.item.index;
        // console.log(item);
      }
    });

    $('.owl-dot').on('click', function () {
      owl.trigger('to.owl.carousel', [$(this).index(), 300]);
    });
  };

  init();

  document.addEventListener('AWSSuccess', init);
});
