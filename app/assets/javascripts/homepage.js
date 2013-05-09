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

  $('.post-card').mouseleave(function(){
    $(this).find(".overlay").css("opacity","0.6");
    $(this).find("h1").css("text-shadow","none");
    $(this).find("h2").css("text-shadow","none");
  });


  $heroImage = $('.hero-inner img');

  //spaceman
  function voyage(){
    $heroImage.animate({
    top: '+=60',
    left: '+=80'
    }, 10000,'linear', function(){
        $(this).animate({
        top: '-=60',
        left: '+=180'
      }, 12000,'linear', function(){
          $(this).animate({
          top: '+=60',
          left: '+=90'
        }, 8000,'linear', returnVoyage);
      });
    });

  }

  function returnVoyage(){
    $heroImage.animate({
    top: '-=60',
    left: '-=90'
    }, 10000,'linear', function(){
      $(this).animate({
      top: '+=60',
      left: '-=180'
      }, 12000,'linear', function(){
        $(this).animate({
        top: '-=60',
        left: '-=80'
        }, 8000,'linear',voyage);
      });
    });
  }
  voyage();
  //end spaceman
});

