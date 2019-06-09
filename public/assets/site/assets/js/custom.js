jQuery(document).ready(function($){"use strict";$('a[data-rel]').each(function(){$(this).attr('rel',$(this).data('rel'));$(".pretty-gallery a[rel^='prettyPhoto']").prettyPhoto();});if($('.gallery').length){$(".gallery:first a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'normal',theme:'light_square',slideshow:3000,autoplay_slideshow:true});$(".gallery:gt(0) a[rel^='prettyPhoto']").prettyPhoto({animation_speed:'fast',slideshow:10000,hideflash:true});}

if($('#cp_side-menu-btn, #cp-close-btn').length){$('#cp_side-menu-btn, #cp-close-btn').on('click',function(e){var $navigacia=$('body, #cp_side-menu'),val=$navigacia.css('right')==='410px'?'0px':'410px';$navigacia.animate({right:val},410)});}

//if($('#content-1').length){$("#content-1").mCustomScrollbar({horizontalScroll:false});$(".content.inner").mCustomScrollbar({scrollButtons:{enable:true}});}

if($('#highlight-fade').length){$('#highlight-fade').owlCarousel({loop:false,dots:true,nav:false,items:1,margin: 10,loop:true,autoplay:true,smartSpeed:7000,autoplayTimeout: 9000,animateOut: 'lightSpeedOut',animateIn: 'lightSpeedIn',URLhashListener:true,autoplayHoverPause:false,});}

//if($('#call-action-2').length){$('#call-action-2').owlCarousel({loop:false,dots:true,nav:false,items:1,autoplay:true,smartSpeed:7000,animateIn:'fadeIn',URLhashListener:true,autoplayHoverPause:false,});}

//if($('#blog-slider').length){$('#blog-slider').owlCarousel({loop:false,dots:false,nav:true,items:1,autoplay:true,smartSpeed:7000,URLhashListener:true,autoplayHoverPause:false,});}

//if($('#causes-slider').length){$('#causes-slider').owlCarousel({loop:false,dots:false,nav:true,items:1,autoplay:true,smartSpeed:1000,URLhashListener:true,autoplayHoverPause:false,});}

//if($('#department-slider').length){$('#department-slider').owlCarousel({loop:false,dots:false,nav:true,items:1,autoplay:true,smartSpeed:1000,URLhashListener:true,autoplayHoverPause:false,});}

if($('#services-slider').length){$('#services-slider').owlCarousel({loop:true,dots:false,nav:true,navText:'',items:0,smartSpeed:1000,padding:0,margin:30,responsiveClass:true,responsive:{0:{items:1,},768:{items:2,},992:{items:2,},1199:{items:4,}}});}

if($('.accordion_cp').length){$.fn.slideFadeToggle=function(speed,easing,callback){return this.animate({opacity:'toggle',height:'toggle'},speed,easing,callback);};$('.accordion_cp').accordion({defaultOpen:'section1',cookieName:'nav',speed:'slow',animateOpen:function(elem,opts){elem.next().stop(true,true).slideFadeToggle(opts.speed);},animateClose:function(elem,opts){elem.next().stop(true,true).slideFadeToggle(opts.speed);}});}
if($('.defaultCountdown').length){var austDay=new Date();austDay=new Date(austDay.getFullYear()+1,1-1,26);$('.defaultCountdown').countdown({until:austDay});$('#year').text(austDay.getFullYear());}
if($('#map_contact_1').length){var map;var myLatLng=new google.maps.LatLng(40.712784,-74.005941);var myOptions={zoom:12,center:myLatLng,zoomControl:true,scrollwheel:false,mapTypeId:google.maps.MapTypeId.ROADMAP,mapTypeControl:false,styles:[{stylers:[{hue:'#2b2b2b'},{saturation:-100,},{lightness:10}]}],}
map=new google.maps.Map(document.getElementById('map_contact_1'),myOptions);var marker=new google.maps.Marker({position:map.getCenter(),map:map,icon:'images/map-icon-2.png'});marker.getPosition();}});

//Accordion
    if ($('.accordion_cp').length) {
        $.fn.slideFadeToggle = function(speed, easing, callback) {
            return this.animate({
                opacity: 'toggle',
                height: 'toggle'
            }, speed, easing, callback);
        };
        $('.accordion_cp').accordion({
            defaultOpen: 'section1',
            cookieName: 'nav',
            speed: 'slow',
            animateOpen: function(elem, opts) { //replace the standard slideUp with custom function
                elem.next().stop(true, true).slideFadeToggle(opts.speed);
            },
            animateClose: function(elem, opts) { //replace the standard slideDown with custom function
                elem.next().stop(true, true).slideFadeToggle(opts.speed);
            }
        });
    }

$(document).ready(function() {
  $('.banner-carousel').owlCarousel({
	items: 1,
	loop: true,
	margin: 0,
	dots:false,
	autoplay: true,
	smartSpeed:2500,
	autoplayTimeout: 15000,
	autoplayHoverPause: true,
	responsiveClass: true,
	animateIn: 'fadeIn',
	animateOut: 'zoomOut',
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 1,
		nav: false
	  },
	  1000: {
		items: 1,
		nav: true,
		loop: true
	  }
	}
  })
})

$(document).ready(function() {
  $('.event-carousel').owlCarousel({
	items: 1,
	nav: true,
	loop: true,
	margin: 0,
	dots:false,
	autoplay: true,
	smartSpeed:1500,
	autoplayTimeout: 9000,
	autoplayHoverPause: true,
	responsiveClass: true,
	responsive: {
	  0: {
		items: 1
	  },
	  600: {
		items: 1,
		nav: false
	  },
	  1000: {
		items: 1,
		nav: true,
		loop: true
	  }
	}
  })
})