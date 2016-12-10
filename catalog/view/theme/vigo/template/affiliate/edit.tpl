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
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	<div class="block block-account-info">
                <div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	<ul class="form-list">
                        <li class="fields">
                        	<div class="customer-name">
                                <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                                	<div class="input-box">
            <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
            <?php if ($error_firstname) { ?>
            <span class="error"><?php echo $error_firstname; ?></span>
            <?php } ?>
                                    </div>
                                </div>
                                <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                                	<div class="input-box">
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
            <?php if ($error_lastname) { ?>
            <span class="error"><?php echo $error_lastname; ?></span>
            <?php } ?>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                        	<div class="input-box input-email">
            <input type="text" name="email" value="<?php echo $email; ?>" class="input-text required-entry" placeholder="<?php echo $entry_email; ?> *"/>
            <?php if ($error_email) { ?>
            <span class="error"><?php echo $error_email; ?></span>
            <?php } ?>
                            </div>
                        </li>
                        <li class="fields">
                        	<div class="input-box input-contact">
                                <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
            <?php if ($error_telephone) { ?>
            <span class="error"><?php echo $error_telephone; ?></span>
            <?php } ?>
                                </div> 
                                <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
            <input type="text" name="fax" value="<?php echo $fax; ?>" class="input-text required-entry" placeholder="<?php echo $entry_fax; ?>"/>
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
                <input type="text" name="company" value="<?php echo $company; ?>" class="input-text required-entry" placeholder="<?php echo $entry_company; ?> *"/>
                                </div>
                            </div>
                            <div class="field">
    	                        <div class="input-box input-companyid">
                <input type="text" name="website" value="<?php echo $website; ?>" class="input-text required-entry" placeholder="<?php echo $entry_website; ?>"/>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
	                            <div class="input-box input-address">
            <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_1; ?> *"/>
            <?php if ($error_address_1) { ?>
            <span class="error"><?php echo $error_address_1; ?></span>
            <?php } ?>
                                </div>
                            </div>
                            <div class="field">
    	                        <div class="input-box input-address">
            <input type="text" name="address_2" value="<?php echo $address_2; ?>" class="input-text required-entry" placeholder="<?php echo $entry_address_2; ?>"/>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box input-city">
            <input type="text" name="city" value="<?php echo $city; ?>" class="input-text required-entry" placeholder="<?php echo $entry_city; ?> *"/>
            <?php if ($error_city) { ?>
            <span class="error"><?php echo $error_city; ?></span>
            <?php } ?>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-postcode">
            <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="input-text required-entry" placeholder="<?php echo $entry_postcode; ?> *"/>
            <?php if ($error_postcode) { ?>
            <span class="error"><?php echo $error_postcode; ?></span>
            <?php } ?>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box input-country">
              <select name="country_id" class="input-text required-entry" >
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
            
            <div class="buttons-set">
            	<p class="required"><?php echo $text_required_fields;?></p>
                <p class="back-link"><a href="<?php echo $back; ?>">
                	<small>« </small><?php echo $button_back; ?>
                </a></p>
                <button class="button" value="<?php echo $button_continue; ?>" type="submit" title="Save">
                	<span><span><?php echo $button_continue; ?></span></span>
                </button>
            </div>
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
		url: 'index.php?route=affiliate/edit/country&country_id=' + this.value,
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