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
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
          <!--<h1><?php echo $heading_title; ?></h1>
          <p><?php echo $text_account_already; ?></p>
          <p><?php echo $text_signup; ?></p>-->
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
          	<div class="block block-personal-info">
            	<div class="block-title">
                	<strong><span><?php echo $text_your_details; ?></span></strong>
               </div>
               <div class="block-content">
	                <ul class="form-list">
    		            <li class="fields">
                        	<div class="customer-name">
                                <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                                    <div class="input-box">
                    <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_firstname;?> *"/>
                    <?php if ($error_firstname) { ?>
                    <span class="error"><?php echo $error_firstname; ?></span>
                    <?php } ?>
                                    </div>
                                </div>
                                <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                                    <div class="input-box">
                    <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_lastname;?> *"/>
                    <?php if ($error_lastname) { ?>
                    <span class="error"><?php echo $error_lastname; ?></span>
                    <?php } ?>
                                	</div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="input-box input-email">
                    <input type="text" name="email" value="<?php echo $email; ?>" class="input-text required-entry" placeholder="<?php echo $entry_email;?> *"/>
                    <?php if ($error_email) { ?>
                    <span class="error"><?php echo $error_email; ?></span>
                    <?php } ?>
                        	</div>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box input-phone">
                    <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="input-text required-entry" placeholder="<?php echo $entry_telephone;?> *"/>
                    <?php if ($error_telephone) { ?>
                    <span class="error"><?php echo $error_telephone; ?></span>
                    <?php } ?>
                            	</div>
                        	</div>
                            <div class="field">
                            	<div class="input-box input-fax">
                   <input type="text" name="fax" value="<?php echo $fax; ?>" class="input-text required-entry" placeholder="<?php echo $entry_fax;?>"/>
                        		</div>
                        	</div>
                        </li>
                    </ul>
               </div>
            </div>
            
            <div class="block block-address-info">
                <div class="block-title">
                    <strong><span><?php echo $text_your_address; ?></span></strong>
                </div>
                <div class="block-content">
           	    	<ul class="form-list">
                    	<li class="fields">
	                        <div class="field">
    		                    <div class="input-box input-company">
                     <input type="text" name="company" value="<?php echo $company; ?>" class="input-text required-entry" placeholder="<?php echo $entry_company;?> "/>
                                </div>
            	            </div>
                            <div class="field">
	                            <div class="input-box input-companyid">
                     <input type="text" name="website" value="<?php echo $website; ?>" class="input-text required-entry" placeholder="<?php echo $entry_website;?>"/>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box input-address">
                     <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_1;?> *"/>
                    <?php if ($error_address_1) { ?>
                    <span class="error"><?php echo $error_address_1; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-address">
                    <input type="text" name="address_2" value="<?php echo $address_2; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_2;?>"/>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box input-city">
                    <input type="text" name="city" value="<?php echo $city; ?>" class="input-text required-entry" placeholder="<?php echo $entry_city;?> *"/>
                    <?php if ($error_city) { ?>
                    <span class="error"><?php echo $error_city; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-postcode">
                    <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text required-entry" placeholder="<?php echo $entry_postcode;?> *"/>
                    <?php if ($error_postcode) { ?>
                    <span class="error"><?php echo $error_postcode; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
	                            <div class="input-box input-country">
                      <select name="country_id" class="input-text required-entry">
                      <option value="false"><?php echo $text_select; ?></option>
                      <?php foreach ($countries as $country) { ?>
                      <?php if ($country['country_id'] == $country_id) { ?>
                      <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
                      <?php } else { ?>
                      <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
                      <?php } ?>
                      <?php } ?>
                    </select>
                    <?php if ($error_country) { ?>
                    <span class="error"><?php echo $error_country; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                            <div class="field">
    	                        <div class="input-box input-region">
                    <select name="zone_id" class="input-text required-entry"></select>
                    <?php if ($error_zone) { ?>
                    <span class="error"><?php echo $error_zone; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
           </div>
            
            
           <div class="block block-address-info">
                <div class="block-title">
                    <strong><span><?php echo $text_payment; ?></span></strong>
                </div>
                <div class="block-content">
           	    	<ul class="form-list">
                    	<li class="fields">
                          	<div class="field">
                            	<div class="input-box input-tax">
                      <input type="text" name="tax" value="<?php echo $tax; ?>" class="input-text required-entry" placeholder="<?php echo $entry_tax;?>"/>
                                </div>
                            </div>
                            <div class="field opc">
                            	<div class="input-box input-payment step">
                                	<ul class="form-list">
                                    <li class="control">
                      <?php if ($payment == 'cheque') { ?>
                      <input type="radio" name="payment" value="cheque" id="cheque" checked="checked" class="radio"/>
                      <?php } else { ?>
                      <input type="radio" name="payment" value="cheque" id="cheque" class="radio"/>
                      <?php } ?>
                      <label for="cheque"><?php echo $text_cheque; ?></label>
                                    </li>
                                    <li class="control">
                                    
                      <?php if ($payment == 'paypal') { ?>
                      <input type="radio" name="payment" value="paypal" id="paypal" checked="checked" class="radio"/>
                      <?php } else { ?>
                      <input type="radio" name="payment" value="paypal" id="paypal" class="radio"/>
                      <?php } ?>
                      <label for="paypal"><?php echo $text_paypal; ?></label>
                                	</li>
                                    <li class="control">
                      
                      <?php if ($payment == 'bank') { ?>
                      <input type="radio" name="payment" value="bank" id="bank" checked="checked" class="radio"/>
                      <?php } else { ?>
                      <input type="radio" name="payment" value="bank" id="bank" class="radio"/>
                      <?php } ?>
                      <label for="bank"><?php echo $text_bank; ?></label>
                                	</li>
                                </ul>
                                </div>
                            </div>
                        </li>
                        <li id="payment-cheque" class="payment">
                            <div class="field">
                            	<div class="input-box input-cheque">
                      <input type="text" name="cheque" value="<?php echo $cheque; ?>" class="input-text required-entry" placeholder="<?php echo $entry_cheque;?>"/>
                               </div>
                          </div>
                        </li>
                        <li class="payment" id="payment-paypal">
                        	<div class="field">
                            	<div class="input-box input-paypal">
                       <input type="text" name="paypal" value="<?php echo $paypal; ?>" class="input-text required-entry" placeholder="<?php echo $entry_paypal;?>"/>
                                </div>
                            </div>
                        </li>
                        <li id="payment-bank" class="payment">
                        	<div class="field">
                            	<div class="input-box input-paypal">
                       <input type="text" name="bank_name" value="<?php echo $bank_name; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_name;?>"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
                       <input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_branch_number;?>" />
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
                       <input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_swift_code;?>"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
                       <input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_account_name;?>"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
                       <input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_account_number;?>"/>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
           </div>
           <div class="block block-login-info">
                <div class="block-title">
	                <strong><span><?php echo $text_your_password; ?></span></strong>
                </div>
                <div class="block-content">
                	<ul class="form-list">
                    	<li class="fields">
                            <div class="field">
                            	<div class="input-box input-password">
                    <input type="password" name="password" value="<?php echo $password; ?>" class="input-text required-entry" placeholder="<?php echo $entry_password;?> *"/>
                    <?php if ($error_password) { ?>
                    <span class="error"><?php echo $error_password; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-password">
                    <input type="password" name="confirm" value="<?php echo $confirm; ?>" class="input-text required-entry" placeholder="<?php echo $entry_confirm;?> *"/>
                    <?php if ($error_confirm) { ?>
                    <span class="error"><?php echo $error_confirm; ?></span>
                    <?php } ?>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
           </div>

            
           
            
            
            <?php if ($text_agree) { ?>
            <div class="buttons">
              <ul class="form-list">
			  	<li class="control">
                	<?php if ($agree) { ?>
                    <input type="checkbox" name="agree" value="1" checked="checked" />
                    <?php } else { ?>
                    <input type="checkbox" name="agree" value="1" />
                    <?php } ?>
                    <?php echo $text_agree; ?>
                </li>
              </ul>
              <div class="buttons-set">
              		<button type="submit" value="<?php echo $button_continue; ?>" class="button">
                    	<span><span><?php echo $button_continue; ?></span></span>
                    </button>
              </div>
            </div>
            <?php } else { ?>
            <div class="buttons">
              <div class="buttons-set">
                <button type="submit" value="<?php echo $button_continue; ?>" class="button" >
                	<span><span><?php echo $button_continue; ?></span></span>
                </button>
              </div>
            </div>
            <?php } ?>
          </form>
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
    </div>
 </div> 
 
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=affiliate/register/country&country_id=' + this.value,
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
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
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