$(document).ready(function(){


  var $container = $('.card-container');

  $container.imagesLoaded( function(){
    $container.masonry({
      itemSelector : '.post-card'
    });
  });

  $PostCard = $('.post-card');
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


  var heroheight = $('.hero-post-left').height();
  console.log(heroheight);
  $('.hero-post-right img').css({'height':(heroheight)+'px'});

});

