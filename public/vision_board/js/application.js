jQuery(function($) {
  // Slideshow
  $('.slide:gt(0)').hide();
  setInterval(function(){
    $('.home-slideshow img:first-of-type').hide().
    next('img').show().
    end().appendTo('.home-slideshow');
  }, 10000);
})