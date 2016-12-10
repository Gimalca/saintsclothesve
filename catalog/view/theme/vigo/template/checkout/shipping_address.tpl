<?php if ($addresses) { ?>
<input type="radio" name="shipping_address" value="existing" id="shipping-address-existing" checked="checked" />
<label for="shipping-address-existing"><?php echo $text_address_existing; ?></label>
<div id="shipping-existing">
  <select name="address_id" style="width: 50%; margin-bottom: 15px;" size="1">
    <?php foreach ($addresses as $address) { ?>
    <?php if ($address['address_id'] == $address_id) { ?>
    <option value="<?php echo $address['address_id']; ?>" selected="selected"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
    <?php } else { ?>
    <option value="<?php echo $address['address_id']; ?>"><?php echo $address['firstname']; ?> <?php echo $address['lastname']; ?>, <?php echo $address['address_1']; ?>, <?php echo $address['city']; ?>, <?php echo $address['zone']; ?>, <?php echo $address['country']; ?></option>
    <?php } ?>
    <?php } ?>
  </select>
</div>
<p>
  <input type="radio" name="shipping_address" value="new" id="shipping-address-new" />
  <label for="shipping-address-new"><?php echo $text_address_new; ?></label>
</p>
<?php } ?>
<div id="shipping-new" class=" col-md-12 col-lg-12 col-sm-12" style="display: <?php echo ($addresses ? 'none' : 'block'); ?>;">
   
    <div class="left col-lg-6 col-md-6 col-xs-12">  
        <ul class="form-list">
            <li  class="fields" >         
                <div class="input-box name-firstname col-md-8 col-sm-8 col-xs-12">
                    <div class="input-box">
                        <input id="input-emailn" type="text" name="firstname" value="" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>

                    </div>
                </div>
            </li>
            <li  class="fields" >               
                <div class="input-box name-lastname col-md-8 col-sm-8 col-xs-12">
                    <div class="input-box">
                        <input id="input-emailn" type="text" name="lastname" value="" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                    </div>
                </div> 
                <input type="hidden" name="company" value="" class="large-field" />
            </li>
            <li class="fields">
                <div class="field">
                    <div class="input-box input-address col-md-8 col-sm-8 col-xs-12">
                        <input id="input-emailn" type="text" name="address_1" value="" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                    </div>
                </div>
                <div class="field">
                    <div class="input-box input-address col-md-8 col-sm-8 col-xs-12">
                        <input id="input-emailn" type="text" name="address_2" value="" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <div class="right col-lg-6 col-md-6 col-xs-12">  
        <ul class="form-list">
            <li class="fields">
                <div class="field">
                    <div class="input-box input-city col-md-8 col-sm-8 col-xs-12">
                        <input id="input-emailn" type="text" name="city" value="" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
                    </div>
                </div>
                <div class="field">
                    <div class="input-box input-postcode col-md-8 col-sm-8 col-xs-12">
                        <input  id="input-emailn" type="text" name="postcode" value="" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
                    </div>
                </div>
            </li>
            <li class="field">
              
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
           
            </li>
            <li class="fields">
                
                <div class="field">
                    <div class="input-box input-region col-md-8 col-sm-8 col-xs-12">
                        <select id="input-emailn" name="zone_id" class="large-field">
                        </select>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<button class="button" value="<?php echo $button_continue; ?>" id="button-shipping-address" title="Continue" type="button">
    <span><span><?php echo $button_continue; ?></span></span>
</button>
<script type="text/javascript"><!--
$('#shipping-address input[name=\'shipping_address\']').live('change', function() {
	if (this.value == 'new') {
		$('#shipping-existing').hide();
		$('#shipping-new').show();
	} else {
		$('#shipping-existing').show();
		$('#shipping-new').hide();
	}
});
//--></script> 
<script type="text/javascript"><!--
$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	if (this.value == '') return;
	$.ajax({
		url: 'index.php?route=checkout/checkout/country&country_id=' + this.value,
		dataType: 'json',
		beforeSend: function() {
			$('#shipping-address select[name=\'country_id\']').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.wait').remove();
		},			
		success: function(json) {
			if (json['postcode_required'] == '1') {
				$('#shipping-postcode-required').show();
			} else {
				$('#shipping-postcode-required').hide();
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
			
			$('#shipping-address select[name=\'zone_id\']').html(html);
		},
		error: function(xhr, ajaxOptions, thrownError) {
			alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
		}
	});
});

$('#shipping-address select[name=\'country_id\']').trigger('change');
//--></script>