<?php echo $header; ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
      <div class="col-md-2 col-sm-4 col-xs-12">
    <?php echo $column_left; ?>
    </div>
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account product_reture">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	<div class="block block-product-return-info">
                <div class="block-title">
	                <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	<ul class="form-list">
                        <li class="fields">
                            <div class="customer-name">
                                <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                                	<div class="input-box">
                                    <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
                                    </div>
                    <?php if ($error_firstname) { ?>
                    <span class="error"><?php echo $error_firstname; ?></span>
                    <?php } ?>
                                </div>
                                <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                                    <div class="input-box">
                                    <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                                    </div>
                    <?php if ($error_lastname) { ?>
                    <span class="error"><?php echo $error_lastname; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                        </li>
                        <li>
	                        <div class="input-box input-email">
                            <input type="text" name="email" value="<?php echo $email; ?>" class="large-field input-text required-entry" placeholder="<?php echo $entry_email; ?>*"/>
    	                    </div>
                    <?php if ($error_email) { ?>
                    <span class="error"><?php echo $error_email; ?></span>
                    <?php } ?>
                        </li>
                        <li>
        	                <div class="input-box input-phone">
                            <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field input-text required-entry" placeholder="<?php echo $entry_telephone; ?>*"/>
            	            </div>
                    <?php if ($error_telephone) { ?>
                    <span class="error"><?php echo $error_telephone; ?></span>
                    <?php } ?>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box input-order-id">
                                <input type="text" name="order_id" value="<?php echo $order_id; ?>" class="large-field input-text required-entry" placeholder="<?php echo $entry_order_id; ?>*"/>
                                </div>
                    <?php if ($error_order_id) { ?>
                    <span class="error"><?php echo $error_order_id; ?></span>
                    <?php } ?>
                            </div>
                            <div class="field">
                            	<div class="input-box input-order-date">
                                <input type="text" name="date_ordered" value="<?php echo $date_ordered; ?>" class="large-field date input-text required-entry" placeholder="<?php echo $entry_date_ordered; ?>"/>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="block block-product-return-info">
                <div class="block-title">
	                <strong><span><?php echo $text_product; ?></span></strong>
                </div>
                <div class="block-content">
                	<ul class="form-list col-md-6 col-sm-12 col-xs-12 first">
                    	<li class="fields">
                            <div class="field">
                            	<div class="input-box name-name">
                                <input type="text" name="product" value="<?php echo $product; ?>" class="input-text required-entry" placeholder="<?php echo $entry_product; ?> *"/>
                                </div>
                                <?php if ($error_product) { ?>
                        <span class="error"><?php echo $error_product; ?></span>
                        <?php } ?>
                            </div>
                            <div class="field">
                            	<div class="input-box input-code">
                                <input type="text" name="model" value="<?php echo $model; ?>" class="input-text required-entry" placeholder="<?php echo $entry_model;?> *"/>
                                </div>
                                <?php if ($error_model) { ?>
                        <span class="error"><?php echo $error_model; ?></span>
                        <?php } ?>
                            </div>
                            <div class="field">
                            	<div class="input-box input-quantity">
                                <input type="text" name="quantity" value="<?php echo $quantity; ?>" class="input-text required-entry" placeholder="<?php echo $entry_quantity; ?> "/>
                                </div>
                            </div>
                        </li>
                        <li class="control">
                        	<span class="required">*</span> <b><?php echo $entry_reason; ?></b>
                        </li>
                   <?php foreach ($return_reasons as $return_reason) { ?>
                   <?php if ($return_reason['return_reason_id'] == $return_reason_id) { ?>
                        <li class="control">
                        <input type="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" checked="checked" class="radio"/>
                        <label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label>
                        </li>
                        <?php } else { ?>
                        <li class="control">
                        	<input type="radio" class="radio" name="return_reason_id" value="<?php echo $return_reason['return_reason_id']; ?>" id="return-reason-id<?php echo $return_reason['return_reason_id']; ?>" />
                            <label for="return-reason-id<?php echo $return_reason['return_reason_id']; ?>"><?php echo $return_reason['name']; ?></label>
                        </li>
                        <?php  } ?>
                          <?php  } ?>
                    <?php if ($error_reason) { ?>
                    <span class="error"><?php echo $error_reason; ?></span>
                    <?php } ?>
					</ul>
                    <ul class="form-list col-md-6 col-sm-12 col-xs-12">
                    	
                        <b><?php echo $entry_opened; ?></b>
                        
                    	<li class="control">
                        <?php if ($opened) { ?>
                        <input type="radio" name="opened" value="1" id="opened" checked="checked" class="radio"/>
                        <?php } else { ?>
                        <input type="radio" name="opened" value="1" id="opened" class="radio"/>
                        <label for="opened"><?php echo $text_yes; ?></label>
                        <?php } ?>
                        </li>
                        <li class="control">
                        <?php if (!$opened) { ?>
                        <input type="radio" name="opened" value="0" id="unopened" checked="checked" class="radio"/>
                        <?php } else { ?>
                        <input type="radio" name="opened" value="0" id="unopened" class="radio"/>
                        <?php } ?>
                        <label for="unopened"><?php echo $text_no; ?></label>
                        </li>
                        <li class="wide">
	                        <div class="input-box input-comment">
                            <textarea name="comment" cols="150" rows="6" class="input-text required-entry" placeholder="<?php echo $entry_fault_detail; ?>"><?php echo $comment; ?></textarea>
                            </div>
                        </li>
                        <li class="fields">
                        	<div class="field">
                            	<div class="input-box input-captch">
                                <input type="text" name="captcha" value="<?php echo $captcha; ?>" class="input-text required-entry" placeholder="<?php echo $text_enter_your_captch;?> *"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-captch-image">
                                <img src="index.php?route=account/return/captcha" alt="captch-image" />
                        <?php if ($error_captcha) { ?>
                        <span class="error"><?php echo $error_captcha; ?></span>
                        <?php } ?>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
            <?php if ($text_agree) { ?>
            <div class="buttons-set">
        		<p class="back-link"><a href="<?php echo $back; ?>"><small>« </small><?php echo $button_back; ?></a></p>
                <?php if ($agree) { ?>
                	<input type="checkbox" name="agree" value="1" checked="checked" />
                <?php } else { ?>
                    <input type="checkbox" name="agree" value="1" />
                <?php } ?>
                <?php echo $text_agree; ?>
       			<button value="<?php echo $button_continue; ?>" type="submit" title="Save" class="button">					
                    <span><span><?php echo $button_continue; ?></span></span>
                </button>
   					 </div>
        		<?php } else { ?>
                <div class="buttons-set">
                  <p class="back-link"><a href="<?php echo $back; ?>"><small>« </small><?php echo $button_back; ?></a></p>
                  
                  <button type="submit" value="<?php echo $button_continue; ?>" class="button" >
                  		<span><span><?php echo $button_continue; ?></span></span>
                  </button>
                  
                </div>
                <?php } ?>
              </form>
        </div>
    </div>
  
 </div>
        
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datepicker({dateFormat: 'yy-mm-dd'});
});
//--></script> 
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?>