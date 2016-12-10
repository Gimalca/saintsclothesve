<?php echo $header; ?>

<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="main-container col1-layout"><?php echo $content_top; ?>
    <div>

    </div>


    <div class="main container">
       
        <h1>
            <?php echo $heading_title; ?>
        </h1>
         <?php if ($attention) { ?>
<div class="attention"><?php echo $attention; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
        <div id="shopping_process_bar" class="col-md-12 hidden-xs">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>
                        <td>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tbody>
                                    <tr>
                                    <tr>
                                        <td colspan="2"><div class="billing-block-wrapper" style="border-top: 1px solid #000000;width:100%;"></div></td>
                                    </tr>
                                <td width="800" align="left">
                                    <ul id="progressTracker">
                                        <li id="pt1" class="active-checkout heading2"><?php echo $text_cart; ?>  </li>
                                        <li><b> > </b></li>
                                        <li id="pt2" class=" heading2"><?php echo $text_checkout_option; ?>  </li>
                                        <li><b> > </b></li>
                                        <li id="pt3" class="heading2"><?php echo $text_checkout_payment_address; ?> </li>
                                        <li><b> > </b></li>
                                        <li id="pt4" class="heading2"><?php echo $text_checkout_shipping_address; ?>  </li>
                                        <li><b> > </b></li>
                                        <li id="pt5" class=" heading2"><?php echo $text_checkout_shipping_method; ?>  </li>
                                        <li><b> > </b></li>
                                        <li id="pt6" class="heading2"><?php echo $text_checkout_payment_method; ?> </li>
                                        <li><b> > </b></li>
                                        <li id="pt7" class="heading2"><?php echo $text_checkout_confirm; ?>  </li>
                                    </ul>
                                </td>
                    </tr>

                </tbody></table>
            </td>
            </tr>
            </tbody></table>
        </div>
        <div class="col-main">
            <div class="cart">
                <div class="page-title title-buttons">
                    <h1><?php echo $heading_title; ?></h1>
                </div>
                <div class=" row carro-compras">
                    <form id="cart_checkout" action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                        <fieldset class="col-md-12">
                            <div class="row ">
                                <div class="col-md-8 col-sm-12" >
                                    <?php $qt = 0; foreach ($products as $product) { ?>
                                    <div class="carro-producto col-xs-12 col-sm-6 col-md-12">

                                        <div class="imagen-producto col-md-2">

                                            <?php if ($product['thumb']) { ?>                        
                                            <a class="product-image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                            <?php } ?>
                                        </div>

                                        <div class="nombre-container col-md-10" >
                                            <div class="col-md-12">
                                            <h2 class="product-name">
                                                <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                                               
                                            </h2>
                                                <p style=" text-transform: uppercase; font-size: 10px"> <?php echo $column_model;?>: <b><?php echo $product['model']; ?></b> </p>
                                                </div>
                                            <div class="col-md-12">
                                                <div class="col-md-6">
                                                    <div class="item-options">
                                                        <ul class=" list-inline"> 
                                                            <?php foreach ($product['option'] as $option) { ?>
                                                            <li>
                                                                <?php echo $option['name']; ?>: <b><?php echo $option['value']; ?></b>
                                                            </li>
                                                            <?php } ?>
                                                        </ul>
                                                    </div>

                                                </div>
                                                <div class="col-md-6" style="padding: 0px">
                                                    <div class="item-options right ">
                                                        <ul class=" list-inline">    
                                                             <li>
                                                                <div class="qty-holder">
                                                                    <?php echo $column_quantity; ?>:
                                                                    <select name="quantity[<?php echo $product['key']; ?>]" id="" onchange="change_quantity()">
                                                                        <?php 
                                                                        $x = 1; 

                                                                        while($x <= 10) { ?>
                                                                        <option <?php if($product['quantity'] == $x ) echo 'selected'?> value="<?php echo $x ?>"><?php echo $x ?></option>
                                                                        <?php  $x++;
                                                                        } 
                                                                        ?>

                                                                    </select>
                                                                </div>
                                                            </li>

                                                            <?php if($product['recurring']): ?>
                                                            <li>
                                                                <?php echo $text_payment_profile ?>: <b><?php echo $product['profile_name'] ?></b>
                                                            </li>
                                                            <?php endif; ?>
                                                            <?php if ($product['reward']) { ?>
                                                            <li><?php echo $product['reward']; ?></li>
                                                            <?php } ?>
                                                           
                                                           
                                                            <!--li>
                                                                <span class="cart-price">
                                                                    <?php echo $column_price; ?>:&nbsp &nbsp<span class="price"><?php echo $product['price']; ?></span>
                                                                </span>
                                                            </li-->
                                                            <li>
                                                                <span class="cart-price">
                                                                    <?php //echo $column_total; ?>&nbsp &nbsp &nbsp <span class="price"><b>  <?php echo $product['total']; ?></b></span>
                                                                </span>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                             <div class="col-md-6">
                                                 <p class="availability in-stock"> 
                                                     <img src="<?php if(!$product['stock'])echo 'image/agotado_icon.png'; if($product['stock'])echo 'image/existencia_icon.png'; ?>"> 
                                                     <?php //echo print_r($product); ?>
                                                     <span style="color: <?php if(!$product['stock'])echo 'red'; if($product['stock'])echo 'green'; ?>  " >
                                                       <?php if(!$product['stock'])echo 'Out of Stock'; if($product['stock'])echo 'In Stock'; ?>
                                                     </span></p>
                                                   
                                                </div>
                                            
                                            


                                        </div>
                                       

                                    </div>
                                   
                                            <?php foreach ($vouchers as $voucher) { ?>
                                            <a class="btn-remove btn-remove2 top-btn-remove" title="Remove This Item" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *');" /></a>
                                            <?php } ?>
                                            <a class="right" style=" margin-bottom: 10px" href="<?php echo $product['remove']; ?>">Borrar | Comprar Despues </a>
                                    

                                    <?php $qt= $qt+$product['quantity'];  } ?>
                                </div>

                                <div class="col-md-4 col-sm-12" >
                                    <div class="totals">
                                        <div class="sumario">
                                            <div class="titulo col-md-12">
                                                Sumario de compra
                                            </div>
                                            <div class="precio col-md-12">
                                                
                                                   
                                                <div class="row sumario-sub ">
                                                    <div class="col-md-6 col-xs-4" style="text-align: left;"><?php echo $column_quantity; ?></div>
                                                    <div class="col-md-6" style="text-align: right;"><?php echo $qt; ?></div>
                                                </div>
                                                
                                                <?php  foreach ($totals as $total) {  
                                                
                                                    if($total['code'] == 'total'){ ?>

                                                    <div class="row sumario-sub " style="border-bottom: 0px">
                                                          <div class="col-md-6 col-xs-4 total_cart" style="text-align: right;"><?php echo $total['title']; ?></div>
                                                          <div class="col-md-6 total_cart" style="text-align: right;"><?php echo $total['text']; ?></div>
                                                      </div>

                                                   <?php  }else{ ?>

                                                      <div class="row  sumario-sub ">
                                                          <div class="col-md-6" style="text-align: left;"><?php echo $total['title']; ?></div>
                                                          <div class="col-md-6" style="text-align: right;"><?php echo $total['text']; ?></div>
                                                      </div>
                                                   
                                                   <?php  } ?>
 
                                                <?php } ?>
                                            </div>
                                            <div class="cancelar" id="botonn">
                                                <!--a href="<?php echo $continue; ?>">
                                                    <button  class="button btn-continue" type="button" value="<?php echo $button_shopping; ?>">
                                                        <span><span><?php echo $button_shopping; ?></span></span>
                                                    </button>
                                                </a-->
                                                <a href="<?php echo $checkout; ?>">
                                                    <button  class="button btn-continue" type="button" value="<?php echo $button_checkout; ?>">
                                                        <span><span><?php echo $button_checkout; ?></span></span>
                                                    </button>
                                                </a>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="panel-group" style="display: none" id="accordion" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOne">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                        <?php if ($coupon_status) { ?>

                                                        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'coupon') { ?>
                                                            <input type="radio" name="next" value="coupon" id="use_coupon" checked="checked" />
                                                            <?php } else { ?>
                                                            <input type="radio" name="next" value="coupon" id="use_coupon" />
                                                            <?php } ?></span>
                                                        <span id="cart_page_span1" class="active"><label for="use_coupon"><?php echo $text_use_coupon; ?></label></span>
                                                        <?php } ?>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">

                                                <div class="panel-body">
                                                    <div id="coupon" class="content" style="display: <?php echo ($next == 'coupon' ? 'block' : 'block'); ?>;">
                                                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                                            <div class="discount">
                                                                <div class="discount-form">
                                                                    <label for="coupon_code"><?php echo $entry_coupon; ?></label>
                                                                    <div class="input-box">
                                                                        <input type="text" name="coupon" value="<?php echo $coupon; ?>" class="input-text"/>
                                                                        <input type="hidden" name="next" value="coupon" />
                                                                    </div>
                                                                    <div class="buttons-set">
                                                                        <button type="submit" value="<?php echo $button_coupon; ?>" class="button" >
                                                                            <span><span><?php echo $button_coupon; ?></span></span>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default" >
                                            <div class="panel-heading" role="tab" id="headingTwo">
                                                <h4 class="panel-title">
                                                    <div class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                        <?php if ($voucher_status) { ?>
                                                        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'voucher') { ?>
                                                            <input type="radio" name="next" value="voucher" id="use_voucher" checked="checked" />
                                                            <?php } else { ?>
                                                            <input type="radio" name="next" value="voucher" id="use_voucher" />
                                                            <?php } ?></span>
                                                        <span id="cart_page_span2" class="active"><label for="use_voucher"><?php echo $text_use_voucher; ?></label></span>

                                                        <?php } ?>
                                                        <?php if ($reward_status) { ?>

                                                        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'reward') { ?>
                                                            <input type="radio" name="next" value="reward" id="use_reward" checked="checked" />
                                                            <?php } else { ?>
                                                            <input type="radio" name="next" value="reward" id="use_reward" />
                                                            <?php } ?></span>
                                                        <span id="cart_page_span3" class="active"><label for="use_reward"><?php echo $text_use_reward; ?></label></span>


                                                        <?php } ?>
                                                    </div>
                                                </h4>
                                            </div>
                                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                <div class="panel-body">
                                                    <div id="voucher" class="content " style="display: <?php echo ($next == 'voucher' ? 'block' : 'none'); ?>;">
                                                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                                            <div class="discount">
                                                                <div class="discount-form">
                                                                    <label for="voucher_code"><?php echo $entry_voucher; ?></label>
                                                                </div>
                                                                <div class="input-box">
                                                                    <input type="text" name="voucher" value="<?php echo $voucher; ?>" class="input-text"/>
                                                                    <input type="hidden" name="next" value="voucher" />
                                                                </div>
                                                                <div class="buttons-set">
                                                                    <button type="submit" value="<?php echo $button_voucher; ?>" class="button" >
                                                                        <span><span><?php echo $button_voucher; ?></span></span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div id="reward" class="content" style="display: <?php echo ($next == 'reward' ? 'block' : 'none'); ?>;">
                                                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                                            <div class="discount">
                                                                <div class="discount-form">
                                                                    <label for="reward_code"><?php echo $entry_reward; ?></label>
                                                                </div>
                                                                <div class="input-box">
                                                                    <input type="text" name="reward" value="<?php echo $reward; ?>" class="input-text"/>
                                                                    <input type="hidden" name="next" value="reward" />
                                                                </div>
                                                                <div class="buttons-set">
                                                                    <button type="submit" value="<?php echo $button_reward; ?>" class="button" >
                                                                        <span><span><?php echo $button_reward; ?></span></span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingThree">
                                                <h4 class="panel-title">
                                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                        <?php if ($shipping_status) { ?>

                                                        <span class="radio_button_hide_shopping_cart"><?php if ($next == 'shipping') { ?>
                                                            <input type="radio" name="next" value="shipping" id="shipping_estimate" checked="checked" />
                                                            <?php } else { ?>
                                                            <input type="radio" name="next" value="shipping" id="shipping_estimate" />
                                                            <?php } ?></span>
                                                        <span id="cart_page_span4"><label for="shipping_estimate"><?php echo $text_shipping_estimate; ?></label></span>


                                                        <?php } ?>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                <div class="panel-body">
                                                    <div id="shipping" class="content " style="display: <?php echo ($next == 'shipping' ? 'block' : 'none'); ?>;">
                                                        <div class="shipping">
                                                            <div class="shipping-form">
                                                                <label for="reward_code"><?php echo $text_shipping_detail; ?></label>
                                                                <ul class="form-list">
                                                                    <li>
                                                                        <div class="input-box medium-size">
                                                                            <select name="country_id">
                                                                                <option value=""><?php echo $text_select; ?></option>
                                                                                <?php foreach ($countries as $country) { ?>
                                                                                <?php if ($country['country_id'] == $country_id) { ?>
                                                                                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                                                                                <?php } else { ?>
                                                                                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                                                                                <?php } ?>
                                                                                <?php } ?>
                                                                            </select>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="input-box medium-size">
                                                                            <select name="zone_id"></select>
                                                                        </div>
                                                                    </li>
                                                                    <li>
                                                                        <div class="input-box medium-size">
                                                                            <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text validate-postcode" placeholder="postcode *"/>
                                                                            <button type="button" value="<?php echo $button_quote; ?>" id="button-quote" class="button medium-size" ><span><span><?php echo $button_quote; ?></span></span></button>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            </div>   
                        </fieldset>
                    </form>
                </div>

                <div class="cart-collaterals">
                    <?php if ($coupon_status || $voucher_status || $reward_status || $shipping_status) { ?>
                    <div class="cart-extra col-md-8 col-xs-12">

                        <script type="text/javascript">
                                    jQuery("#cart_page_span1").click(function(){
                            jQuery(this).parent().children('span').addClass('active');
                            }).blur(function(){
                            jQuery(this).parent().children('span#cart_page_span1').removeClass('active');
                            });</script>
                        <script type="text/javascript">
                                    jQuery("#cart_page_span2").click(function(){
                            jQuery(this).parent().children('span').addClass('active');
                            }).blur(function(){
                            jQuery(this).parent().children('span#cart_page_span2').removeClass('active');
                            });</script>
                        <script type="text/javascript">
                                    jQuery("#cart_page_span3").click(function(){
                            jQuery(this).parent().children('span').addClass('active');
                            }).blur(function(){
                            jQuery(this).parent().children('span#cart_page_span3').removeClass('active');
                            });</script>
                        <script type="text/javascript">
                                    jQuery("#cart_page_span4").click(function(){
                            jQuery(this).parent().children('span').addClass('active');
                            }).blur(function(){
                            jQuery(this).parent().children('span#cart_page_span4').removeClass('active');
                            });</script>

                    </div>			

                </div>	
                <?php } ?>


            </div>

            <ul class="checkout-types">

            </ul>

        </div>
        <script type="text/javascript">
                    function change_quantity(){
                    $("#cart_checkout").submit();
                    };
                    jQuery(document).ready(function(){

            jQuery(".qty_inc").click(function(){
            jQuery(this).parent().parent().children("input.qty").val(( + jQuery(this).parent().parent().children("input.qty").val() + 1) || 0);
            });
            });</script>
        <script type="text/javascript">
                    jQuery(document).ready(function(){
            jQuery(".qty_vau_inc").click(function(){
            jQuery(this).parent().parent().children("input.qty_vau").val(( + jQuery(this).parent().parent().children("input.qty_vau").val() + 1) || 0);
            });
            });</script>

    </div>
</div>


<?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'next\']').bind('change', function() {
    $('.cart-module > div').hide();
            $('#' + this.value).show();
    });
//--></script>
<?php if ($shipping_status) { ?>

<script type="text/javascript"><!--

            $('select[name=\'country_id\']').bind('change', function() {
    $.ajax({
    url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
            $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
            },
            complete: function() {
            $('.wait').remove();
            },
            success: function(json) {
            if (json['postcode_required'] == '1') {
            $('#postcode-required').show();
            } else {
            $('#postcode-required').hide();
            }

            html = '<option value=""><?php echo $text_select; ?></option>';
                    if (json['zone'] != '') {
            for (i = 0; i < json['zone'].length; i++) {
            html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
            html += ' selected="selected"';
            }

            html += '>' + json['zone'][i]['name'] + '</option>';
            }
            } else {
            html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }

            $('select[name=\'zone_id\']').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
    });
    });
            $('select[name=\'country_id\']').trigger('change');
//--></script>
<script type="text/javascript"><!--
$('#button-quote').live('click', function() {
	$.ajax({
		url: 'index.php?route=checkout/cart/quote',
		type: 'post',
		data: 'country_id=' + $('select[name=\'country_id\']').val() + '&zone_id=' + $('select[name=\'zone_id\']').val() + '&postcode=' + encodeURIComponent($('input[name=\'postcode\']').val()),
		dataType: 'json',		
		beforeSend: function() {
			$('#button-quote').attr('disabled', true);
			$('#button-quote').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('#button-quote').attr('disabled', false);
			$('.wait').remove();
		},		
		success: function(json) {
			$('.success, .warning, .attention, .error').remove();			
						
			if (json['error']) {
				if (json['error']['warning']) {
					$('#notification').html('<div class="warning" style="display: none;">' + json['error']['warning'] + '<img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>');
					
					$('.warning').fadeIn('slow');
					
					$('html, body').animate({ scrollTop: 0 }, 'slow'); 
				}	
							
				if (json['error']['country']) {
					$('select[name=\'country_id\']').after('<span class="error">' + json['error']['country'] + '</span>');
				}	
				
				if (json['error']['zone']) {
					$('select[name=\'zone_id\']').after('<span class="error">' + json['error']['zone'] + '</span>');
				}
				
				if (json['error']['postcode']) {
					$('input[name=\'postcode\']').after('<span class="error">' + json['error']['postcode'] + '</span>');
				}					
			}
			
			if (json['shipping_method']) {
				html  = '<h2><?php echo $text_shipping_method; ?></h2>';
				html += '<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">';
				html += '  <ul class="cart-extra-tab">';
				
				for (i in json['shipping_method']) {
					html += '<li>';
					html += '  <span><b>' + json['shipping_method'][i]['title'] + '</b></span>';
					html += '</li>';
				
					if (!json['shipping_method'][i]['error']) {
						for (j in json['shipping_method'][i]['quote']) {
							html += '<li class="highlight">';
							
							if (json['shipping_method'][i]['quote'][j]['code'] == '<?php echo $shipping_method; ?>') {
								html += '<span><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" checked="checked" /></span>';
							} else {
								html += '<span><input type="radio" name="shipping_method" value="' + json['shipping_method'][i]['quote'][j]['code'] + '" id="' + json['shipping_method'][i]['quote'][j]['code'] + '" /></span>';
							}
								
							html += '  <span><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['title'] + '</label></span>';
							html += '  <span style="text-align: right;"><label for="' + json['shipping_method'][i]['quote'][j]['code'] + '">' + json['shipping_method'][i]['quote'][j]['text'] + '</label></span>';
							html += '</li>';
						}		
					} else {
						html += '<li>';
						html += '  <span><div class="error">' + json['shipping_method'][i]['error'] + '</div></span>';
						html += '</li>';						
					}
				}
				
				html += '  </ul>';
				html += '  <br />';
				html += '  <input type="hidden" name="next" value="shipping" />';
				
				<?php if ($shipping_method) { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" />';	
				<?php } else { ?>
				html += '  <input type="submit" value="<?php echo $button_shipping; ?>" id="button-shipping" class="button" disabled="disabled" />';	
				<?php } ?>
							
				html += '</form>';
				
				$.colorbox({
					overlayClose: true,
					opacity: 0.5,
					width: '600px',
					height: '400px',
					href: false,
					html: html
				});
				
				$('input[name=\'shipping_method\']').bind('change', function() {
					$('#button-shipping').attr('disabled', false);
				});
			}
		}
	});
});
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
    $.ajax({
    url: 'index.php?route=checkout/cart/country&country_id=' + this.value,
            dataType: 'json',
            beforeSend: function() {
            $('select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
            },
            complete: function() {
            $('.wait').remove();
            },
            success: function(json) {
            if (json['postcode_required'] == '1') {
            $('#postcode-required').show();
            } else {
            $('#postcode-required').hide();
            }

            html = '<option value=""><?php echo $text_select; ?></option>';
                    if (json['zone'] != '') {
            for (i = 0; i < json['zone'].length; i++) {
            html += '<option value="' + json['zone'][i]['zone_id'] + '"';
                    if (json['zone'][i]['zone_id'] == '<?php echo $zone_id; ?>') {
            html += ' selected="selected"';
            }

            html += '>' + json['zone'][i]['name'] + '</option>';
            }
            } else {
            html += '<option value="0" selected="selected"><?php echo $text_none; ?></option>';
            }

            $('select[name=\'zone_id\']').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
    });
    });
            $('select[name=\'country_id\']').trigger('change');
//--></script>
<?php } ?>
<?php echo $footer; ?>
