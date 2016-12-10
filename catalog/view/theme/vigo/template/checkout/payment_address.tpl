<div class="">
   
    <div class="block-content col-md-12">
        <?php if ($addresses) { ?>
        <ul class="form-list">
            <li class="control">
                <input type="radio" name="payment_address" value="existing" id="payment-address-existing" checked="checked" class="radio"/>
                <label for="payment-address-existing"><?php echo $text_address_existing; ?></label>
            </li>
            <div id="payment-existing">
                <select name="address_id" style="width: 50%; margin-bottom: 15px;" size="1" class="payment_cart_sellect">
                    <?php foreach ($addresses as $address) { ?>
                    <?php if ($address['address_id'] == $address_id) { ?>
                    <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
                    <?php } ?>
                    <?php } ?>
                </select>
            </div>
        </ul>
        <?php } ?>
    </div>
        
    <div class="block-content col-md-12">
        <ul class="form-list">
            <li class="control">
                <input type="radio" name="payment_address" value="new" id="payment-address-new" class="radio" />
                <label for="payment-address-new"><?php echo $text_address_new; ?></label>
            </li>
        </ul>


        <div id="payment-new" class="col-md-12" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>; " >
            
            <div class="col-md-6">
                
           
            <ul class="form-list">
                <li class="fields">

                    <div class="input-box name-firstname ">
                       
                            <input type="text" name="firstname" id="input-emailn" value="" class="large-field input-text "  placeholder="<?php echo $entry_firstname; ?> *"/>
                     
                    </div>
                </li>
                <li class="fields">
                    <div class="input-box name-lastname ">
                    
                            <input type="text" name="lastname" id="input-emailn" value="" class="large-field input-text" placeholder="<?php echo $entry_lastname; ?> *"/>
                     
                    </div>

                </li>
                <?php if ($tax_id_display) { ?>
                <li id="tax-id-display">
                    <div class="input-box input-tax">
                        <input type="text" name="tax_id" id="input-emailn" value="" class="large-field input-text" placeholder="tax id *"/>
                    </div>
                </li>
                <?php } ?>
                <li class="fields">
                    <div class="field">
                        <div class="input-box input-address">
                            <input type="text" name="address_1" id="input-emailn"  value="" class="large-field input-text" placeholder="<?php echo $entry_address_1; ?> *"/>
                        </div>
                    </div>
                    <div class="field">
                        <div class="input-box input-address">
                            <input type="text" name="address_2" id="input-emailn" value="" class="large-field input-text" placeholder="<?php echo $entry_address_2; ?>"/>
                        </div>
                    </div>
                </li>
            </ul> 
              </div> 
                <div class="col-md-6">
                
           
            <ul class="form-list">
                <li class="fields">
                    <div class="field">
                        <div class="input-box input-city">
                            <input type="text" name="city" id="input-emailn" value="" class="large-field input-text" placeholder="<?php echo $entry_city; ?> *"/>
                        </div>
                    </div>
                    <div class="field">
                        <div class="input-box input-postcode">
                            <input type="text" name="postcode" id="input-emailn" value="" class="large-field input-text" placeholder="<?php echo $entry_postcode; ?> *"/>
                        </div>
                    </div>
                </li>
                <li class="fields">
                    <div class="field">
                        <div class="input-box input-country">
                            <select name="country_id" class="large-field input-text" id="input-emailn">
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
                    <div class="field">
                        <div class="input-box input-region">
                            <select name="zone_id" id="input-emailn" class="large-field input-text"></select>
                        </div>
                    </div>
                </li>
            </ul>


        </div>
       
    </div> 
        <div id="billing-buttons-container" class="buttons-set">
            <p class="required"><?php //echo $text_required_fields; ?></p>
            <button class="button" value="<?php echo $button_continue; ?>" id="button-payment-address" title="Continue" type="button">
                <span><span><?php echo $button_continue; ?></span></span>
            </button>
        </div>
</div>

<script type="text/javascript"><!--
$('#payment-address input[name=\'payment_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#payment-existing').hide();
		$('#payment-new').show();
	} else {
		$('#payment-existing').show();
		$('#payment-new').hide();
	}
});
//--></script> 
<script type="text/javascript"><!--
$('#payment-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#payment-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/vigo/image/loading.gif" alt="" /></span>');
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