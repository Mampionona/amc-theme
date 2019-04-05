import 'jquery-scrollify';
import { clearCurrentClass, fire } from '../utils';

(function($, w, d, undefined) {
  $.scrollify({
    offset: 0,
    section: '.scrollify',
    before() {
      fire('scrollify.before');
    },
    // A callback that is fired after a new section is scrolled to
    after(index, elements) {
      fire('scrollify.after', { index, elements });
    },
    // A callback that is fired after the w is resized.
    afterResize() {
      clearCurrentClass();
      fire('scrollify.after.resize');
    },
    // A callback that is fired after Scrollify's initialisation.
    afterRender() {
      fire('scrollify.after.render');
    }
  });
} ($, window, document));
