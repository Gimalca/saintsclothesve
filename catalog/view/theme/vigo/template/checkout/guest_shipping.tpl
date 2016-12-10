<div class="left col-lg-6 col-md-6 col-xs-12">
    
    <ul class="form-list">
        <li class="fields">
          <div class="input-box name-firstname col-md-8 col-sm-12 col-xs-12">
                <div class="input-box">
                    <input id="input-emailn" type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
                </div>
            </div>   
        
             <div class="field">
           
                <div class="input-box name-lastname col-md-8 col-sm-12 col-xs-12">
                    <input id="input-emailn" type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                </div>
            </div>     
      
      
                <div class="field">
                	<div class="input-box input-address col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="address_1" value="<?php echo $address_1; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-address col-md-8 col-sm-8 col-xs-12">
                    <input id="input-emailn" type="text" name="address_2" value="<?php echo $address_2; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
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
                    	<input id="input-emailn" type="text" name="city" value="<?php echo $city; ?>" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
                    </div>
                </div>
                <div class="field">
                	<div class="input-box input-postcode col-md-8 col-sm-8 col-xs-12">
                    <input  id="input-emailn" type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
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
<div class="field buttons-set col-md-6 col-lg-6 col-xs-12">
    <button style="margin-left: 15px" type="button" value="<?php echo $button_continue; ?>" id="button-guest-shipping" class="button input-box" >
		<span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>
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