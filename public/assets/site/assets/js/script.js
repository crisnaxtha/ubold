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

$(document).ready(function() {
    $('.vdo-carousel').owlCarousel({
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
          items: 3,
          nav: true,
          loop: true,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {
    $('.info-carousel').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:14000,
      smartSpeed:1400,
      autoplayHoverPause:true,
      responsiveClass: true,
      nav: false,
      dots:false,
      responsive: {
        0: {
          items: 1,
        },
        600: {
          items: 1,
        },
        1000: {
          items: 3,
          dots:false,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {
    $('.info-carousel2').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:14000,
      smartSpeed:1400,
      autoplayHoverPause:true,
      responsiveClass: true,
      nav: false,
      dots:false,
      responsive: {
        0: {
          items: 1,
        },
        600: {
          items: 1,
        },
        1000: {
          items: 1,
          dots:false,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {
    $('.info-carousel3').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:14000,
      smartSpeed:1400,
      autoplayHoverPause:true,
      responsiveClass: true,
      nav: true,
      dots:false,
      responsive: {
        0: {
          items: 1,
        },
        600: {
          items: 1,
        },
        1000: {
          items: 1,
          dots:false,
          margin: 10
        }
      }
    })
  })

// ===== Scroll to Top ==== 
$(window).scroll(function() {
    if ($(this).scrollTop() >= 50) {        // If page is scrolled more than 50px
        $('#return-to-top').fadeIn(200);    // Fade in the arrow
    } else {
        $('#return-to-top').fadeOut(200);   // Else fade out the arrow
    }
});
$('#return-to-top').click(function() {      // When arrow is clicked
    $('body,html').animate({
        scrollTop : 0                       // Scroll to top of body
    }, 500);
});

$(window).scroll(function() {
    if ($(this).scrollTop() > 10){  
        $('.top_sec').addClass("sticky");
    }
    else{
        $('.top_sec').removeClass("sticky");
    }
});


$(window).scroll(function() {
  if ($(window).scrollTop() + $(window).height() > ($(document).height() - $("#footer").height())) {
    $("#sidebar").hide();
  } else {
    $("#sidebar").show();
  }

});
// side bar
$('#sidebar').affix({
  offset : {
    top : 100,
    bottom : 600
  }
})