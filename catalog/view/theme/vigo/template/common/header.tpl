<!DOCTYPE html>

<?php error_reporting(E_ALL ^ E_NOTICE);?>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>"><head>

<meta charset="UTF-8" />

<title><?php echo $title; ?></title>

<base href="<?php echo $base; ?>" />

<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

<?php if ($description) { ?>

<meta name="description" content="<?php echo $description; ?>" />

<?php } ?>

<?php if ($keywords) { ?>

<!--meta name="keywords" content="<?php echo $keywords; ?>" /-->

<?php } ?>

<meta name="keywords" content="vestidos casuales, vestidos, blusas de chifon, ropa de moda, blusas de moda, blusas para damas, vestidos cortos, blusas, camisas de moda, moda, vestidos de moda, ropa, sweaters, camisas de chifon, pantalones, vestidos casuales cortos, pantalones de moda, franela, pantalones de dama, ropa casual, blusas de vestir, camisas para damas, blusas casuales, tiendas online venezuela, ropa a la moda, camisas de dama, franelas estampadas, tienda virtual, tiendas online, ropa de dama, blusa, ropa casual para damas, camisas manga larga, trendy, clothes, tiendas de ropa, ropa de moda para dama, ropa para dama, ropa juvenil, blusas de chifon manga larga, blusas a la moda, blusas manga larga, blog de moda, moda actual, tiendas de ropa online venezuela, ropa fashion, tiendas de ropa online, ropa de moda en venezuela, tops de moda, ropa barata">



<?php if ($icon) { ?>

<link href="<?php echo $icon; ?>" rel="icon" />

<?php } ?>

<?php foreach ($links as $link) { ?>

<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />

<?php } ?>

                                                                                        



<link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>



 

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/mj-template.css" />

<!--VIGO vigo css Start-->

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/bootstrap.min.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/design_default.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/style.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/reaponsive_767.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/reaponsive_991.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/jquery.akordian.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/jquery.bxslider.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/selectbox.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/settings.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/etalage.css" media="all" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/styles-noroute.css"/>

<!--VIGO vigo css End-->





<?php //foreach ($styles as $style) { ?>

<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />

<?php //} ?>



<!--Mega Manu Js End-->

<script type="text/javascript" async src="http://www.google-analytics.com/ga.js"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/prototype.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/ccard.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/validation.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/builder.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/effects.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/dragdrop.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/controls.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/slider.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/js.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/form.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/menu.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/translate.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/cookies.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/jquery-1.10.2.min.js" type="text/javascript"></script>

<!--script src="catalog/view/theme/vigo/javascript/jquery/jquery-noconflict.js" type="text/javascript"></script-->

<script src="catalog/view/theme/vigo/javascript/jquery/jquery-ui-1.10.3.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/bootstrap-3.0.0.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/html5shiv.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/respond.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/ajaxaddto.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/jquery.mousewheel-3.0.4.pack.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/jquery.fancybox.pack.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/jquery.slides.min.js" type="text/javascript"></script>

<script src="catalog/view/theme/vigo/javascript/jquery/twitterfetcher.js" type="text/javascript"></script>





<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.tinycarousel.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.themepunch.revolution.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.themepunch.plugins.min.js"></script>



<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/vallenato.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/tabcontent.js"></script>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.nicescroll.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.nicescroll.min.js"></script>



<script type="text/javascript" src="catalog/view/theme/vigo/javascript/common.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/slider.js"></script>



<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.bxslider.min.js"></script>

<!--<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/bxslider.custom.js"></script>-->

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.etalage.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.zoom.min.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/jquery.akordeon.js"></script>

<!--EU COOKIE LAW>

<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/intl/en_us/mapfiles/api-3/16/1/%7Bcommon,map,util,marker%7D.js"></script>

<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/intl/en_us/mapfiles/api-3/16/1/%7Bonion%7D.js"></script>

<script type="text/javascript" charset="UTF-8" src="https://maps.gstatic.com/cat_js/intl/en_us/mapfiles/api-3/16/1/%7Bcontrols,stats%7D.js"></script>



<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/cookie.css" />

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/support-opt-in.js"></script>

<script type="text/javascript" src="catalog/view/theme/vigo/javascript/require-opt-in.js"></script>

<!--end EU COOKIE LAW-->

<?php foreach ($scripts as $script) { ?>

<script type="text/javascript" src="<?php echo $script; ?>"></script>

<?php } ?>



<?php if ($stores) { ?>

<script type="text/javascript"><!--

$(document).ready(function() {

<?php foreach ($stores as $store) { ?>

$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');

<?php } ?>

});

//-->

</script>



<?php } ?>

<script type="text/javascript">

/*var filternoconflict=jQuery.noConflict();*/



jQuery(document).ready(function(){

jQuery('html').niceScroll({zindex : 9999});

});

</script>





<?php echo $google_analytics; ?>

<?php $language_id = (int)$this->config->get('config_language_id') ; ?>

<?php if($language_id == 13 ) { ?>

<style type="text/css">

.bx-wrapper{direction:ltr;}

</style>

<?php } ?>

<?php if($footer_background_type == 1) { ?>

<style type="text/css">

.footer-container{

 	background-color:<?php echo $footer_background; ?>;

}

</style>

<?php } ?>

<?php if($footer_background_type == 2) { ?>

<style type="text/css">

.footer-container{

	background-image:url(<?php echo HTTPS_SERVER.'image/'.$footer_background; ?>);

}

.footer {

    background-color: rgba(46, 46, 46, 0.9);

}

</style>

<?php } ?>

<?php if($footer_background_type == 3) { ?>

<style type="text/css">

.footer-container{

	background-image:url(<?php echo HTTPS_SERVER.'image/data/vigo/pattern/'.$footer_background; ?>);

}

.footer {

    background-color: rgba(75, 86, 104, 0.9);

}

</style>

<?php } ?>

<!--text color start-->



</head>

<?php 

	$url = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER['QUERY_STRING'];

    function add_querystring_var($url, $key, $value) {

        $url = preg_replace('/(.*)(?|&)' . $key . '=[^&]+?(&)(.*)/i', '$1$2$4', $url . '&');

        $url = substr($url, 0, -1);

        

        if (strpos($url, '?') === false) {

            return ($url . '?' . $key . '=' . $value);

        } else {

            return ($url . '&' . $key . '=' . $value);

        }

    }

    

    function multiexplode ($delimiters,$string) {

    

    $ready = str_replace($delimiters, $delimiters[0], $string);

    $launch = explode($delimiters[0], $ready);

    return  $launch;

}

//echo $_SERVER["QUERY_STRING"];

if(!$_SERVER["QUERY_STRING"]){

   $_SERVER["QUERY_STRING"] = 'route=common/home';

  }

?> 



<?php ; $actual_link = 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['PHP_SELF'].'?'.$_SERVER["QUERY_STRING"]; $words = multiexplode(array('/','&'),$_SERVER["QUERY_STRING"]);$category_s = $words[1]; //print_r($category_s) ?>

<body class="">

     <a id="scrollUp" href="#top" title="" style="display: block; position: fixed; z-index: 2147483647;"></a>
     <!--a id="scrollUp" href="#top" class="sprite-2 sprite-back-to-top"-->

<div class="wrapper">



<noscript>

    <div class="global-site-notice noscript">

        <div class="notice-inner">

            <p>

                <strong>JavaScript seems to be disabled in your browser.</strong><br />

                You must have JavaScript enabled in your browser to utilize the functionality of this website.                

            </p>

        </div>

    </div>

</noscript>

	<div class="page">

        <div class="header-container">
            
            
            
            <div class="top-links-mobile hidden-md hidden-sm hidden-lg">

                <div class="item-button ">
                    <!--button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span><?php echo $text_header_menu;?></span>
                    </button-->
                    <div class="item-button">
                        <a class="sprite  menu-mobile" data-toggle="collapse" data-target=".navbar-collapse" href="javascript:">menu</a>
                    </div>

                </div>
                <div class="item-button ">
                    <div class="item-button">
                        <a class="sprite  search-mobile"  href="javascript:">search</a>
                    </div>
                </div>
                <div class="item-button">
                    <a class="sprite  home-mobile" title="SAINTS CLOTHES" href="<?php echo $home; ?>">SAINT CLOTHES</a>
                </div>
                <div class="item-button ">
                   
                        <a class="sprite  account-mobile"  href="javascript:">account</a>
                   
                </div>
                <div class="item-button">
                   
                        <a class="sprite  cart-mobile" href="javascript:">cart</a>
                  
                </div>

            </div>  

            <div class="top-links hidden-xs">

                <div class="container" style="padding:0px">

                    

                    <div class="for-desktop">

                        <div class="form-search for-not-tablet">

                            <form id="search_mini_form" method="get" action="">

                                <input type="hidden" name="route" value="product/search"/>

                                <input type="text" name="search" class="input-text search_inputbox" maxlength="25" placeholder="<?php echo $txt_search; ?>" />



                                <!--button class="button-search button btn-search" title="Search" type="submit">

                                <span>

                                        

                                    <span><?php echo $text_search;?></span>

                                </span>

                                </button-->

                            </form>

                            <!--<button class="button button-search" title="Search" type="submit" >

                                <span><span><?php echo $text_search;?></span></span>

                            </button>-->

                            <script type="text/javascript">

                                                    jQuery(".search_inputbox").click(function(){

                                                    jQuery(this).parent().children('button').addClass('active');

                                                    }).blur(function(){

                                                    jQuery(this).parent().children('button').removeClass('active');

                                                    });

                                                    $(document).ready(function(){

	

                                                    //Check to see if the window is top if not then display button

                                                    $(window).scroll(function(){

                                                            if ($(this).scrollTop() > 100) {

                                                                    $('#scrollUp').fadeIn();

                                                            } else {

                                                                    $('#scrollUp').fadeOut();

                                                            }

                                                    });



                                                    //Click event to scroll to top

                                                    $('#scrollUp').click(function(){

                                                            $('html, body').animate({scrollTop : 0},800);

                                                            return false;

                                                    });



                                            });

                            </script>







                        </div>
                        

                    </div>

                    <div class="social-icons hidden-xs" style="margin-top:7px">

                        <a class="sprite sprite-facebook" title="Facebook" href="https://www.facebook.com/saintsparaguay/">Facebook</a>

                        <a class="sprite sprite-twitter" title="Twitter" href="https://twitter.com/saints_paraguay?lang=en">Twitter</a>

                        <a class="sprite sprite-instragram" title="Instragram" href="https://www.instagram.com/saints_ve/">Instragram</a>

                        <a class="sprite sprite-pinterest" title="Pinterest" href="https://es.pinterest.com/saintsclothes/">Pinterest</a>


                    </div>


                     <div class="pull-right hidden-xs currency-switcher">

                         <?php echo $currency; ?>

                    </div>

                     <div class="pull-right hidden-xs language-switcher">

                        <?php echo $language; ?>

                    </div>

                    <ul class="right-links pull-right">

                        <li class="mini-cart last">

                            <?php echo $cart; ?>

                         </li>

                         <script type="text/javascript">

                             jQuery('.mini-cart').mouseover(function(){

                               jQuery('#topCartContent').show()

                                return false;

                            	}).mouseleave(function(){

                               jQuery('#topCartContent').hide()

                             });
                                $(".mini-cart").click(function(){

                                $("#topCartContent").toggle();

                            });

                            
                         </script>

                    </ul>

                    <ul>

                     

                    <!--div class="pull-right language-switcher">

                        <?php echo $language; ?>

                    </div-->

                    <div class="pull-right currency-switcher" style="display:none">

                         <?php echo $currency; ?>

                    </div>     

                    </ul>

                    <ul class="links right hidden-xs">

                        <div class="pull-left" style="color: white;display: -webkit-inline-box;">

                            <?php if (!$logged) { ?>

                            <?php echo $text_welcome; ?>

                            <?php } else { ?>

                            <?php echo $text_logged; ?>

                            <?php } ?>

                        </div>

                        <!--li class="first"><a class="top-link-home" href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li-->

                        <!--li class="header_wishlist"><a href="<?php echo $wishlist; ?>" class="top-link-wishlist"><?php //echo $text_wishlist; ?></a></li-->

                        <!--li><a class="top-link-account" href="<?php echo $account; ?>"><?php //echo $text_account; ?></a></li-->

                        

                        <!--li><a class="top-link-cart" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li-->

                        <!--li><a class="top-link-checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li-->

                        <!--li class="header_wishlist">

                            <a href="<?php echo $wishlist; ?>" class="top-link-wishlist"><?php echo $text_wishlist; ?></a></li-->

                        <!--li class="last header_compare">

                            <a href="<?php echo $compare; ?>" class="top-link-compare"><?php echo $text_compare; ?></a></li-->

                    

                    </ul>

                    <div class="clear"></div>

                     

                </div>

            </div>

            

          

        </div>

        <?php if ( $category_s == "home"  ):?>

           <div class="header container hidden-xs">

                 <a class="logo" href="<?php echo $home; ?>"><!--<?php echo $name; ?>-->

                     <!--img src="<?php echo $logo; ?>" alt="<?php echo $home; ?>" /-->

                     <img width="700px" class=" responsive img-responsive"  src="image/saints_clothes_wt.svg" alt="<?php echo $home; ?>" />

                 </a>

            </div>

            

            <!--script type="text/javascript">//<![CDATA[

				jQuery(document).ready(function () {

					

					//jQuery('body').addClass('modal-open');

					jQuery('#newsletter_modal').addClass('in');

					jQuery('#newsletter_modal').css('display', 'block');

					$('body').prepend('<div class="modal-backdrop fade in"></div>');

					

					

					 jQuery("#newsletter_modal button.close").click(function(e){

						//$('body').removeClass('modal-open');

						$('#newsletter_modal').removeClass('in');

						$('#newsletter_modal').css('display', 'none');

						$('body .modal-backdrop').remove();

						 

					 }); 

					

				});

			//]]</script-->

         <?php endif ?>

        <div class="navbar navbar-default">

            <div class="container">

                <div class="navbar-header  hidden-md hidden-lg hidden-sm">

                    <a class="logo" href="<?php echo $home; ?>"><!--<?php echo $name; ?>-->

                        <!--img src="<?php echo $logo; ?>" alt="<?php echo $home; ?>" /-->

                        <img width="250px" class=" responsive img-responsive"  src="image/saints_clothes_wt.svg" alt="<?php echo $home; ?>" />

                    </a>

                </div>

        	<div class="for-mobile">

                    	

                </div>

        

                <nav class="collapse navbar-collapse bs-navbar-collaspe " role="navigation" id="jsn-pos-mainnav">

                    

                    <a href="<?php echo $home; ?>" title="<?php echo $home; ?>" class="logo sticky-logo col-lg-12 col-md-12">

                        <strong></strong>

                        <img  width="700px" class=" img-responsive"  src="image/saints_clothes_wt.svg" alt="<?php echo $home; ?>" />

                    </a>

                   

                <?php if($megamenu==1) { ?>

                <?php if ($categories) { ?>

                    <ul id="nav_custom" class="nav navbar-nav">

                        <!--li class="level0">

                            <a id="linkm" href="index.php?route=common/home" class="main-menu"></a>

                        </li-->

                        <?php foreach ($categories as $category) { ?>

                            

                       

                            <?php if($category['name'] != 'Blogs'): ?>

                             <li class="level0"><a id="linkm" href="<?php echo $category['href']; ?>"><span><?php echo $category['name'];?></span></a>

                            

                            <?php else: ?> 

                            <!--li class="level0"><a id="linkm" href="index.php?route=product/category&amp;path=163"><span>Bloggers</span></a>-->

                             

                            <li class="level0"><a id="linkm" href="<?php echo $category['href']; ?>"><span><?php $category['name'] = 'Blog'; echo $category['name'];?></span></a>

                            <li class="level0"><a id="linkm" href="index.php?route=information/contact"><span>Contacto</span></a>

                            <?php endif; ?>    

                            

                              <?php if ($category['children']) { ?>

                                    <span class="plus"></span>

                                    <?php for ($i = 0; $i < count($category['children']);) { ?>

                                        <ul class="level1 ">

                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>

                                          <?php for (; $i < $j; $i++) { ?>

                                            <?php if (isset($category['children'][$i])) { ?>

                                                <li class="level1 parent"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>

                                                <span class="plus"></span>

                                                    <?php if ($category['children'][$i]['children_level2']) { ?>

                                                    

                                                         

                                                             <ul class="level2">

                                                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>

                                                                

                                                                      <li class="level2">

                                                                            <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><span><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></span>

                                                                            </a>

                                                                            

                                                                      </li>

                                                                <?php } ?>

                                                            </ul>

                                                         

                                                    <?php } ?>	

                                                </li>

                                                

                                            <?php } ?>

                                          <?php } ?>

                                          

                                          <!--li class="level1 thumbnail-image-area" style="position: relative;">

												<?php //echo html_entity_decode($category_image); ?>

                                          </li-->

                                           

                                       	

                                        </ul>

                                    <?php } ?>

                                  

                              <?php } ?>

                            </li>

                           

                        <?php } ?>

                         

                        	<!--li class="level0 for-desktop custom-menu parent"><a href="#"><span>Custom</span></a-->

                            <ul class="level1" style="display: none;">

                            <li style="width: 100%;" class="level1 first">

                            <div class="row">

                        	 <?php echo html_entity_decode($custom_category); ?>

                            </div>

                            </li>

                            </ul>

                            </li>

                        

                       	
                            <div class="social-menu-mobile hidden-sm hidden-md hidden-lg">
                                <a class="sprite sprite-facebook" title="Facebook" href="https://www.facebook.com/saintsparaguay/">Facebook</a>

                                <a class="sprite sprite-twitter" title="Twitter" href="https://twitter.com/saints_paraguay?lang=en">Twitter</a>

                                <a class="sprite sprite-instragram" title="Instragram" href="https://www.instagram.com/saints_ve/">Instragram</a>

                                <a class="sprite sprite-pinterest" title="Pinterest" href="https://es.pinterest.com/saintsclothes/">Pinterest</a>

                                <a class="sprite sprite-google" title="google" href="http://www.google.com/">google</a>
                            </div>      
                             

                    </ul>

                <?php } ?>

                <?php } ?>

                 

                <?php if($megamenu==2) { ?>

                <?php if ($categories) { ?>

                    <ul  class="nav navbar-nav simple_menu for-desktop">

                        <?php foreach ($categories as $category) { ?>

                        

                            <li class="level0"><a id="linkm" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>

                            

                              <?php if ($category['children']) { ?>

                                    

                                    <?php for ($i = 0; $i < count($category['children']);) { ?>

                                        <ul class="level1 nav-child">

                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>

                                          <?php for (; $i < $j; $i++) { ?>

                                            <?php if (isset($category['children'][$i])) { ?>

                                                <li class="level1 parent submenu"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>

                                                

                                                    <?php if ($category['children'][$i]['children_level2']) { ?>

                                                    

                                                         

                                                             <ul class="level2 nav-child">

                                                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>

                                                                

                                                                      <li class="level2">

                                                                            <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><span><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></span>

                                                                            </a>

                                                                            

                                                                      </li>

                                                                <?php } ?>

                                                            </ul>

                                                         

                                                    <?php } ?>	

                                                </li>

                                                

                                            <?php } ?>

                                          <?php } ?>

                                       </ul>

                                    <?php } ?>

                                  <?php } ?>

	                            </li>

                           <?php } ?>

                         </ul>

                    

                    <ul id="nav_custom" class="nav navbar-nav for-mobile">

                        <?php foreach ($categories as $category) { ?>

                        	<li class="level0"><a id="linkm" href="<?php echo $category['href']; ?>"><span><?php echo $category['name']; ?></span></a>

                            <span class="plus"></span>

                              <?php if ($category['children']) { ?>

                                    

                                    <?php for ($i = 0; $i < count($category['children']);) { ?>

                                        <ul class="level1">

                                          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>

                                          <?php for (; $i < $j; $i++) { ?>

                                            <?php if (isset($category['children'][$i])) { ?>

                                                <li class="level1 parent"><a href="<?php echo $category['children'][$i]['href']; ?>"><span><?php echo $category['children'][$i]['name']; ?></span></a>

                                                <span class="plus"></span>

                                                    <?php if ($category['children'][$i]['children_level2']) { ?>

                                                    

                                                         

                                                             <ul class="level2">

                                                                <?php for ($wi = 0; $wi < count($category['children'][$i]['children_level2']); $wi++) { ?>

                                                                

                                                                      <li class="level2">

                                                                            <a href="<?php echo $category['children'][$i]['children_level2'][$wi]['href']; ?>"  ><span><?php echo $category['children'][$i]['children_level2'][$wi]['name']; ?></span>

                                                                            </a>

                                                                            

                                                                      </li>

                                                                <?php } ?>

                                                            </ul>

                                                         

                                                    <?php } ?>	

                                                </li>

                                                

                                            <?php } ?>

                                          <?php } ?>

                                          

                                          <li class="level1 thumbnail-image-area" style="position: relative;">

												<?php echo html_entity_decode($category_image); ?>

                                          </li>

                                           

                                       	

                                        </ul>

                                    <?php } ?>

                                  

                              <?php } ?>

                            </li>

                        <?php } ?>

                        	<li class="level0 for-desktop custom-menu parent"><a id="linkm" href="#"><span>Custom</span></a>

                            <ul class="level1" style="display: none;">

                            <li style="width: 100%;" class="level1 first">

                            <div class="row">

                        	 <?php echo html_entity_decode($custom_category); ?>

                            </div>

                            </li>

                            </ul>

                            </li>

                    </ul>

                	<?php } ?>

                <?php } ?>

                 

               

                        	

                   

                    

                     

                

                </nav>

            </div>

              </div>     

		

<?php if ($error) { ?>

    

    <div class="warning"><?php echo $error ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>

    

<?php } ?>



<?php //if ( $category_s == "category" || $category_s == "product" || $category_s == "cart" || $category_s == "checkout"  ):?>

<?php if ( $category_s != "home" ):?>



<script type="text/javascript">

//<![CDATA[

    jQuery(document).ready(function(){

        jQuery('.header').css('position', 'relative');

        

           jQuery('.header-container').addClass('sticky-menu').css('top','-50px').animate({top:'0px'}, 500);

           jQuery('.navbar').addClass('sticky-menu').css('top','-50px').animate({top:'48px'}, 500);

           var scrolled = false;

          

           jQuery(window).scroll(function(){

            if(100<jQuery(window).scrollTop() && !scrolled){               

                // jQuery('.header-container').addClass('sticky-menu').css('top','-50px').animate({top:'0px'}, 500);

                jQuery('.navbar').removeClass('sticky-menu');

                scrolled = true;

            }

            if(100>jQuery(window).scrollTop() && scrolled){

                //jQuery('.header-container').removeClass('sticky-menu');

                jQuery('.navbar').addClass('sticky-menu').css('top','-50px').animate({top:'48px'}, 500);

                

               // jQuery('.navbar').css('top','160px')

                scrolled = false;

            }

           

        });

          

          jQuery("#nav_custom li span.plus").click(function(e){

            e.stopPropagation();

            if(jQuery(this).hasClass('expanded')){

                jQuery(this).removeClass('expanded');

                jQuery(this).parent().removeClass('expanded');

                jQuery(this).parent().children('ul').slideUp();

            } else {

                jQuery(this).parent().parent().children('li.expanded').children('ul').slideUp();

                jQuery(this).parent().parent().children('li.expanded').children('span.expanded').removeClass('expanded');

                jQuery(this).parent().parent().children('li.expanded').removeClass('expanded');

                jQuery(this).addClass('expanded');

                jQuery(this).parent().addClass('expanded');

                jQuery(this).parent().children('ul').slideDown();

            }

        });

      

    });

//]]>

</script>  



<?php else: ?>

    <script type="text/javascript">

//<![CDATA[

    jQuery(document).ready(function(){

        jQuery('.navbar').addClass('navbarhome');

        var scrolled = false;

       

        jQuery(window).scroll(function(){

            if(100<jQuery(window).scrollTop() && !scrolled){

                 jQuery('.header-container').addClass('sticky-menu').css('top','-50px').animate({top:'0px'}, 500);

                 jQuery('.navbar').addClass('sticky-menu').css('top','-50px').animate({top:'48px'}, 500);

                scrolled = true;

            }

            if(100>jQuery(window).scrollTop() && scrolled){

                jQuery('.header-container').removeClass('sticky-menu');

                jQuery('.navbar').removeClass('sticky-menu');

                jQuery('.navbar').css('top','160px')

                scrolled = false;

            }

           

        });

        

        /* jQuery(window).resize(function(){

         

          if(430 < jQuery(window).width()){

              alert('sirve')

          }

         

        });

        jQuery("#nav_custom li.level0").mouseover(function(){

            if(jQuery(window).width() >= 768){

                jQuery(this).children('ul.level1').fadeIn();

            }

            return false;

        }).mouseleave(function(){

            if(jQuery(window).width() >= 768){

                jQuery(this).children('ul.level1').hide();

            }

            return false;

        }); */

        jQuery("#nav_custom li span.plus").click(function(e){

            e.stopPropagation();

            if(jQuery(this).hasClass('expanded')){

                jQuery(this).removeClass('expanded');

                jQuery(this).parent().removeClass('expanded');

                jQuery(this).parent().children('ul').slideUp();

            } else {

                jQuery(this).parent().parent().children('li.expanded').children('ul').slideUp();

                jQuery(this).parent().parent().children('li.expanded').children('span.expanded').removeClass('expanded');

                jQuery(this).parent().parent().children('li.expanded').removeClass('expanded');

                jQuery(this).addClass('expanded');

                jQuery(this).parent().addClass('expanded');

                jQuery(this).parent().children('ul').slideDown();

            }

        });

        /*

        var flg = false;

        jQuery("#nav_custom a").mouseover(function(){

            var thumb_image = jQuery(this).parent().attr("thumb_image");

            if(thumb_image != "no-image")

                jQuery("#nav_custom li.thumbnail-image-area img").attr("src",thumb_image);

        });

        */

    });

//]]>

</script>  

<?php endif;?>



<!-- Latest,    Featured,    Specials on hover black come -->

<script type="text/javascript">

{*jQuery(document).ready(function(){

jQuery('.category-products .product-image-area').mouseenter(function(){

jQuery(this).children('.hover-area').fadeIn();

}).mouseleave(function(){

jQuery(this).children('.hover-area').fadeOut();

});

jQuery('.category-products .product-image-area').each(function(){

var inarea = false;

jQuery(this).click(function(e){

if(jQuery(e.target).is('.cart-button-set a')){

return;

}

setLocation(jQuery(this).attr('product_url'));

});

jQuery(this).mouseenter(function(){

if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == false){

var hover_img = jQuery(this).attr('hover_img');

var base_img = jQuery(this).attr('base_img');

var img = jQuery(this).children('a.product-image').children('img');

//jQuery(img).attr('src', hover_img);

/********************************/

var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",base_img);

jQuery(img).css("z-index",1);

jQuery(img).attr('src', hover_img);

jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});

}

inarea = true;

}).mouseleave(function(){

if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == true){

var hover_img = jQuery(this).attr('hover_img');

var base_img = jQuery(this).attr('base_img');

var img = jQuery(this).children('a.product-image').children('img');

//jQuery(img).attr('src', base_img);

/********************************/

var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",hover_img);

jQuery(img).css("z-index",1);

jQuery(img).attr('src', base_img);

jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});

}

inarea = false;

});

});

});*}

</script>





        

<!--Image of all slider is fix size-->        

<script type="text/javascript">

        // <![CDATA[

            jQuery(document).ready(function(){

                var window_size = jQuery(window).width();

                var bxslider1,bxslider2,bxslider3;

                if(window_size<992 && window_size >= 768){

                    bxslider1=jQuery('#fp_new .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                    //bxslider2=jQuery('#fp_featured .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 350,  slideMargin: 15});

                    bxslider3=jQuery('#fp_special .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                } else if(window_size<768){

                    bxslider1=jQuery('#fp_new .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                    //bxslider2=jQuery('#fp_featured .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                    bxslider3=jQuery('#fp_special .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                }else {

                    bxslider1=jQuery('#fp_new .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                    //bxslider2=jQuery('#fp_featured .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 450,  slideMargin: 5});

                    bxslider3=jQuery('#fp_special .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                }

                var reloaded1, reloaded2, reloaded3;

                reloaded1 = true;

                jQuery('.filter-products ul.tabs li a').click(function(e){

                    jQuery(this).parent().parent().children('li').removeClass('active');

                    jQuery(this).parent().addClass('active');

                    var active_id = jQuery(this).attr('rel');

                    jQuery('.filter-products .tab-contents .tab.active').hide();

                    jQuery('.filter-products .tab-contents .tab.active').removeClass('active');

                    jQuery(active_id).show();

                    jQuery(active_id).addClass('active');

                    {*if(active_id == "#fp_featured" && !reloaded2){

                        if(window_size<992 && window_size >= 768){

                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                        } else if(window_size<768){

                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                        }else {

                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                        }

                        reloaded2 = true;

                    } else if(active_id == "#fp_special" && !reloaded3){

                        if(window_size<992 && window_size >= 768){

                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                        } else if(window_size<768){

                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                        }else {

                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                        }

                        reloaded3 = true;

                    }*}

                });

                setTimeout(function(){

                    jQuery('.filter-products .tab-contents .tab').hide();

                    jQuery('.filter-products .tab-contents .tab.active').show();

                }, 100);



                jQuery(window).resize(function(e){

                    e.preventDefault();

                    var window_size = jQuery(window).width();

                    var time_out;

                    if(time_out) clearTimeout(time_out);

                    time_out = setTimeout(function(){

                        jQuery('.filter-products .tab-contents .tab').show();

                        if(window_size<992 && window_size >= 768){

                            bxslider1.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});

                        } else if(window_size<768){

                            bxslider1.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});

                        }else {

                            bxslider1.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                            bxslider2.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                            bxslider3.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});

                        }

                    }, 500);

                    setTimeout(function(){

                        jQuery('.filter-products .tab-contents .tab').hide();

                        jQuery('.filter-products .tab-contents .tab.active').show();

                    }, 500);

                });

            });

        // ]]>

</script>



<!--bestseller-->

   

        

        

    <div id="fb-root"></div>

<script>(function(d, s, id) {

  var js, fjs = d.getElementsByTagName(s)[0];

  if (d.getElementById(id)) return;

  js = d.createElement(s); js.id = id;

  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";

  fjs.parentNode.insertBefore(js, fjs);

}(document, 'script', 'facebook-jssdk'));</script>





