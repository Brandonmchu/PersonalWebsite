$(document).ready(function(){function b(){$heroImage.animate({top:"+=210",left:"+=150"},1e4,"linear",function(){$(this).animate({top:"-=210",left:"+=190"},12e3,"easeOutQuint",function(){$(this).animate({top:"+=210",left:"+=90"},8e3,"easeOutElastic",c)})})}function c(){$heroImage.animate({top:"-=210",left:"-=90"},1e4,"easeInOutExpo",function(){$(this).animate({top:"+=210",left:"-=190"},12e3,"easeInCirc",function(){$(this).animate({top:"-=210",left:"-=150"},8e3,"linear",b)})})}var a=$(".card-container");a.imagesLoaded(function(){a.masonry({itemSelector:".post-card"})}),$PostCard=$(".post-card"),$PostCard.mouseenter(function(){$(this).find(".overlay").css("opacity","0.2"),$(this).find("h1").css("text-shadow","-1px 0 1px #333, 0 1px 1px #333, 1px 0 1px #333, 0 -1px 1px #333"),$(this).find("h2").css("text-shadow","-1px 0 1px #333, 0 1px 1px #333, 1px 0 1px #333, 0 -1px 1px #333")}),$PostCard.mouseleave(function(){$(this).find(".overlay").css("opacity","0.6"),$(this).find("h1").css("text-shadow","none"),$(this).find("h2").css("text-shadow","none")}),$heroImage=$(".hero-inner img"),b()});