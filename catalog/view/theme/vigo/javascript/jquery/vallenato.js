jQuery(document).ready(function(e){e(".accordion-header").toggleClass("inactive-header");var t=e(".accordion-header").width();return e(".accordion-content").css({width:t}),e(".accordion-header").first().toggleClass("active-header").toggleClass("inactive-header"),e(".accordion-content").first().slideDown().toggleClass("open-content"),e(".accordion-header").click(function(){e(this).is(".inactive-header")?(e(".active-header").toggleClass("active-header").toggleClass("inactive-header").next().slideToggle().toggleClass("open-content"),e(this).toggleClass("active-header").toggleClass("inactive-header"),e(this).next().slideToggle().toggleClass("open-content")):(e(this).toggleClass("active-header").toggleClass("inactive-header"),e(this).next().slideToggle().toggleClass("open-content"))}),!1});