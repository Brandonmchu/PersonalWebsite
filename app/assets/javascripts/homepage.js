$(document).ready(function(){

  var $container = $('.card-container');

  $container.imagesLoaded( function(){
    $container.masonry({
      itemSelector : '.post-card'
    });
  });

  //hoverstate
  $('.post-card').mouseenter(function(){
    jQuery(this).find(".overlay").css("opacity","0.2");
    jQuery(this).find("h1").css("text-shadow","-1px 0 1px #333, 0 1px 1px #333, 1px 0 1px #333, 0 -1px 1px #333");
    jQuery(this).find("h2").css("text-shadow","-1px 0 1px #333, 0 1px 1px #333, 1px 0 1px #333, 0 -1px 1px #333");
  });

  $('.post-card').mouseleave(function(){
    jQuery(this).find(".overlay").css("opacity","0.6");
    jQuery(this).find("h1").css("text-shadow","none");
    jQuery(this).find("h2").css("text-shadow","none");
  });

  //spaceman
  function voyage(){
    $('.hero-inner img').animate({
    top: '+=100',
    left: '+=80'
    }, 10000,'linear', function(){
        $(this).animate({
        top: '-=100',
        left: '+=180'
      }, 12000,'linear', function(){
          $(this).animate({
          top: '-=100',
          left: '-=90'
        }, 8000,'linear', returnVoyage());
      });
    });

  }

  function returnVoyage(){
    $('.hero-inner img').animate({
    top: '+=100',
    left: '+=90'
    }, 10000,'linear', function(){
      $(this).animate({
      top: '+=100',
      left: '-=180'
      }, 12000,'linear', function(){
        $(this).animate({
        top: '-=100',
        left: '-=80'
        }, 8000,'linear',voyage());
      });
    });
  }
  voyage();
  //end spaceman
});

