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
$(document).ready(function(){

  $('.jumbotron').bgswitcher({
    images: ['assets/grass.jpg', 'assets/holding_sun.jpg', 'assets/panels.jpg', 'assets/home.jpg', 'assets/sun.jpg'],
    interval: 3000,
  });
  $(window).on('resize', function(){
    $("#picture-frame").css("top", $(".jumbotron").css("top"));
  });

});

//use my custom switcher

  // $('#t3').show();

  // var counter = 0;

  // function toggle(){

  //   $('#my_testimonials_panel p').hide();

  //   if(counter %3 == 0){
  //     $('#my_testimonials_panel #t1').fadeIn(1000);
  //   }
  //   else if(counter %3 == 1){
  //     $('#my_testimonials_panel #t2').fadeIn(1000);
  //   }
  //   else if(counter %3 == 2){
  //     $('#my_testimonials_panel #t3').fadeIn(1000);
  //   }
  //   counter ++;
  // }

  // setInterval(toggle, 3000);
