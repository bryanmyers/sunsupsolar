// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

//use background switcher
// $(document).ready(function(){

//   $('.jumbotron').bgswitcher({
//     images: ['assets/grass.jpg', 'assets/holding_sun.jpg', 'assets/panels.jpg', 'assets/home.jpg', 'assets/sun.jpg'],
//     interval: 3000,
//   });
//   $(window).on('resize', function(){
//     $("#picture-frame").css("top", $(".jumbotron").css("top"));
//   });

// });

//use my custom switcher

// $(document).ready(function(){

//   $('#jumbotron1').hide();
//   $('#jumbotron2').hide();
//   $('#jumbotron3').hide();
//   $('#jumbotron4').hide();
//   $('#jumbotron5').show();

//   var current_jumbotron = '#jumbotron5';

//   var counter = 0;

//   function toggle(){

//     if(counter %5 == 0){
//       $('#jumbotron1').fadeIn(1000);
//     }
//     else if(counter %5 == 1){
//       $('#jumbotron2').fadeIn(1000);
//     }
//     else if(counter %5 == 2){
//       $('#jumbotron3').fadeIn(1000);
//     }
//     else if(counter %5 == 3){
//       $('#jumbotron4').fadeIn(1000);
//     }
//     else if(counter %5 == 4){
//       $('#jumbotron5').fadeIn(1000);
//     }
//     $(current_jumbotron).hide();

//     console.log(counter);
//     console.log(current_jumbotron);
//     counter ++;
//   }

//   setInterval(toggle, 6000);
// });

$(document).ready(function() {
    $('.slideshow').cycle({
    fx: 'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...
    fit: true,
    height: 'auto',
    width: 'auto'
  });
});