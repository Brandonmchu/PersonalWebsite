$(document).ready(function(){

  var $container = $('.card-container');

  $container.imagesLoaded( function(){
    $container.masonry({
      itemSelector : '.post-card'
    });
  });

});

