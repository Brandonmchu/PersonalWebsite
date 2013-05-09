$(document).ready(function(){

  $bannerImg = $('.post-picture img')

  function zoomIn(){
    $bannerImg.animate({
      width: '+=500',
      }, 50000,'linear');
    $bannerImg.promise().done(zoomOut);
  }

  function zoomOut(){
    $bannerImg.animate({
      width: '-=500',
      }, 50000,'linear');
    $bannerImg.promise().done(zoomIn);
  }

  zoomIn();

});
