$(document).ready(function(){


  var $container = $('.card-container');

  $container.imagesLoaded( function(){
    $container.masonry({
      itemSelector : '.post-card'
    });
  });

  $("#homepagecontainer").fadeIn(500);
  $('.hero-post-left').fadeIn(500);
  $('.hero-post-right').fadeIn(500, function(){
  $('.post-body').slideDown(500);
  $('.post-body-quote').slideDown(500);
  $('#footer-container').fadeIn(100);
    });
  $('.post-card').fadeIn(5000);

  var heroheight = $('.hero-post-left').height();
  console.log(heroheight);
  $('.hero-post-right img').css({'height':(heroheight)+'px'});


  //hoverstate
  $PostCard = $('.post-card');

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



});

