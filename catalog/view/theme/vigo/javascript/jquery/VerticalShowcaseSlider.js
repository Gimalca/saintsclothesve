var VSSlider=function(n){var s=n("#ps-container"),i=s.children("div.ps-contentwrapper"),e=i.children("div.ps-content"),t=e.length,o=s.children("div.ps-slidewrapper"),r=o.find("div.ps-slides"),a=r.children("div"),c=o.find(".nav-control > a.ps-prev"),d=o.find(".nav-control > a.ps-next"),p=0,v=!1,u=Modernizr.csstransitions,l={WebkitTransition:"webkitTransitionEnd",MozTransition:"transitionend",OTransition:"oTransitionEnd",msTransition:"MSTransitionEnd",transition:"transitionend"},m=l[Modernizr.prefixed("transition")],f=function(){var n=e.eq(p),s=a.eq(p),i={top:0,zIndex:999};n.css(i),s.css(i),g(),x()},g=function(){var n=p>0?a.eq(p-1).css("background-image"):a.eq(t-1).css("background-image"),s=p<t-1?a.eq(p+1).css("background-image"):a.eq(0).css("background-image");c.css("background-image",n),d.css("background-image",s)},x=function(){c.on("click",function(n){return v||q("prev"),!1}),d.on("click",function(n){return v||q("next"),!1}),e.on(m,k),a.on(m,k)},k=function(){v=!1,n(this).removeClass("ps-move")},q=function(n){v=!0;var s=e.eq(p),i=a.eq(p);"next"===n?p<t-1?++p:p=0:"prev"===n&&(p>0?--p:p=t-1);var o=e.eq(p),r=a.eq(p);o.css({top:"next"===n?"-100%":"100%",zIndex:999}),r.css({top:"next"===n?"100%":"-100%",zIndex:999}),setTimeout(function(){s.addClass("ps-move").css({top:"next"===n?"100%":"-100%",zIndex:1}),i.addClass("ps-move").css({top:"next"===n?"-100%":"100%",zIndex:1}),o.addClass("ps-move").css("top",0),r.addClass("ps-move").css("top",0),u||(v=!1)},0),g()};return{init:f}}(jQuery);