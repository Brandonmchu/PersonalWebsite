$(document).ready(function(){

  var $container = $('.card-container');

  $container.imagesLoaded( function(){
    $container.masonry({
      itemSelector : '.post-card'
    });
  });

  //background-zoom
  // $('.hero-container').animate({
  //   'background-size': "200%"
  // }, 100000, 'linear');

  $PostCard = $('.post-card')
  //hoverstate
  $PostCard.mouseenter(function(){
    $(this).find(".overlay").css("opacity","0.2");
    $(this).find("h1").css("text-shadow","-1px 0 1px #333, 0 1px 1px #333, 1px 0 1px #333, 0 -1px 1px #333");
    $(this).find("h2").css("text-shadow","-1px 0 1px #333, 0 1px 1px #333, 1px 0 1px #333, 0 -1px 1px #333");
  });

  $PostCard.mouseleave(function(){
    $(this).find(".overlay").css("opacity","0.6");
    $(this).find("h1").css("text-shadow","none");
    $(this).find("h2").css("text-shadow","none");
  });


  $heroImage = $('.hero-inner img');

  //spaceman
  function voyage(){
    $heroImage.animate({
    top: '+=210',
    left: '+=150'
    }, 10000,'linear', function(){
        $(this).animate({
        top: '-=210',
        left: '+=190'
      }, 12000,'easeOutQuint', function(){
          $(this).animate({
          top: '+=210',
          left: '+=90'
        }, 8000,'easeOutElastic', returnVoyage);
      });
    });

  }

  function returnVoyage(){
    $heroImage.animate({
    top: '-=210',
    left: '-=90'
    }, 10000,'easeInOutExpo', function(){
      $(this).animate({
      top: '+=210',
      left: '-=190'
      }, 12000,'easeInCirc', function(){
        $(this).animate({
        top: '-=210',
        left: '-=150'
        }, 8000,'linear',voyage);
      });
    });
  }
  voyage();
  //end spaceman
});

