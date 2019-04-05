/**
 * 
 * @param {String} eventName 
 */
export function fire(eventName, data = {}) {
  const event = new CustomEvent(eventName, {
    detail: data
  });
	document.dispatchEvent(event);
}

/**
 * 
 * @param {CSS selector} images 
 * @param {Function} callbackFn 
 */
export function fireAfterImagesLoad(selector, callbackFn) {
  const images = document.querySelectorAll(selector);
  const len = images.length;
  let counter = 0;

  function incrementCounter() {
    counter++;

    if (counter === len) {
      if (callbackFn) callbackFn();
      console.log('all images are loaded!');
    }
  }

  [].forEach.call(images, (img) => {
    const image = new Image();
    let src = img.src;
    image.onload = incrementCounter;
    if (src.indexOf('amc.test') != -1) {
      src = img.src.replace(/\/amc\//, '/');
    }
    image.src = src;
  });
}

export function clearCurrentClass () {
  document.querySelectorAll('.menu-niveau-2 [data-hash]')
    .forEach(item => item.classList.remove('current'));
}
