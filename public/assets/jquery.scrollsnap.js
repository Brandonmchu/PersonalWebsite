// TODO allow for x scrollsnapping
(function(a){a.fn.scrollsnap=function(b){var c=a.extend({offset:0,proximity:12,snaps:"*"},b);return this.each(function(){var b=this;b.scrollTop!==undefined?(a(b).css("position","relative"),a(b).bind("scrollstop",function(d){var e=null,f=c.proximity+1;a(b).find(c.snaps).each(function(){var a=this,d=Math.abs(a.offsetTop-b.scrollTop);d<=c.proximity&&d<f&&(e=a,f=d)}),e&&a(b).animate({scrollTop:e.offsetTop+c.offset},200)})):b.defaultView&&a(b).bind("scrollstop",function(d){var e=null,f=c.proximity+1;a(b).find(c.snaps).each(function(){var d=this,g=Math.abs(a(d).offset().top-b.defaultView.scrollY);g<=c.proximity&&g<f&&(e=d,f=g)}),e&&b.defaultView.scrollTo(b.scrollX,a(e).offset().top+c.offset)})})}})(jQuery);