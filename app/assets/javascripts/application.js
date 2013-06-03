// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
jQuery.noConflict();
(function($) {
  $(function() {

  $('.img-thumb').click(function() {
  	var _this = $(this);
  	var imageId = _this.data('image-id');
  	var selectedImages = $('#selected_images').val();
  	$('#selected_images').val(selectedImages + imageId + '|');
  	_this.css('border','3px solid blue');
  })

  });
})(jQuery);

jQuery(function($) {
  // Slideshow
  $('.slide:gt(0)').hide();
  setInterval(function(){
    $('.home-slideshow img:first-of-type').hide().
    next('img').show().
    end().appendTo('.home-slideshow');
  }, 10000);
})

jQuery(function($) {
  $(".inside-slideshow > div:gt(0)").hide();
  setInterval(function() {
    $('.inside-slideshow > div:first')
      .fadeOut(500)
      .next()
      .fadeIn(500)
      .end()
      .appendTo('.inside-slideshow');
  }, 1500);
});
