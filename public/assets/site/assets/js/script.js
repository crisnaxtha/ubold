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

$(document).ready(function() {

    $('.popup-carousel').owlCarousel({
      loop: true,
      margin: 10,
      autoplay:true,
      autoplayTimeout:5000,
      smartSpeed:1000,
      autoplayHoverPause:true,
      responsiveClass: true,
      dots:false,
      nav:false,
      responsive: {
        0: {
          items: 1,
          nav: false
        },
        600: {
          items: 1,
          nav: false
        },
        1000: {
          items: 1,
          nav: false,
          loop: true,
          margin: 10
        }
      }
    })
  })

$(document).ready(function() {
    $('.src-drop').click(function() {
      $('.src-drop-menu').slideToggle("slow");
    });
  });



// Galery Lightbox Code By: Bikash Bhandari (bikash.433@gmail.com)
// Gallery image hover
$( ".img-wrapper" ).hover(
  function() {
    $(this).find(".img-overlay").animate({opacity: 1}, 600);
  }, function() {
    $(this).find(".img-overlay").animate({opacity: 0}, 600);
  }
);

// Lightbox
var $overlay = $('<div id="overlay"></div>');
var $image = $("<img>");
var $prevButton = $('<div id="prevButton"><i class="fa fa-chevron-left"></i></div>');
var $nextButton = $('<div id="nextButton"><i class="fa fa-chevron-right"></i></div>');
var $exitButton = $('<div id="exitButton"><i class="fa fa-times"></i></div>');

// Add overlay
$overlay.append($image).prepend($prevButton).append($nextButton).append($exitButton);
$("#gallery").append($overlay);

// Hide overlay on default
$overlay.hide();

// When an image is clicked
$(".img-overlay").click(function(event) {
  // Prevents default behavior
  event.preventDefault();
  // Adds href attribute to variable
  var imageLocation = $(this).prev().attr("href");
  // Add the image src to $image
  $image.attr("src", imageLocation);
  // Fade in the overlay
  $overlay.fadeIn("slow");
});

// When the overlay is clicked
$overlay.click(function() {
  // Fade out the overlay
  $(this).fadeOut("slow");
});

// When next button is clicked
$nextButton.click(function(event) {
  // Hide the current image
  $("#overlay img").hide();
  // Overlay image location
  var $currentImgSrc = $("#overlay img").attr("src");
  // Image with matching location of the overlay image
  var $currentImg = $('#image-gallery img[src="' + $currentImgSrc + '"]');
  // Finds the next image
  var $nextImg = $($currentImg.closest(".image").next().find("img"));
  // All of the images in the gallery
  var $images = $("#image-gallery img");
  // If there is a next image
  if ($nextImg.length > 0) {
    // Fade in the next image
    $("#overlay img").attr("src", $nextImg.attr("src")).fadeIn(800);
  } else {
    // Otherwise fade in the first image
    $("#overlay img").attr("src", $($images[0]).attr("src")).fadeIn(800);
  }
  // Prevents overlay from being hidden
  event.stopPropagation();
});

// When previous button is clicked
$prevButton.click(function(event) {
  // Hide the current image
  $("#overlay img").hide();
  // Overlay image location
  var $currentImgSrc = $("#overlay img").attr("src");
  // Image with matching location of the overlay image
  var $currentImg = $('#image-gallery img[src="' + $currentImgSrc + '"]');
  // Finds the next image
  var $nextImg = $($currentImg.closest(".image").prev().find("img"));
  // Fade in the next image
  $("#overlay img").attr("src", $nextImg.attr("src")).fadeIn(800);
  // Prevents overlay from being hidden
  event.stopPropagation();
});

// When the exit button is clicked
$exitButton.click(function() {
  // Fade out the overlay
  $("#overlay").fadeOut("slow");
});








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

// $(document).ready(function() {
// // $(window).scroll(function() {
//     // var top = $('#sidebar').offset().top - parseFloat($('#sidebar').css('marginTop').replace(/auto/, 0));
//     // var footTop = $('#footer').offset().top - parseFloat($('#footer').css('marginTop').replace(/auto/, 0));

//     var maxY = footTop - $('#sidebar').outerHeight();

//     $(window).scroll(function(evt) {
//         var y = $(this).scrollTop();
//         if (y > top) {

// //Quand scroll, ajoute une classe ".fixed" et supprime le Css existant
//             if (y < maxY) {
//                 $('#sidebar').addClass('fixed').removeAttr('style');
//             } else {

// //Quand la sidebar arrive au footer, supprime la classe "fixed" précèdement ajouté
//                 $('#sidebar').removeClass('fixed').css({
//                     position: 'absolute',
//                     top: (maxY - top) + 'px'
//                 });
//             }
//         } else {
//             $('#sidebar').removeClass('fixed');
//         }
//     });
// });





// $( function() {
//   $( "#datepicker" ).datepicker({
//     dateFormat: "dd-mm-yy"
//     , duration: "fast"
//   });
// } );


(function() {

  'use strict';

  // define variables
  var items = document.querySelectorAll(".timeline li");

  // check if an element is in viewport
  // http://stackoverflow.com/questions/123999/how-to-tell-if-a-dom-element-is-visible-in-the-current-viewport
  function isElementInViewport(el) {
    var rect = el.getBoundingClientRect();
    return (
      rect.top >= 0 &&
      rect.left >= 0 &&
      rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
      rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );
  }

  function callbackFunc() {
    for (var i = 0; i < items.length; i++) {
      if (isElementInViewport(items[i])) {
        items[i].classList.add("in-view");
      }
    }
  }

  // listen for events
  window.addEventListener("load", callbackFunc);
  window.addEventListener("resize", callbackFunc);
  window.addEventListener("scroll", callbackFunc);

})();
