/*
 * backgroundSize: A jQuery cssHook adding support for "cover" and "contain" to IE6,7,8
 *
 * Requirements:
 * - jQuery 1.7.0+
 *
 * Limitations:
 * - doesn't work with multiple backgrounds (use the :after trick)
 * - doesn't work with the "4 values syntax" of background-position
 * - doesn't work with lengths in background-position (only percentages and keywords)
 * - doesn't work with "background-repeat: repeat;"
 * - doesn't work with non-default values of background-clip/origin/attachment/scroll
 * - you should still test your website in IE!
 *
 * latest version and complete README available on Github:
 * https://github.com/louisremi/jquery.backgroundSize.js
 *
 * Copyright 2012 @louis_remi
 * Licensed under the MIT license.
 *
 * This saved you an hour of work?
 * Send me music http://www.amazon.co.uk/wishlist/HNTU0468LQON
 *
 */
(function(a,b,c,d,e){var f=a("<div>")[0],g=/url\(["']?(.*?)["']?\)/,h=[],i={top:0,left:0,bottom:1,right:1,center:.5};if("backgroundSize"in f.style&&!a.debugBGS)return;a.cssHooks.backgroundSize={set:function(b,c){var d=!a.data(b,"bgsImg"),e,f,g;a.data(b,"bgsValue",c),d?(h.push(b),a.refreshBackgroundDimensions(b,!0),f=a("<div>").css({position:"absolute",zIndex:-1,top:0,right:0,left:0,bottom:0,overflow:"hidden"}),g=a("<img>").css({position:"absolute"}).appendTo(f),f.prependTo(b),a.data(b,"bgsImg",g[0]),e=(a.css(b,"backgroundPosition")||a.css(b,"backgroundPositionX")+" "+a.css(b,"backgroundPositionY")).split(" "),a.data(b,"bgsPos",[i[e[0]]||parseFloat(e[0])/100,i[e[1]]||parseFloat(e[1])/100]),a.css(b,"zIndex")=="auto"&&(b.style.zIndex=0),a.css(b,"position")=="static"&&(b.style.position="relative"),a.refreshBackgroundImage(b)):a.refreshBackground(b)},get:function(b){return a.data(b,"bgsValue")||""}},a.cssHooks.backgroundImage={set:function(b,c){return a.data(b,"bgsImg")?a.refreshBackgroundImage(b,c):c}},a.refreshBackgroundDimensions=function(b,c){var d=a(b),e={width:d.innerWidth(),height:d.innerHeight()},f=a.data(b,"bgsDim"),g=!f||e.width!=f.width||e.height!=f.height;a.data(b,"bgsDim",e),g&&!c&&a.refreshBackground(b)},a.refreshBackgroundImage=function(b,c){var d=a.data(b,"bgsImg"),e=(g.exec(c||a.css(b,"backgroundImage"))||[])[1],f=d&&d.src,h=e!=f,i,j;if(h){d.style.height=d.style.width="auto",d.onload=function(){var c={width:d.width,height:d.height};if(c.width==1&&c.height==1)return;a.data(b,"bgsImgDim",c),a.data(b,"bgsConstrain",!1),a.refreshBackground(b),d.style.visibility="visible",d.onload=null},d.style.visibility="hidden",d.src=e;if(d.readyState||d.complete)d.src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///ywAAAAAAQABAAACAUwAOw==",d.src=e;b.style.backgroundImage="none"}},a.refreshBackground=function(b){var c=a.data(b,"bgsValue"),e=a.data(b,"bgsDim"),f=a.data(b,"bgsImgDim"),g=a(a.data(b,"bgsImg")),h=a.data(b,"bgsPos"),i=a.data(b,"bgsConstrain"),j,k=e.width/e.height,l=f.width/f.height,m;c=="contain"?l>k?(a.data(b,"bgsConstrain",j="width"),m=d.floor((e.height-e.width/l)*h[1]),g.css({top:m}),j!=i&&g.css({width:"100%",height:"auto",left:0})):(a.data(b,"bgsConstrain",j="height"),m=d.floor((e.width-e.height*l)*h[0]),g.css({left:m}),j!=i&&g.css({height:"100%",width:"auto",top:0})):c=="cover"&&(l>k?(a.data(b,"bgsConstrain",j="height"),m=d.floor((e.height*l-e.width)*h[0]),g.css({left:-m}),j!=i&&g.css({height:"100%",width:"auto",top:0})):(a.data(b,"bgsConstrain",j="width"),m=d.floor((e.width/l-e.height)*h[1]),g.css({top:-m}),j!=i&&g.css({width:"100%",height:"auto",left:0})))};var j=a.event,k,l={_:0},m=0,n,o;k=j.special.throttledresize={setup:function(){a(this).on("resize",k.handler)},teardown:function(){a(this).off("resize",k.handler)},handler:function(b,c){var d=this,e=arguments;n=!0,o||(a(l).animate(l,{duration:Infinity,step:function(){m++;if(m>k.threshold&&n||c)b.type="throttledresize",j.dispatch.apply(d,e),n=!1,m=0;m>9&&(a(l).stop(),o=!1,m=0)}}),o=!0)},threshold:1},a(b).on("throttledresize",function(){a(h).each(function(){a.refreshBackgroundDimensions(this)})})})(jQuery,window,document,Math);