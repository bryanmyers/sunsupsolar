#this code was js code in the application.js code but due to how rails loads pages from turbolinks would not trigger on page load.  We found a simple fix using js.coffee which is why it is here.

#this feeds the jumbotron image cycler
$(document).ready ->
 $('.slideshow').cycle fx: 'fade', fit: true, height: 'auto', width: 'auto'
$(document).on "page:change", ->
  $('.slideshow').cycle fx: 'fade', fit: true, height: 'auto', width: 'auto'