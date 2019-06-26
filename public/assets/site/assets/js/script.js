(function ($) {
    'use strict';

    // Preloader js    
    $(window).on('load', function () {
        $('.preloader').fadeOut(700);
    });

})(jQuery);

$(document).ready(function() {

    $('.info-carousel').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:9000,
      smartSpeed:3000,
      autoplayHoverPause:true,
      responsiveClass: true,
      dots:false,
      responsive: {
        0: {
          items: 1,
          nav: true
        },
        600: {
          items: 2,
          nav: false
        },
        1000: {
          items: 3,
          nav: true,
          loop: true,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {

    $('.gallery-carousel').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:11000,
      smartSpeed:2000,
      autoplayHoverPause:true,
      responsiveClass: true,
      dots:false,
      responsive: {
        0: {
          items: 1,
          nav: true
        },
        600: {
          items: 1,
          nav: false
        },
        1000: {
          items: 1,
          nav: true,
          loop: true,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {

    $('.gallery-carousel2').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:13000,
      smartSpeed:2000,
      autoplayHoverPause:true,
      responsiveClass: true,
      dots:false,
      responsive: {
        0: {
          items: 1,
          nav: true
        },
        600: {
          items: 1,
          nav: false
        },
        1000: {
          items: 1,
          nav: true,
          loop: true,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {

    $('.gallery-carousel3').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:15000,
      smartSpeed:2000,
      autoplayHoverPause:true,
      responsiveClass: true,
      dots:false,
      responsive: {
        0: {
          items: 1,
          nav: true
        },
        600: {
          items: 1,
          nav: false
        },
        1000: {
          items: 1,
          nav: true,
          loop: true,
          margin: 10
        }
      }
    })
  })