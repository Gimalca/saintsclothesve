<div class="block block-manufacturers">
	<div class="block-title">
    	<strong>
			<span>Manufacturers</span>
		</strong>
    </div>
    
    <div class="block-content">
        <ul>
            <?php foreach ($banners as $banner) { ?>
                <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
                
            <?php } ?>
        </ul>
    </div>
	
</div>
    
<script type="text/javascript">// <![CDATA[
                    jQuery(document).ready(function(){
                        var window_size = jQuery(window).width();
                        var logo_slider;
                        if(window_size<992 && window_size >= 768){
                            logo_slider=jQuery('.block-manufacturers ul').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                        } else if(window_size<768){
                            logo_slider=jQuery('.block-manufacturers ul').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                        }else {
                            logo_slider=jQuery('.block-manufacturers ul').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                        }
                        jQuery(window).resize(function(e){
                            e.preventDefault();
                            var window_size = jQuery(window).width();
                            var time_out;
                            if(time_out) clearTimeout(time_out);
                            time_out = setTimeout(function(){
                                if(window_size<992 && window_size >= 768){
                                    logo_slider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 230,  slideMargin: 15});
                                } else if(window_size<768){
                                    logo_slider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                                }else {
                                    logo_slider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth: 270,  slideMargin: 20});
                                }
                            }, 100);
                        });
                    });
// ]]></script>



