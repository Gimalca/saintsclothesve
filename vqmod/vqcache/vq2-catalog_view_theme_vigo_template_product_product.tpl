<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div class="main-container col1-layout">

    <div class="breadcrumbs">
        <div class="container">
            <ul>
                <li>
                    <a title="Volver atrás" href="javascript:window.history.back();" style="margin-right: 5px">
                        <img src="catalog/view/theme/vigo/images/historyback.png">

                    </a>
                </li>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li>
                    <a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a> <span style="color:#ddd"> > </span> 
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>

    <div class="main container">
        <div id="notification"></div>
        <div class="col-main product-info">
            <script type="text/javascript">
            var optionsPrice = new Product.OptionsPrice({"productId":"10","priceFormat":{"pattern":"$%s","precision":2,"requiredPrecision":2,"decimalSymbol":".","groupSymbol":",","groupLength":3,"integerRequired":1},"includeTax":"false","showIncludeTax":false,"showBothPrices":false,"productPrice":321,"productOldPrice":321,"priceInclTax":321,"priceExclTax":321,"skipCalculate":1,"defaultTax":8.25,"currentTax":0,"idSuffix":"_clone","oldPlusDisposition":0,"plusDisposition":0,"plusDispositionTax":0,"oldMinusDisposition":0,"minusDisposition":0,"tierPrices":[],"tierPricesInclTax":[]});</script>
            <div id="messages_product_view"></div>
            <div class="product-view">
                <div class="row">
                    <div class="product-essential col-md-12">
                        <div class="product-img-box col-md-6 col-sm-12">
                            <ul id="etalage">
                                <li>
                                    <img class="etalage_thumb_image" src="<?php echo $thumb; ?>" alt="<?php echo $product['name']; ?>"/>
                                    <img class="etalage_source_image" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"  />
                                </li>
 
                                <?php foreach($images as $image) { ?>
                                <li>
                                    <img class="etalage_thumb_image" src="<?php echo $image['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                                    <img class="etalage_source_image" src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>"  />
                                </li>
                                <?php } ?>
                            </ul>
                            <div class="etalage-control">
                                <a href="javascript:void(0)" class="etalage-prev">Previous</a>
                                <a href="javascript:void(0)" class="etalage-next">Next</a>
                            </div>
                            <div class="clear"></div>
                        </div>

                           <script type="text/javascript">
                                    jQuery(document).ready(function(){
                                        var width = jQuery('.product-view .product-img-box').width() * 0.52;
                                        var src_img_width = 80;
                                        var src_img_height = 100;
                                        var ratio_width = 300;
                                        var ratio_height = 455;
                                        
                                        src_img_width = 100 * ratio_width / ratio_height;
                                        var height = width * ratio_height / ratio_width;
                                
                                        jQuery('#etalage').etalage({
                                            thumb_image_width: width,
                                            thumb_image_height: height,
                                            source_image_width: src_img_width,
                                            source_image_height: src_img_height,
                                            zoom_area_width: width,
                                            zoom_area_height: height,
                                            zoom_enable: false,
                                            smallthumb_hide_single: false,
                                            smallthumbs_position: 'left',
                                            show_icon: false,
                                            autoplay: false
                                        });
                                        jQuery(".product-img-box .etalage li.etalage_thumb").zoom();
                                       // jQuery('.product-view .product-img-box .etalage-control a').css('left',((jQuery('.etalage_small_thumbs').width()-25)/2)+"px");
                                        if(jQuery('.etalage_small_thumbs').width() == 0)
                                       //     jQuery('.product-view .product-img-box .etalage-control a').css('left',((jQuery('.etalage_small_thumbs img').first().width()-25)/2)+"px");
                                        jQuery(window).resize(function(e){
                                            var width = jQuery('.product-view .product-img-box').width() * 0.72;
                                            var height = width * ratio_height / ratio_width;
                                            zoom_enabled = false;
                                            if(jQuery(window).width()<480)
                                                zoom_enabled = false;
                                            jQuery('#etalage').etalage({
                                                thumb_image_width: width,
                                                thumb_image_height: height,
                                                source_image_width: src_img_width,
                                                source_image_height: src_img_height,
                                                zoom_area_width: width,
                                                zoom_area_height: height,
                                                zoom_enable: zoom_enabled,
                                                smallthumb_hide_single: false,
                                                smallthumbs_position: 'left',
                                                show_icon: true,
                                                autoplay: false
                                            });
                                            jQuery('.product-view .product-img-box .etalage-control a').css('left',((jQuery('.etalage_small_thumbs').width()))+"px");
                                        });
                                        jQuery('.etalage-prev').on('click', function(){
                                            etalage_previous();
                                        });
                                
                                        jQuery('.etalage-next').on('click', function(){
                                            etalage_next();
                                        });
                                    });
                                </script>
                        

                        <div class="product-shop col-md-5 col-sm-12">
                            <div class="product-name">
                                <h1><?php echo $heading_title; ?></h1>
                                
                               
                            </div>
                             <!--p class="availability in-stock"><?php echo $text_manufacturer; ?> <span> <a href="<?php echo $manufacturers; ?>"><?php echo $manufacturer; ?></a></span></p-->
                           
                             <p class="availability in-stock"> <img src="<?php if($stock == 'Out Of Stock')echo 'image/agotado_icon.png'; if($stock == 'In Stock' || $stock =='En stock')echo 'image/existencia_icon.png'; ?>"> <?php //echo $text_stock; ?><span style="color: <?php if($stock == 'Out Of Stock')echo 'red'; if($stock == 'In Stock' || $stock =='En stock')echo 'green'; ?>  " ><?php echo $stock; ?></span></p>
                           
                             <!--div class="short-description"><?php echo $description; ?></div-->
                            <!--div class="ratings">
                                <div class="rating-box">
                                        <?php $product_rate =  $rating * 20; ?>
                                    <div class="rating" style="width:<?php echo $product_rate?>%;"></div>
                                </div>
                                
                                <p class="rating-links">
<a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $reviews; ?></a>
                            <span class="separator">|</span>
                            <a onclick="$('a[href=\'#tab-review\']').trigger('click');"><?php echo $text_write; ?></a>
                                                                                            </p>
                                                        </div-->

                            <div class="price-box">
                                <?php if ($price) { ?>
                                <div class="price">
                                    <?php if (!$special) { ?>
                                    <span class="regular-price"><span class="price"><?php echo $price; ?></span></span>
                                    <?php } else { ?>
                                    <p class="old-price"><span class="price"><?php echo $price; ?></span></p> 
                                    <p class="special-price"><span class="price"><?php echo $special; ?></span></p>
                                    <?php } ?>

                                    <?php if ($tax) { ?>
                                    <!--span class="price-tax"><?php echo $text_tax; ?> <?php echo $tax; ?></span-->
                                    <?php } ?>
                                    <?php if ($points) { ?>
                                    <br />

                                    <span class="reward"><small><?php echo $text_points; ?> <?php echo $points; ?></small></span>
                                    <?php } ?>


                                    <?php if ($discounts) { ?>
                                    <div class="discount">
                                        <?php foreach ($discounts as $discount) { ?>
                                        <?php echo sprintf($text_discount, $discount['quantity'], $discount['price']); ?>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>
                                </div>
                                <?php } ?>
                            </div>                            
                            
                           


                            <?php if ($profiles): ?>
                            <div class="option">
                                <h2><?php echo $text_payment_profile ?><span class="required">*</span></h2>
                                <select name="profile_id">
                                    <option value=""><?php echo $text_select; ?></option>
                                    <?php foreach ($profiles as $profile): ?>
                                    <option value="<?php echo $profile['profile_id'] ?>"><?php echo $profile['name'] ?></option>
                                    <?php endforeach; ?>
                                </select>

                                <span id="profile-description"></span>

                            </div>
                            <?php endif; ?>


                            <div id="product-options-wrapper" class="product-options">
                                <?php if ($options) { ?>
                                <div class="options">

                                    <?php foreach ($options as $option) { ?>

                                    <?php if ($option['type'] == 'select') { //print_r($option);?>
                                    <div class="controloption option-product" id="option-<?php echo $option['product_option_id']; ?>">
                                        <span>
                                            <span class="input-box">
                                                <?php if ($option['required']) { ?>
                                                <!--<span class="required">*</span>-->
                                                <?php } ?>
                                                <div class="name-option"><?php echo $option['name'] ?>:</div>
                                                <select name="option[<?php echo $option['product_option_id']; ?>]">
                                                    <!--option value=""><?php echo $text_select; ?></option-->
                                                    <?php foreach ($option['option_value'] as $option_value) { ?>
                                                    <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </option>
                                                    <?php } ?>
                                                </select>
                                            </span>
                                        </span>
                                    </div>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'radio') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                        <?php if ($option['required']) { ?>
                                        <span class="required">*</span>
                                        <?php } ?>
                                        <?php foreach ($option['option_value'] as $option_value) { ?>
                                        <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>"   class="radio"/>

                                        <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                            <?php if ($option_value['price']) { ?>
                                            (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                            <?php } ?>
                                        </label>
                                        <?php } ?>
                                    </div>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'checkbox') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <div class="input-box">
                                                <?php foreach ($option['option_value'] as $option_value) { ?>
                                                <label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                    <?php if ($option_value['price']) { ?>
                                                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                    <?php } ?>
                                                </label>
                                                <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /> 
                                                <?php } ?>
                                            </div>
                                        </li>
                                    </ul>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'image') { ?>
                                    <div id="option-<?php echo $option['product_option_id']; ?>" class="option">
                                        <?php if ($option['required']) { ?>
                                        <span class="required">*</span>
                                        <?php } ?>
                                        <b><?php echo $option['name']; ?>:</b><br />
                                        <table class="option-image">
                                            <?php foreach ($option['option_value'] as $option_value) { ?>
                                            <tr>
                                                <td style="width: 1px;"><input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" id="option-value-<?php echo $option_value['product_option_value_id']; ?>" /></td>
                                                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" /></label></td>
                                                <td><label for="option-value-<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                                                        <?php if ($option_value['price']) { ?>
                                                        (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                                                        <?php } ?>
                                                    </label></td>
                                            </tr>
                                            <?php } ?>
                                        </table>
                                    </div>

                                    <?php } ?>

                                    <?php if ($option['type'] == 'text') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <div class="field name-firstname">
                                                <div class="input-box">
                                                    <input class="input-text required-entry" name="option[<?php echo $option['product_option_id']; ?>]" placeholder="<?php echo $option['name']; ?>: *" value="<?php echo $option['option_value']; ?>">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'textarea') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <div class="input-box input-comment">
                                                <div class="input-box">
                                                    <textarea class="input-text required-entry" placeholder="<?php echo $option['name']; ?>: *" name="option[<?php echo $option['product_option_id']; ?>]" cols="40" rows="5"><?php echo $option['option_value']; ?></textarea>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'file') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <label class="file_name"><?php echo $option['name']; ?>:
                                                <?php if ($option['required']) { ?>
                                                <span class="required">* </span>
                                                <?php } ?>
                                            </label>
                                            <input  type="button" class="button btn-cart" value="<?php echo $button_upload; ?>" id="button-option-<?php echo $option['product_option_id']; ?>" >
                                            <input type="hidden" name="option[<?php echo $option['product_option_id']; ?>]" value="" />
                                        </li>
                                    </ul>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'date') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <div class="input-box input-comment">
                                                <div class="input-box">
                                                    <input type="text" class="date input-text required-entry" placeholder="<?php echo $option['name']; ?>: *"  value="<?php echo $option['option_value'];?>" name="option[<?php echo $option['product_option_id']; ?>]">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <?php } ?>

                                    <?php if ($option['type'] == 'datetime') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <div class="input-box input-comment">
                                                <div class="input-box">
                                                    <input  type="text" class="datetime input-text required-entry" placeholder="<?php echo $option['name']; ?>: *"  value="<?php echo $option['option_value'];?>" name="option[<?php echo $option['product_option_id']; ?>]">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <?php } ?>
                                    <?php if ($option['type'] == 'time') { ?>
                                    <ul class="form-list">
                                        <li id="option-<?php echo $option['product_option_id']; ?>" class="control option">
                                            <div class="input-box input-comment">
                                                <div class="input-box">
                                                    <input type="text" class="time input-text required-entry" placeholder="<?php echo $option['name']; ?>: *" value="<?php echo $option['option_value'];?>" name="option[<?php echo $option['product_option_id']; ?>]">
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <?php } ?>

                                    <?php } ?>

                                </div>
                                <?php } ?>
                                
                                <div class="qty-holder">
                                    <div class="name-option">Cantidad:</div> 

                                    <select name="quantity" id="" ">
                                        <option selected="" value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                        <option value="10">10</option>



                                    </select>


                                </div>
                                <input type="hidden" name="product_id" size="2" value="<?php echo $product_id; ?>" />
                                <!--div class="qty-holder">
                                    
                                   

                                    <div class="qty-changer">
                                        <a class="qty_inc" href="javascript:void(0)" style="text-decoration: none;" ><span>+</span></a>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <script type="text/javascript">
                                            jQuery(document).ready(function(){
                                    jQuery(".qty_inc").click(function(){
                                    jQuery(this).parent().parent().children("input#qty").val(( + jQuery(this).parent().parent().children("input#qty").val() + 1) || 0);
                                    });
                                    }); 
                                </script-->

                            </div>






                            <!--div class="add-to-cart">

                            </div-->      


                            <div class="add-to-box">
                                <div class="add-to-cart">

                                    <button type="button" value="<?php echo $button_cart; ?>" id="button-cart" class="button btn-cart" ><span><span><?php echo $button_cart;?></span></span></button>
                                </div>
                                <ul class="add-to-links">
                                    <li><a class="link-wishlist" onclick="addToWishList('<?php echo $product_id; ?>');"><?php echo $button_wishlist; ?> </a></li>
                                    <!--li><span class="separator">|</span> <a class="link-compare" onclick="addToCompare('<?php echo $product_id; ?>');"><?php echo $button_compare; ?></a></li-->
                                </ul>
                            </div>

                            <div class="product-accordion col-md-10 col-sm-12">
                    <div class="product-collateral akordeon">
                        <div class="box-collateral box-description akordeon-item ">
                            <!--div class="akordeon-item-head akordeon-border-bottom">
                                <div class="akordeon-item-head-container">
                                    <div class="akordeon-heading">
                                        <?php echo $tab_description; ?>
                                    </div>
                                </div>
                            </div-->

                            <div class="akordeon-item-body akordeon-border-bottom">
                                <div class="akordeon-item-content">
                                    <?php echo $description; ?>
                                </div>
                            </div>
                        </div>

                        <div class="box-collateral box-tags akordeon-item">
                            <!--div class="akordeon-item-head">
                                <div class="akordeon-item-head-container">
                                    <div class="akordeon-heading">
                                        <?php echo $tab_attribute; ?>           
                                    </div>
                                </div>
                            </div-->

                            <div class="akordeon-item-body">
                                <div class="akordeon-item-content">
                                    <?php if ($attribute_groups) { ?>
                                    <div id="tab-attribute" class="tab-content">
                                        <table class="attribute">
                                            <?php foreach ($attribute_groups as $attribute_group) { ?>
                                            <thead>
                                                <tr>
                                                    <td colspan="2"><?php echo $attribute_group['name']; ?></td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($attribute_group['attribute'] as $attribute) { ?>
                                                <tr>
                                                    <td><?php echo $attribute['name']; ?></td>
                                                    <td><?php echo $attribute['text']; ?></td>
                                                </tr>
                                                <?php } ?>
                                            </tbody>
                                            <?php } ?>
                                        </table>
                                    </div>
                                    <?php } ?>                        
                                    <script type="text/javascript">
                                                //<![CDATA[
                                                var addTagFormJs = new VarienForm('addTagForm');
                                                function submitTagForm(){
                                                if (addTagFormJs.validator.validate()) {
                                                addTagFormJs.form.submit();
                                                }
                                                }
                                        //]]>
                                    </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            <div class="clear"></div>
                            <!-- AddThis API Config END -->
                            <style type="text/css">
                               .sharing-tool-area a span{ background-color: #000 !important}
                            </style>
                            <div class="sharing-tool-area">
                                <span class="label">Share: </span>
                                <div class="addthis_toolbox addthis_default_style addthis_20x20_style" >
                                    <a class="addthis_button_preferred_1 "></a>
                                    <a class="addthis_button_preferred_2"></a>
                                    <a class="addthis_button_preferred_3"></a>
                                    <a class="addthis_button_preferred_4"></a>
                                    <a class="addthis_button_compact"></a>
                                    <a class="addthis_counter addthis_bubble_style"></a>
                                </div>  
                            </div>
                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
                            <!-- AddThis Button END -->
                        </div>
                    </div>
                    

                </div>
                <div class="clearer"></div>
            </div>
            <div class="row">
                

                <!--div class="product-review-area col-md-6 col-sm-12">
                        <div class="block block-reviews">
                        <div class="block-title">
                                <strong><span><?php echo $text_write; ?></span></strong>
                        </div>
                        
                        <div class="block-content">
                                <div id="customer-reviews" class="box-collateral box-reviews">
                                <div class="review-counts">
                                        <?php echo $reviews; ?> for	<span>"<?php echo $heading_title; ?>"</span>
                                </div>
                                
                                <span class="rating-star">
                                        <img src="catalog/view/theme/vigo/image/stars-<?php echo $rating; ?>.png" alt="<?php echo $reviews; ?>" />
                                </span>
                                <div class="clear"></div>
                                    
                                <?php if ($review_status) { ?>	
                                
                              <div class="tab-content">
                                <div id="review"></div>
                                        <div class="accordion-header">
                                        <div class="addreview">
                                                <div class="buttons-set"> 
                                                <button class="button btn-write">
                                                <span><span><?php echo $text_add_review;?></span></span>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="accordion-content">    
                                        
                                        <div id="tab-review" class="tab-content">
            <div id="review"></div>
            <h2 id="review-title"><?php echo $text_write; ?></h2>
            <br />
            <ul class="form-list">
                <li>
            <input type="text" name="name" value="" class="input-text required-entry" placeholder="<?php echo $entry_name; ?>"/>
            </li>
            <br />
            <br />
            <li>
            <textarea name="text" cols="40" rows="8" style="width: 100%;" class="input-text required-entry" placeholder="<?php echo $entry_review; ?>"></textarea>
            <span style="font-size: 11px;"><?php echo $text_note; ?></span><br />
            </li>
            <br />
                <li>
            <b><?php echo $entry_rating; ?></b> <span><?php echo $entry_bad; ?></span>&nbsp;
            <input type="radio" name="rating" value="1" />
            &nbsp;
            <input type="radio" name="rating" value="2" />
            &nbsp;
            <input type="radio" name="rating" value="3" />
            &nbsp;
            <input type="radio" name="rating" value="4" />
            &nbsp;
            <input type="radio" name="rating" value="5" />
            &nbsp;<span><?php echo $entry_good; ?></span><br />
            </li>
            <br />
            <li>
            
            <input type="text" name="captcha" value="" class="input-text required-entry" placeholder="<?php echo $entry_captcha; ?>"/>
            </li>
            <br />
            <li>
            <img src="index.php?route=product/product/captcha" alt="" id="captcha" /><br />
            </li>
            </ul>
            <div class="buttons">
              <div class="right"><a id="button-review" class="button"><?php echo $button_continue; ?></a></div>
            </div>
          </div>
                                    </div>
                                </div>
            
                                <?php } ?>
                            </div>
                        </div>
                        </div>
                </div-->
            </div>

            <?php $a=count($products)?>
            <?php if($a!=0){ ?>
            <div class="row">
                <div class="col-md-12">
                    <div class="block block-related">
                        <div class="block-title"><strong><span><?php echo $tab_related;?></span></strong></div>
                        <div class="block-content">
                            <ul class="bxslider" id="block_related">
                                <?php foreach ($products as $product) { ?>
                                <li>
                                    <div class="product-image-area">
                                        <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                                        </a>
                                        <div class="clearer"></div>
                                    </div>
                                    <h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
                                    <div class="price-box">
                                        <?php if($product['special']){ ?>
                                        <p class="old-price">
                                            <span class="price"> <?php echo $product['price'];?> </span>
                                        </p>
                                        <p class="special-price">
                                            <span class="price"> <?php echo $product['special'];?> </span>
                                        </p>
                                        <?php }else{ ?>
                                        <span class="regular-price">
                                            <span class="price"><?php echo $product['price'];?></span>
                                        </span>     
                                        <?php } ?>    
                                    </div>
                                </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <?php } ?>   
        </div>


    </div> 





    <script type="text/javascript">decorateList('block-related', 'none-recursive')</script> 
    <script type="text/javascript">// <![CDATA[
                jQuery(document).ready(function(){
        var window_size = jQuery(window).width();
                var logo_slider;
            if (window_size < 992 && window_size >= 768){    
        logo_slider = jQuery('.block-related ul#block_related').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 6,  slideWidth: 130,  slideMargin: 15});
            } else if (window_size < 768){    
        logo_slider = jQuery('.block-related ul#block_related').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
            } else {    
        logo_slider = jQuery('.block-related ul#block_related').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides:6,  slideWidth:130,  slideMargin: 20});
                }
        jQuery(window).resize(function(e){
        e.preventDefault();
                var window_size = jQuery(window).width();
                var time_out;
                if (time_out) clearTimeout(time_out);
                time_out = setTimeout(function(){
            if (window_size < 992 && window_size >= 768    ){
                logo_slider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 130,  slideMargin: 15});
            } else if (window_size < 768    ){
                logo_slider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
            } else     {
                logo_slider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 4,  maxSlides: 4,  slideWidth:130,  slideMargin: 20});
                }
                }, 100);
                });
                });
    // ]]></script>   
    <script type="text/javascript">
    //<![CDATA[
                jQuery(document).ready(function(){
       //   jQuery('.akordeon.product-collateral').akordeon({ buttons: true, toggle: true, hiddenItem: 1});
                });
    //]]>
    </script>				

    <script type="text/javascript">
                var lifetime = 3600;
                var expireAt = Mage.Cookies.expires;
                if (lifetime > 0) {
        expireAt = new Date();
                expireAt.setTime(expireAt.getTime() + lifetime * 1000);
                }
        Mage.Cookies.set('external_no_cache', 1, expireAt);</script>	


    <?php echo $content_bottom; ?>

    <script type="application/javascript">
        function imagechange(imgsrc)
        {
        document.getElementById("productimage").src=imgsrc;
        }
    </script>

    <script type="text/javascript"><!--

                $('select[name="profile_id"], input[name="quantity"]').change(function(){
        $.ajax({
        url: 'index.php?route=product/product/getRecurringDescription',
                type: 'post',
                data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
                dataType: 'json',
                beforeSend: function() {
                $('#profile-description').html('');
                },
                success: function(json) {
                $('.success, .warning, .attention, information, .error').remove();
                        if (json['success']) {
                $('#profile-description').html(json['success']);
                }
                }
        });
                });
                $('#button-cart').bind('click', function() {
        $.ajax({
        url: 'index.php?route=checkout/cart/add',
                type: 'post',
                data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
                dataType: 'json',
                success: function(json) {
                $('.success, .warning, .attention, information, .error').remove();
                        if (json['error']) {
                if (json['error']['option']) {
                for (i in json['error']['option']) {
                $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                }
                }

                if (json['error']['profile']) {
                $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                }
                }

                if (json['success']) {
                   // $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>');
                   //         $('.success').fadeIn('slow');
                          $('#cart-total').html(json['total']);    

            	$('#cart').addClass('active');
		
				$('#cart').load('index.php?route=module/cart #cart > *');
		
				setTimeout(function() {$('#cart').removeClass('active');}, 5000);
            
                          $('html, body').animate({ scrollTop: 0 }, 'slow');
                          $('#topCartContent').show() 
                          $('.mybag-link').html(json['total']);
                         
                    }
                }
        });
                });
    //--></script>
    <?php if ($options) { ?>
    <script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/ajaxupload.js"></script>
    <?php foreach ($options as $option) { ?>
    <?php if ($option['type'] == 'file') { ?>
    <script type="text/javascript"><!--
            new AjaxUpload('#button-option-<?php echo $option['product_option_id']; ?>', {
                action: 'index.php?route=product/product/upload',
                        name: 'file',
                        autoSubmit: true,
                        responseType: 'json',
                        onSubmit: function(file, extension) {
                        $('#button-option-<?php echo $option['product_option_id']; ?>').after('<img src="catalog/view/theme/vigo/image/loading.gif" class="loading" style="padding-left: 5px;" />');
                                $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', true);
                        },
                        onComplete: function(file, json) {
                        $('#button-option-<?php echo $option['product_option_id']; ?>').attr('disabled', false);
                                $('.error').remove();
                                if (json['success']) {
                        alert(json['success']);
                                $('input[name=\'option[<?php echo $option['product_option_id']; ?>]\']').attr('value', json['file']);
                        }

                        if (json['error']) {
                        $('#option-<?php echo $option['product_option_id']; ?>').after('<span class="error">' + json['error'] + '</span>');
                        }

                        $('.loading').remove();
                        }
                });
    //--></script>
    <?php } ?>
    <?php } ?>
    <?php } ?>
    <script type="text/javascript"><!--
    $('#review .pagination a').live('click', function() {
        $('#review').fadeOut('slow');
                $('#review').load(this.href);
                $('#review').fadeIn('slow');
                return false;
                });
                $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
                $('#button-review').bind('click', function() {
        $.ajax({
        url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
                type: 'post',
                dataType: 'json',
                data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
                beforeSend: function() {
                $('.success, .warning').remove();
                        $('#button-review').attr('disabled', true);
                        $('#review-title').after('<div class="attention"><img src="catalog/view/theme/vigo/image/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
                },
                complete: function() {
                $('#button-review').attr('disabled', false);
                        $('.attention').remove();
                },
                success: function(data) {
                if (data['error']) {
                $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
                }

                if (data['success']) {
                $('#review-title').after('<div class="success">' + data['success'] + '</div>');
                        $('input[name=\'name\']').val('');
                        $('textarea[name=\'text\']').val('');
                        $('input[name=\'rating\']:checked').attr('checked', '');
                        $('input[name=\'captcha\']').val('');
                }
                }
        });
                });
    //--></script> 
    <script type="text/javascript"><!--
    $('#tabs a').tabs();
    //--></script> 
    <script type="text/javascript" src="catalog/view/theme/vigo/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script> 
    <script type="text/javascript"><!--
    $(document).ready(function() {
        if ($.browser.msie && $.browser.version == 6) {
        $('.date, .datetime, .time').bgIframe();
        }
    
        $('.date').datepicker({dateFormat: 'yy-mm-dd'});
                $('.datetime').datetimepicker({
        dateFormat: 'yy-mm-dd',
                timeFormat: 'h:m'
    });    
                $('.time').timepicker({timeFormat: 'h:m'});
                });
    //--></script> 
</div>

<?php echo $footer; ?>
