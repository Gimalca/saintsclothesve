<div class="left col-lg-6 col-md-6 col-xs-12">
    <div class="block-title">
        <h2><?php echo $text_your_details; ?></h2>
    </div>
    <ul class="form-list">
       <li >         
            <div class="input-box name-firstname col-md-8 col-sm-8 col-xs-12">
                <div class="input-box">
                    <input id="input-emailn" type="text" name="firstname"  class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
                    
                </div>
            </div>
        </li>
        <li >               
            <div class="input-box name-lastname col-md-8 col-sm-8 col-xs-12">
                <div class="input-box">
                    <input id="input-emailn" type="text" name="lastname" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                </div>
            </div>     
        </li>
        <li>
            <div class="input-box input-email col-md-8 col-sm-8 col-xs-12">
                <input id="input-emailn" type="text" name="email"  class="input-text required-entry" placeholder="<?php echo $entry_email; ?> *"/>
            </div>
        </li>
        <li class="fields">
            <div class="field">
                <div class="input-box input-phone col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="telephone" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
                </div>
            </div>
            <div class="field">
                <div class="input-box input-fax col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="fax"  class="input-text required-entry" placeholder="<?php echo $entry_fax; ?>"/>
                </div>
            </div>
           
        </li>
    </ul>
    <div class="block-title">
    <h2><?php echo $text_your_password; ?></h2>
    </div>
    <ul class="form-list">
        <li>
           <div class="field">
                <div class="input-box input-password col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="password" name="password"  class="input-text required-entry" placeholder="<?php echo $entry_password; ?>"/>
                </div>
            </div> 
           <div class="field">
                <div class="input-box input-password col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="password" name="confirm"  class="input-text required-entry" placeholder="<?php echo $entry_confirm; ?>"/>
                </div>
            </div> 
        </li>
    </ul>
</div>
        
<div class="right col-lg-6 col-md-6 col-xs-12">
    <div class="block-title">
        <h2><?php echo $text_your_address; ?></h2>
    </div>
    <ul class="form-list">
        <input type="hidden" name="company" value="" class="large-field" />
         <input type="hidden" name="company_id" value="" class="large-field" />
        
            <li style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;"> <?php echo $entry_customer_group; ?><br />
                <?php foreach ($customer_groups as $customer_group) { ?>
                <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
                <input id="input-emailn" type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
                <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>

                <?php } else { ?>
                <input id="input-emailn" type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
                <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>

                <?php } ?>
                <?php } ?>

            </li>
            <li id="tax-id-display">
                <div class="input-box input-tax col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="tax_id"  class="input-text required-entry" placeholder="<?php echo $tax_id; ?>"/>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-address col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="address_1"  class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-address col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="address_2"  class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                	<div class="input-box input-city col-md-8 col-sm-8 col-xs-12">
                    	<input id="input-emailn" type="text" name="city" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-postcode col-md-8 col-sm-8 col-xs-12">
                    <input  id="input-emailn" type="text" name="postcode"  class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                <div class="input-box input-country col-md-8 col-sm-8 col-xs-12">
                    <select id="input-emailn" name="country_id" class="large-field">
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
            </div>
            </li>
            <li class="fields">
                
                <div class="field">
                    <div class="input-box input-region col-md-8 col-sm-8 col-xs-12">
                        <select id="input-emailn" name="zone_id" class="large-field">
                        </select>
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                    <div class="input-box col-md-8 col-sm-8 col-xs-12">
                        <?php if ($shipping_required) { ?>
                        <input  type="checkbox" name="shipping_address" value="1" id="shipping" checked="checked" />
                        <label for="shipping"><?php echo $entry_shipping; ?></label>
  
                        <?php } ?>
                        <br/>
                        <input type="checkbox" name="newsletter" value="1" id=""  checked="checked"/>
                        <label for="newsletter"><?php echo $entry_newsletter; ?></label>
                        
                        
                    </div>
                </div>
            </li>
            <li class="fields">
                <div class="field">
                    <div class="input-box col-md-8 col-sm-8 col-xs-12">
                        <input type="checkbox" name="agree" value="1" /><label for="newsletter"><?php echo $text_agree; ?></label>
                    </div>
                </div>  
            </li>
    </ul> 
</div>
<div class=" row">
    <ul>
       
    </ul>
</div>
<div class=" row">
        <ul>
           
            <li class="fields">
                <?php if ($text_agree) { ?>
                
                <div class="buttons">
                   
                    <div class="right col-md-6">
                      

                        <button style="margin-left: 15px" type="button" value="<?php echo $button_continue; ?>" id="button-register" class="button input-box" >
                            <span><span><?php echo $button_continue; ?></span></span>
                        </button>
                    </div>
                </div>
                <?php } else { ?>             
                <button style="margin-left: 15px" type="button" value="<?php echo $button_continue; ?>" id="button-register" class="button input-box" >
                    <span><span><?php echo $button_continue; ?></span></span>
                </button>
                <?php } ?>
            </li>
        </ul>
</div>




<script type="text/javascript"><!--
$('#payment-address input[name=\'customer_group_id\']:checked').live('change', function() {
	var customer_group = [];
	
<?php foreach ($customer_groups as $customer_group) { ?>
	customer_group[<?php echo $customer_group['customer_group_id']; ?>] = [];
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_display'] = '<?php echo $customer_group['company_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['company_id_required'] = '<?php echo $customer_group['company_id_required']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_display'] = '<?php echo $customer_group['tax_id_display']; ?>';
	customer_group[<?php echo $customer_group['customer_group_id']; ?>]['tax_id_required'] = '<?php echo $customer_group['tax_id_required']; ?>';
<?php } ?>	

	if (customer_group[this.value]) {
		if (customer_group[this.value]['company_id_display'] == '1') {
			$('#company-id-display').show();
		} else {
			$('#company-id-display').hide();
		}
		
		if (customer_group[this.value]['company_id_required'] == '1') {
			$('#company-id-required').show();
		} else {
			$('#company-id-required').hide();
		}
		
		if (customer_group[this.value]['tax_id_display'] == '1') {
			$('#tax-id-display').show();
		} else {
			$('#tax-id-display').hide();
		}
		
		if (customer_group[this.value]['tax_id_required'] == '1') {
			$('#tax-id-required').show();
		} else {
			$('#tax-id-required').hide();
		}	
	}
});

$('#payment-address input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#payment-postcode-required').show();
			} else {
				$('#payment-postcode-required').hide();
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
			
			$('#payment-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#payment-address select[name=\'country_id\']').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('.colorbox').colorbox({
	width: 640,
	height: 480
});
//--></script> 