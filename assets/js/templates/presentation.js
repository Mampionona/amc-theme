(function(w, d, undefined) {
  const setBackground = () => {
    d.querySelectorAll('.page-wrapper.has-background').forEach(page => {
      const { style, dataset } = page.querySelector('.background');
      style.backgroundImage = `url(${dataset.backgroundImage})`;
      style.height = `${w.innerHeight}px`;
    });
  };

  setBackground();

  d.addEventListener('AWSSuccess', setBackground);
  w.addEventListener('resize', setBackground);
} (window, document));
