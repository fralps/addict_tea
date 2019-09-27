// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
// -------------- Homepage template -------------
//
//= require jquery/jquery.min
//= require bootstrap/js/bootstrap.bundle.min
//= require jquery-easing/jquery.easing.min
//= require js/stylish-portfolio.min
//
// -------------- Dashboard template -------------
//
//= require dashboard/jquery/jquery.min
//= require dashboard/bootstrap/js/bootstrap.bundle.min
//= require dashboard/jquery-easing/jquery.easing.min
//= require dashboard/js/sb-admin-2.min
//= require dashboard/chart.js/Chart.min
//= require dashboard/js/demo/chart-area-demo
//= require dashboard/js/demo/chart-pie-demo
//
//
//= require rails-ujs
//= require activestorage
//= require_tree .

// -------------- Personal JS ---------------

$(document).ready(function() {
	// Make an element disappear after a short time
	$('.delay_fadeout').delay(2750).fadeOut(400); 
});