!function(e){function t(i,n,c,s){if(!n.busy){var o=i[0].parentNode,l=i[n.currSlide],r=i[n.nextSlide];if(0!==o.cycleTimeout||c){if(c||!o.cyclePause){n.before.length&&e.each(n.before,function(e,t){t.apply(r,[l,r,n,s])});var u=function(){e.browser.msie&&this.style.removeAttribute("filter"),e.each(n.after,function(e,t){t.apply(r,[l,r,n,s])})};n.nextSlide!=n.currSlide&&(n.busy=1,e.fn.cycle.custom(l,r,n,u));var a=n.nextSlide+1==i.length;n.nextSlide=a?0:n.nextSlide+1,n.currSlide=a?i.length-1:n.nextSlide-1}n.timeout&&(o.cycleTimeout=setTimeout(function(){t(i,n,0,!n.rev)},n.timeout))}}}function i(e,i,n){var c=e[0].parentNode,s=c.cycleTimeout;return s&&(clearTimeout(s),c.cycleTimeout=0),i.nextSlide=i.currSlide+n,i.nextSlide<0?i.nextSlide=e.length-1:i.nextSlide>=e.length&&(i.nextSlide=0),t(e,i,1,n>=0),!1}var n="Lite-1.0";e.fn.cycle=function(n){return this.each(function(){n=n||{},this.cycleTimeout&&clearTimeout(this.cycleTimeout),this.cycleTimeout=0,this.cyclePause=0;var c=e(this),s=n.slideExpr?e(n.slideExpr,this):c.children(),o=s.get();if(o.length<2)return void(window.console&&window.console.log&&window.console.log("terminating; too few slides: "+o.length));var l=e.extend({},e.fn.cycle.defaults,n||{},e.metadata?c.metadata():e.meta?c.data():{});l.before=l.before?[l.before]:[],l.after=l.after?[l.after]:[],l.after.unshift(function(){l.busy=0});var r=this.className;l.width=parseInt((r.match(/w:(\d+)/)||[])[1])||l.width,l.height=parseInt((r.match(/h:(\d+)/)||[])[1])||l.height,l.timeout=parseInt((r.match(/t:(\d+)/)||[])[1])||l.timeout,"static"==c.css("position")&&c.css("position","relative"),l.width&&c.width(l.width),l.height&&"auto"!=l.height&&c.height(l.height);var u=0;if(s.css({position:"absolute",top:0,left:0}).hide().each(function(t){e(this).css("z-index",o.length-t)}),e(o[u]).css("opacity",1).show(),e.browser.msie&&o[u].style.removeAttribute("filter"),l.fit&&l.width&&s.width(l.width),l.fit&&l.height&&"auto"!=l.height&&s.height(l.height),l.pause&&c.hover(function(){this.cyclePause=1},function(){this.cyclePause=0}),e.fn.cycle.transitions.fade(c,s,l),s.each(function(){var t=e(this);this.cycleH=l.fit&&l.height?l.height:t.height(),this.cycleW=l.fit&&l.width?l.width:t.width()}),s.not(":eq("+u+")").css({opacity:0}),l.cssFirst&&e(s[u]).css(l.cssFirst),l.timeout)for(l.speed.constructor==String&&(l.speed={slow:600,fast:200}[l.speed]||400),l.sync||(l.speed=l.speed/2);l.timeout-l.speed<250;)l.timeout+=l.speed;l.speedIn=l.speed,l.speedOut=l.speed,l.slideCount=o.length,l.currSlide=u,l.nextSlide=1;var a=s[u];l.before.length&&l.before[0].apply(a,[a,a,l,!0]),l.after.length>1&&l.after[1].apply(a,[a,a,l,!0]),l.click&&!l.next&&(l.next=l.click),l.next&&e(l.next).bind("click",function(){return i(o,l,l.rev?-1:1)}),l.prev&&e(l.prev).bind("click",function(){return i(o,l,l.rev?1:-1)}),l.timeout&&(this.cycleTimeout=setTimeout(function(){t(o,l,0,!l.rev)},l.timeout+(l.delay||0)))})},e.fn.cycle.custom=function(t,i,n,c){var s=e(t),o=e(i);o.css({opacity:0});var l=function(){o.animate({opacity:1},n.speedIn,n.easeIn,c)};s.animate({opacity:0},n.speedOut,n.easeOut,function(){s.css({display:"none"}),n.sync||l()}),n.sync&&l()},e.fn.cycle.transitions={fade:function(t,i,n){i.not(":eq(0)").css("opacity",0),n.before.push(function(){e(this).show()})}},e.fn.cycle.ver=function(){return n},e.fn.cycle.defaults={timeout:4e3,speed:1e3,next:null,prev:null,before:null,after:null,height:"auto",sync:1,fit:0,pause:0,delay:0,slideExpr:null}}(jQuery);