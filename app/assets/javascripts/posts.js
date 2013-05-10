$(document).ready(function(){

  $bannerImg = $('img');

  function zoomIn(){
    $bannerImg.animate({
      width: '+=300',
      }, 200000,'easeOutBack');
    $bannerImg.promise().done(zoomOut);
  }

  function zoomOut(){
    $bannerImg.animate({
      width: '-=300',
      }, 200000,'easeInOutQuad');
    $bannerImg.promise().done(zoomIn);
  }

  zoomIn();


});
