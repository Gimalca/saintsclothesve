function setAjaxData(e,a,t){"ERROR"==e.status?alert(e.message):(jQuery(".top-links .right-links")&&jQuery(".top-links .right-links").replaceWith(e.toplink),jQuery.fancybox.close(),"item"!=t&&jQuery("#after-loading-success-message").show())}function setLocationAjax(e,a,t){e+="isAjax/1",e=e.replace("checkout/cart","ajaxcart/index"),jQuery("#loading-mask").show();try{jQuery.ajax({url:e,dataType:"json",success:function(e){jQuery("#loading-mask").hide(),setAjaxData(e,!1,t)}})}catch(e){}}function showOptions(e){initFancybox(),jQuery("#fancybox"+e).trigger("click")}function initFancybox(){jQuery.noConflict(),jQuery(document).ready(function(){jQuery(".fancybox").fancybox({hideOnContentClick:!0,width:382,autoDimensions:!0,type:"iframe",showTitle:!1,scrolling:"no",onComplete:function(){jQuery("#fancybox-frame").load(function(){jQuery("#fancybox-content").height(jQuery(this).contents().find("body").height()+100),jQuery.fancybox.resize()})}})})}function ajaxCompare(e,a){e=e.replace("catalog/product_compare/add","ajaxcart/whishlist/compare"),e+="isAjax/1/",jQuery("#loading-mask").show(),jQuery.ajax({url:e,dataType:"json",success:function(e){jQuery("#loading-mask").hide(),"ERROR"==e.status?alert(e.message):(alert(e.message),jQuery(".block-compare").length?jQuery(".block-compare").replaceWith(e.sidebar):jQuery(".col-right").length&&jQuery(".col-right").prepend(e.sidebar))}})}function ajaxWishlist(e,a){e=e.replace("wishlist/index","ajaxcart/whishlist"),e+="isAjax/1/",jQuery("#loading-mask").show(),jQuery.ajax({url:e,dataType:"json",success:function(e){jQuery("#loading-mask").hide(),"ERROR"==e.status?alert(e.message):(alert(e.message),jQuery(".top-links .right-links")&&jQuery(".top-links .right-links").replaceWith(e.toplink))}})}function deleteAction(e,a,t){var i=confirm(t);return 1==i&&void setLocationAjax(e,a,"item")}jQuery.noConflict();