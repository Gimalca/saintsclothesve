
<?php if($slidereffect == 1){ ?>
<div id="mj-slideshow" class="mj-full">
	<div class="tp-banner-container " style="margin-top:15px;">
    	<div class="tp-banner" >
        	<ul>
           <?php if ($products) { ?>
           <?php $i=1; ?>
            <?php foreach ($products as $product) { ?>
            
            
                <li data-transition="<?php if($i==1){echo 'cube';} elseif($i==2){echo 'incube-horizontal';} else{ echo 'fadetoleftfadefromright';}?>" data-slotamount="15" data-masterspeed="1500"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" />
                <div class="tp-caption skewfromleftshort" style="z-index: 6;" data-x="center" data-y="center" data-speed="500" data-start="1000" data-endspeed="100">
                <div class="header-black-72" style="color:<?php echo $product['color']?>";> <?php echo $product['name']; ?></div>
                <div class="bottom-black-split" style="background: none repeat scroll 0 0 <?php echo $product['color']?>;">&nbsp;</div>
                <div class="caption-black-15" style="color:<?php echo $product['color']?>;">
                	<?php echo html_entity_decode($product['desc_1']); ?>
                </div>

                <a href="#" >
                <button type="button" class="button black">
                	<span style="color:<?php echo $product['color']?>; border-color:<?php echo $product['color']?>; " ><span style="color:<?php echo $product['color']?>; border-color:<?php echo $product['color']?>; ">TAKE LOOK</span></span>
                </button>
                </a>
                </div>
                </li>
                	
                <?php
                if($i == 3){ $i = 0; }
                $i++;
                 } ?>
            <?php } else { ?>
            	<div><?php echo $text_sorry_no_slider;?></div>
            <?php } ?>
                
			</ul>
            <div class="tp-bannertimer"></div>
    	</div>
		
        <script type="text/javascript">

    var tpj=jQuery;
    tpj.noConflict();

    tpj(document).ready(function() {

        tpj('.tp-banner').revolution({
delay:9000,startheight:750,startwidth:'1900',onHoverStop:'off',hideThumbs:10,navigationType:'none',navigationArrows:'solo',navigationStyle:'round-old',navigationHAlign:'center',navigationVAlign:'center',touchenabled:'on',hideThumbsOnMobile:'off',hideBulletsOnMobile:'off',hideArrowsOnMobile:'off',fullWidth:'off',autoHeight:'on',fullScreenAlignForce:'off',forceFullWidth:'off',fullScreen:'off',shadow:0        });

});
</script>
</div>
</div>
<?php } ?>
<?php if($slidereffect == 2){ ?>
<div id="mj-slideshow" class="mj-full nextprevblack">
	<div class="tp-banner-container " style="">
    	<div class="tp-banner" >
        	<ul>
           <?php  if ($products) { ?>
            <?php foreach ($products as $product) { ?> 
           
            <li <?php if($product['link'] != ''){ $link = $product['link']; echo "data-link =\"$link\"";};?> data-transition="slidehorizontal" data-slotamount="7" data-masterspeed="1500"  >   
                 
                <img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" />
                
                <div class="tp-caption header-black-36 sfr customout" style="z-index: 2;" data-x="15" data-y="166" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="900" data-easing="Power4.easeOut" data-endspeed="500" data-captionhidden="on"><!--span style="background-color: <?php echo $product['color']?>; color: #fff; padding: 0 10px;"><?php echo $product['name']; ?></span--></div>
                <div class="tp-caption caption-black-17 customin customout start" style="z-index: 2;" data-x="15" data-y="235" data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="1900" data-easing="Power4.easeOut" data-endspeed="500" data-endeasing="Power4.easeIn" data-captionhidden="on"><?php html_entity_decode($product['desc_1']); ?></div>
                <div class="tp-caption customin customout start" style="z-index: 2;" data-x="15" data-y="320" data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;" data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;" data-speed="500" data-start="1100" data-easing="Power4.easeOut" data-endspeed="500" data-endeasing="Power4.easeIn" data-captionhidden="on">
                 <!--a href="#" >
                    <button type="button" class="button black">
                            <span style="color:<?php echo $product['color']?>; border-color:<?php echo $product['color']?>; " ><span style="color:<?php echo $product['color']?>; border-color:<?php echo $product['color']?>; ">SHOP NOW</span></span>
                    </button>
                </a-->   
                </div> 
                 
            </li>
           
            <?php } ?>  	
            <?php } else { ?>
            	<div><?php echo $text_sorry_no_slider;?></div>
            <?php } ?>
                
			</ul>
            <!--div class="tp-bannertimer"></div-->
    	</div>
		
        
</div>
	<script type="text/javascript">

    var tpj=jQuery;
    tpj.noConflict();

    tpj(document).ready(function() {

        tpj('.tp-banner').revolution({
delay:9000,startheight:750,startwidth:'1900',onHoverStop:'off',hideThumbs:10,navigationType:'bullet',navigationArrows:'solo',navigationStyle:'round',navigationHAlign:'center',navigationVAlign:'center',touchenabled:'on',hideThumbsOnMobile:'off',hideBulletsOnMobile:'off',hideArrowsOnMobile:'off',fullWidth:'on',autoHeight:'off',fullScreenAlignForce:'off',forceFullWidth:'on',fullScreen:'off',shadow:0        });

});
</script>
</div>
<?php } ?>

<?php if($slidereffect == 4){ ?>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/iosslider.css"/>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/iosslider-responsive.css"/>
<script src="catalog/view/theme/vigo/javascript/jquery.iosslider.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/ioseffects.js" type="text/javascript"></script>
<style type="text/css">

@media (min-width: 767px) and (max-width: 2600px){
.tp-slider-4{height:600px;margin-top:15px; width:65.80%; float:left;}
.iosSlider .slider .item img { width: 100%; height: 100%; }
}
</style>
<div class="sliderwrapper tp-slider-4">
	<div class="iosSlider">
    	<div class="slider">
        	<?php foreach ($products as $product) { ?>
            <div class="item">
            	<img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image']; ?>">
				<div class="sub-container normal">
                    <div class="slider-desc" >
                    	<div class="slider-desc-title font-eff"><?php echo $product['name']; ?></div>
                        <div class="slider-desc-content line-eff"><?php echo html_entity_decode($product['desc_1']); ?></div>
                    </div>
                    <div class="blank-dark" style="">&nbsp;</div>
                </div>
            </div>
            <?php } ?>
        	            
            
        </div>
        <div class="container">
        	<div class="slideSelectors arrow_ls">  
            	<div class="prev" style="cursor: pointer;"></div>
            </div>
                <!--<div class="toggle-button" style="cursor: pointer;"></div>-->
            <div class="slideSelectors arrow_rs">
                <div class="next" style="cursor: pointer;"></div>         
            </div>
        </div>
    </div>    
</div>
<script type="text/javascript">
        //&lt;![CDATA[
	jQuery(document).ready(function($) {    
	    $('.slideSelectors .toggle-button').click(function(){
		    if ($('.slideSelectors .toggle-button').hasClass('on'))
		    {
		        $('.iosSlider').iosSlider('autoSlidePlay');            
		    }else{
		        $('.iosSlider').iosSlider('autoSlidePause');
		    }
	    });
	$('.iosSlider').iosSlider({
	    desktopClickDrag: true,
	    snapToChildren: true,
	    infiniteSlider: true,
	    snapSlideCenter: true,
	    responsiveSlideContainer: true,
	    responsiveSlides: true,
	    autoSlideToggleSelector: $('.slideSelectors .toggle-button'),
	    navPrevSelector: $('.sliderwrapper .slideSelectors .prev'),
	    navNextSelector: $('.sliderwrapper .slideSelectors .next'),
	    onSlideComplete: slideComplete,
	    onSliderLoaded: sliderLoaded,
	    onSlideChange: slideChange,
	    autoSlide: true,
	    scrollbar: false,
	    autoSlideTimer: 7000,
	    keyboardControls: true,
	    autoSlideHoverPause: false	});
	});
        //]]&gt;
        </script>

	

<?php } ?>

<?php if($slidereffect == 5){ ?>
<div id="mj-slideshow" class="mj-full">
<div id="ps-container" class="ps-container"><!-- /ps-header -->
	<?php if ($products) { ?>
	<div class="ps-contentwrapper">
    
    	<?php foreach ($products as $product) { ?>
    	<div class="ps-content">
        <h1><?php echo $product['name']; ?></h1>
        <!--<span class="ps-price">$300.00</span>--><!--price-->
        <p><?php echo html_entity_decode($product['desc_1']); ?></p>
        <a href="<?php echo $product['link']; ?>" >
        	<button type="button" class="button black">
            <span style="color:<?php echo $product['color']?>; border-color:<?php echo $product['color']?>; ">ADD TO BAG</span>
            </button>
        </a>
         
    </div>
    
		<?php } ?>
        
    </div>
    <!-- /ps-contentwrapper -->
    <div class="ps-slidewrapper">
    	<div class="ps-slides">
        <?php foreach ($products as $product) { ?>
        	<div style="background-image: url('<?php echo $product['image']; ?>');">&nbsp;</div>
        <?php } ?>
        </div>
        <div class="nav-control"><a class="ps-prev" href="#">&nbsp;</a> <a class="ps-next" href="#">&nbsp;</a></div>
    </div>
    <?php } else { ?>
     	<div><?php echo $text_sorry_no_slider;?></div>
    <?php } ?>
</div> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/vigo/stylesheet/VerticalShowcaseSlider.css"/>
<script src="catalog/view/theme/vigo/javascript/jquery/modernizr.custom.79639.js" type="text/javascript"></script>
<script src="catalog/view/theme/vigo/javascript/jquery/VerticalShowcaseSlider.js" type="text/javascript"></script> 
<script type="text/javascript">
	var jqun=jQuery.noConflict();
    jqun(function($) {
    VSSlider.init();
    });
</script>
</div>
<?php } ?>
