<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<script type="text/javascript">
//&lt;![CDATA[
    jQuery(document).ready(function(){
        var scrolled = false;
        jQuery(window).scroll(function(){
            if(200<jQuery(window).scrollTop() && !scrolled){
                jQuery('.navbar').addClass('sticky-menu').css('top','-50px').animate({top:'0px'}, 500);
                scrolled = true;
            }
            if(200>jQuery(window).scrollTop() && scrolled){
                jQuery('.navbar').removeClass('sticky-menu');
                scrolled = false;
            }
        })
        jQuery("#nav_custom li.level0").mouseover(function(){
            if(jQuery(window).width() >= 768){
                jQuery(this).children('ul.level1').fadeIn();
            }
            return false;
        }).mouseleave(function(){
            if(jQuery(window).width() >= 768){
                jQuery(this).children('ul.level1').fadeOut();
            }
            return false;
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
        /*
        var flg = false;
        jQuery("#nav_custom a").mouseover(function(){
            var thumb_image = jQuery(this).parent().attr("thumb_image");
            if(thumb_image != "no-image")
                jQuery("#nav_custom li.thumbnail-image-area img").attr("src",thumb_image);
        });
        */
    });
//]]&gt;
</script>

<div id="content" class="main-container col1-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
	<div class="col-main">
    	
		<div id="messages_product_view"></div>
                
        <div class="contacts-area col-md-offset-1 col-md-10 col-sm-10 col-xs-12">
  			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            	<div class="block ">
                   
                    <div class="block-content" style="text-transform: uppercase; text-align: justify">
                        <h1> Si necesitas información sobre saints clothes o eres una tienda interesada en nuestros productos  ¡escríbenos!</h1>
                    </div>
                    <br/><br/>
                    <div class="block-content">
                    	<ul class="form-list col-md-6 col-sm-12 col-xs-12 first">
                        	<li class="fields">
                                <div class="field">
                                	<div class="input-box name-firstname">
                                    <input type="text" name="name" value="<?php echo $name; ?>" class="input-text required-entry" placeholder="   Nombre*"/>
                                    </div>
                                    <?php if ($error_name) { ?>
                                    <span class="error"><?php echo $error_name; ?></span>
                                    <?php } ?>
                                </div>
                                <div class="field">
                                	<div class="input-box input-email">
                                    <input type="text" name="email" value="<?php echo $email; ?>" class="input-text required-entry"  placeholder="   Email*"/>
                                    </div>
                                    <?php if ($error_email) { ?>
                                    <span class="error"><?php echo $error_email; ?></span>
                                    <?php } ?>
                                </div>
                                
                            </li>
                            <li class="wide required for-desktop">
                                <p class="required">
                                </p>
                            </li>
						</ul>
                        <ul class="form-list col-md-6 col-sm-12 col-xs-12">
                        	<li class="wide">
                            	<div class="field">
	                            	<div class="input-box input-comment">
                                <textarea name="enquiry" cols="40" rows="10" style="width: 99%;" class="input-text required-entry" placeholder="  Mensaje*"><?php echo $enquiry; ?></textarea>
                                </div>
                                </div>
                                <div class="field col-md-6 inputcaptch">
									<div class="input-box input-captch">
                                    	<input type="text" name="captcha" value="<?php echo $captcha; ?>" class="input-text required-entry"  placeholder="Código*"/>
                                    </div>
                                </div>
                                <div class="field col-md-6">
									<div class="input-box input-captch-image">
                            <img src="index.php?route=information/contact/captcha" alt="captch image" />
                            <?php if ($error_captcha) { ?>
                            <span class="error"><?php echo $error_captcha; ?></span>
                            <?php } ?>
                                    </div>
                                </div>
                                <?php if ($error_enquiry) { ?>
                                <span class="error"><?php echo $error_enquiry; ?></span>
                                <?php } ?>
                            </li>
                            <li class="wide required for-mobile">
	                            <p class="required"></p>
                            </li>
                            <li class="wide form-button">
                            <button class="button " title="Post Comment" type="submit" value="<?php echo $button_continue; ?>">
	                            <span><span><?php echo $button_continue; ?></span></span>
                            </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </form>
    	</div>
               
  </div>
 
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>