$(document).ready(function(){

  var viewportWidth  = $(window).width();
  var viewportHeight = $(window).height();

  //setting variable heights and widths on page load

  var qw = $('.quarter').width();
  var whoInnerHeight = $('.who-inner').height();
  $('.quarter').css({'height':qw+'px'});
  $('.info').css({'height':qw+'px'});

  $("h1").css("padding-top", (viewportHeight-200)/2+'px');
  $(".who h1").css("padding-top", (viewportHeight-(200+whoInnerHeight))/2+'px');
  $(".b-type h1").css("padding-top", (viewportHeight-(200+qw))/2+'px');
  $(".icon-chevron-sign-down").css("left", viewportWidth/2-27.5+"px");
  $(".icon-chevron-sign-up").css("left", viewportWidth/2-27.5+"px");


  //snap to section

  $(document).scrollsnap({
      snaps: '.hero-banner',
      proximity: viewportHeight/2
    });

  $(document).scrollsnap({
      snaps: '.who',
      proximity: viewportHeight/2
    });

  $(document).scrollsnap({
      snaps: '.b-type',
      proximity: viewportHeight/2
    });

  $(document).scrollsnap({
      snaps: '.contact',
      proximity: viewportHeight/2
    });

  //scroll to page spot

  function scrollToAnchor(aid){
      var aTag = $("a[name='"+ aid +"']");
      $('html,body').animate({scrollTop: aTag.offset().top},'slow');
  }

  $('.hero-banner .icon-chevron-sign-down').click(function(){
    scrollToAnchor('who');
  });

  $('.who .icon-chevron-sign-down').click(function(){
    scrollToAnchor('b-type');
  });

  $('.b-type .icon-chevron-sign-down').click(function(){
    scrollToAnchor('contact');
  });

  $('.contact .icon-chevron-sign-up').click(function(){
    scrollToAnchor('hero');
  });

  //expand who-section

  function expandSilo(elem){
    var height = 200
    if ($(elem).css('height') > '0px')
    $(elem).animate({
      height: '0px',
      overflow: 'hidden'
    },200);
    else
    $(elem).animate({
      height: '+='+height+'px',
      overflow: 'auto'
    },200);
  }

  $('#pm').click(function(){
    expandSilo('.silo-inner-pm');
  })

  $('#fin').click(function(){
    expandSilo('.silo-inner-fin');
  })

  $('#code').click(function(){
    expandSilo('.silo-inner-code');
  })

  $('#space').click(function(){
    expandSilo('.silo-inner-space');
  })

  function bTypeWheel(){
    $('.info-inner-one p').

  }
});
// "'+(viewportHeight-60)/2+'px"
