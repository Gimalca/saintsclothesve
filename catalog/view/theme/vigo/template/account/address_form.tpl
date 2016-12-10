<?php echo $header; ?>
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
    	<div class="my-account col-md-8">
        	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	
                <div class="block block-contact-info">
                    <div class="block-title">
                        <strong><span><?php echo $text_edit_address; ?></span></strong>
                    </div>
                    <div class="block-content">
                      <ul class="form-list">
                         <li class="fields">
                            <div class="customer-name">
                                <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                                    <div class="input-box">
                <input type="text" id="input-emailn" name="firstname" value="<?php echo $firstname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
                <?php if ($error_firstname) { ?>
                <span class="error"><?php echo $error_firstname; ?></span>
                <?php } ?>
                                    </div>
                                </div>
                                <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                                    <div class="input-box">
                <input type="text" id="input-emailn" name="lastname" value="<?php echo $lastname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                <?php if ($error_lastname) { ?>
                <span class="error"><?php echo $error_lastname; ?></span>
                <?php } ?>
                                    </div>
                                </div>
                            </div>
                         </li>
                         <?php if ($tax_id_display) { ?>
                         <li class="wide">
                            <div class="input-box input-tax">
                            <input type="text" id="input-emailn" name="tax_id" value="<?php echo $tax_id; ?>" class="input-text required-entry" placeholder="<?php echo $entry_tax_id; ?>"/>
                <?php if ($error_tax_id) { ?>
                <span class="error"><?php echo $error_tax_id; ?></span>
                <?php } ?>
                            </div>
                         </li>
                         <?php } ?>
                         <li class="wide">
                            <div class="input-box input-address">
                            <input type="text" id="input-emailn" name="address_1" value="<?php echo $address_1; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
                <?php if ($error_address_1) { ?>
                <span class="error"><?php echo $error_address_1; ?></span>
                <?php } ?>
                            </div>
                         </li>
                         <li class="wide">
                            <div class="input-box input-address">
                            <input type="text" id="input-emailn" name="address_2" value="<?php echo $address_2; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                            </div>
                         </li>
                         <li class="wide">
                            <div class="input-box input-city">
                 <input type="text" name="city" id="input-emailn" value="<?php echo $city; ?>" class="input-text required-entry" placeholder="<?php echo $entry_city; ?>"/>
                <?php if ($error_city) { ?>
                <span class="error"><?php echo $error_city; ?></span>
                <?php } ?>
                            </div>
                         </li>
                         <li class="wide">
                            <div class="input-box input-postcode">
                <input type="text" name="postcode" id="input-emailn" value="<?php echo $postcode; ?>" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?>"/>
                <?php if ($error_postcode) { ?>
                <span class="error"><?php echo $error_postcode; ?></span>
                <?php } ?>
                            </div>
                         </li>
                         <li class="wide">
                            <div class="input-box input-country">
                            <select name="country_id" id="input-emailn">
                  <option value=""><?php echo $text_select; ?></option>
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
                         </li>
                         <li class="wide">
                            <div class="input-box input-region">
                            <select name="zone_id" id="input-emailn">
                </select>
                <?php if ($error_zone) { ?>
                <span class="error"><?php echo $error_zone; ?></span>
                <?php } ?>
                            </div>
                         </li>
                         <li class="wide">
                            <div class="input-box input-company">
                            <?php echo $entry_default; ?>
                            <?php if ($default) { ?>
                <input type="radio" name="default" value="1" checked="checked" />
                <?php echo $text_yes; ?>
                <input type="radio" name="default" value="0" />
                <?php echo $text_no; ?>
                <?php } else { ?>
                <input type="radio" name="default" value="1" />
                <?php echo $text_yes; ?>
                <input type="radio" name="default" value="0" checked="checked" />
                <?php echo $text_no; ?>
                <?php } ?>
                            </div>
                         </li>
                      </ul>
                    </div>
                </div>
                <div class="buttons-set">
                            <p class="required"><?php echo $text_required_fields; ?></p>
                            <p class="back-link"><a href="<?php echo $back; ?>"><small>« </small><?php echo $button_back; ?></a></p>
                             <button class="button" title="Save" type="submit" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
                         </div>
  			
            </form>
        </div>
    </div>
   
  </div>
  
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/address/country&country_id=' + this.value,
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
<?php echo $footer; ?>