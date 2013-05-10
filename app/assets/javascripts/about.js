$(document).ready(function(){

  var viewportWidth  = $(window).width();
  var viewportHeight = $(window).height();

  $("h1").css("padding-top", (viewportHeight-150)/2+'px');

  $(document).scrollsnap({
      snaps: '.hero-banner',
      proximity: viewportHeight/2
    });

  $(document).scrollsnap({
      snaps: '.who',
      proximity: viewportHeight/2
    });

  $(document).scrollsnap({
      snaps: '.contact',
      proximity: viewportHeight/2
    });

});
// "'+(viewportHeight-60)/2+'px"
