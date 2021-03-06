jQuery(document).ready(function (jQuery) {
  window.onload = function () {
    Particles.init({
      selector: '.background',
      maxParticles: 200,
      color: '#FFFFFF'
    });
  };

  ScrollReveal().reveal('.scroll__short', {
    delay: 300
  });
  ScrollReveal().reveal('.scroll__left', {
    delay: 500
  });
  ScrollReveal().reveal('.scroll__right', {
    delay: 700
  });
});
