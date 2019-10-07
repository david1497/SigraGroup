// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require('jquery')
// require("jquery-ui/ui/effects/effect-slide");

// if you remove this scrollspy will die!
window.$ = window.jQuery = require('jquery');
window.Popper = require('popper.js').default; // pay attention to "default"

import 'bootstrap'

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
})



import './agency.js'
import './jssor.slider-27.5.0.min.js'

// Activate scrollspy to add active class to navbar items on scroll
// $('body').scrollspy({
//   target: '#mainNav',
//   offset: 56
// });

// // Collapse Navbar
// var navbarCollapse = function() {
//   if ($("#mainNav").offset().top > 100) {
//     $("#mainNav").addClass("navbar-shrink");
//   } else {
//     $("#mainNav").removeClass("navbar-shrink");
//   }
// };
// // Collapse now if page is not at top
// navbarCollapse();
// // Collapse the navbar when page is scrolled
// $(window).scroll(navbarCollapse);