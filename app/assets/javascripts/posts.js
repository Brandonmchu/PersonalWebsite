$(document).ready(function(){

  $bannerImg = $('img')

  function zoomIn(){
    $bannerImg.animate({
      width: '+=300',
      }, 50000,'linear');
    $bannerImg.promise().done(zoomOut);
  }

  function zoomOut(){
    $bannerImg.animate({
      width: '-=300',
      }, 50000,'linear');
    $bannerImg.promise().done(zoomIn);
  }

  zoomIn();


});
