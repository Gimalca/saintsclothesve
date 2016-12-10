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
  <!--<h1><?php echo $heading_title; ?></h1><p><?php echo $text_account_already; ?></p>-->
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
            <input type="text" name="firstname" value="<?php echo $firstname; ?>"  class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
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
                	<div class="field">
                        <div class="input-box input-phone">
            <input type="text" name="telephone" value="<?php echo $telephone; ?>" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
            <?php if ($error_telephone) { ?>
            <span class="error"><?php echo $error_telephone; ?></span>
            <?php } ?>
                        </div>
                    </div>
                    <div class="field">
                        <div class="input-box input-fax">
            <input type="text" name="fax" value="<?php echo $fax; ?>" class="input-text required-entry" placeholder="<?php echo $entry_fax; ?> "/>
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
            <input type="text" name="company_id" value="<?php echo $company_id; ?>" class="input-text required-entry" placeholder="<?php echo $entry_company_id; ?>"/>
            <?php if ($error_company_id) { ?>
            <span class="error"><?php echo $error_company_id; ?></span>
            <?php } ?>
                        </div>
                    </div>
                </li>
                <li style="display: <?php echo (count($customer_groups) > 1 ? 'table-row' : 'none'); ?>;">
					<div class="input-box input-business">
                    	<?php foreach ($customer_groups as $customer_group) { ?>
            <?php if ($customer_group['customer_group_id'] == $customer_group_id) { ?>
            <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" checked="checked" />
            <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
            <br />
            <?php } else { ?>
            <input type="radio" name="customer_group_id" value="<?php echo $customer_group['customer_group_id']; ?>" id="customer_group_id<?php echo $customer_group['customer_group_id']; ?>" />
            <label for="customer_group_id<?php echo $customer_group['customer_group_id']; ?>"><?php echo $customer_group['name']; ?></label>
            <br />
            <?php } ?>
            <?php } ?>
                    </div>
                </li>
                
                <li id="tax-id-display">
					<div class="input-box input-tax">
            <input type="text" name="tax_id" value="<?php echo $tax_id; ?>" class="input-text required-entry" placeholder="<?php echo $entry_tax_id; ?> *"/>
            <?php if ($error_tax_id) { ?>
            <span class="error"><?php echo $error_tax_id; ?></span>
            <?php } ?>
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
            <?php if ($error_country) { ?>
            <span class="error"><?php echo $error_country; ?></span>
            <?php } ?>
                        </div>
                    </div>
                    <div class="field">
    		            <div class="input-box input-region">
            <select name="zone_id">
            </select>
            <?php if ($error_zone) { ?>
            <span class="error"><?php echo $error_zone; ?></span>
            <?php } ?>
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
            <input type="password" name="password" value="<?php echo $password; ?>" class="input-text required-entry" placeholder="<?php echo $entry_password; ?> *"/>
            <?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
                        </div>
                    </div>
                    <div class="field">
    		            <div class="input-box input-password">
            <input type="password" name="confirm" value="<?php echo $confirm; ?>" class="input-text required-entry" placeholder="<?php echo $entry_confirm; ?> *"/>
            <?php if ($error_confirm) { ?>
            <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
                        </div>
                    </div>
                </li>                
            </ul>
        </div>
    </div>
    <div class="block block-newslatter-info">
    	<div class="block-title">
        	<strong><span><?php echo $text_newsletter; ?></span></strong>
        </div>
        <div class="block-content">
        	<ul class="form-list">
            	<li class="fields">
	                <div class="field">
    		            <div class="input-box input-newslatter">
                        <span><?php echo $entry_newsletter; ?></span>
            <?php if ($newsletter) { ?>
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>
            <input type="radio" name="newsletter" value="0" style=" margin-right: 20px" />
            
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
            <?php } ?>
                        </div>
                    </div>
               </li>
               <?php if ($text_agree) { ?>
               	<li class="control">
					<div class="input-box">
         <?php if ($agree) { ?>
        <input type="checkbox" name="agree" value="1" checked="checked" />
        <?php } else { ?>
        <input type="checkbox" name="agree" value="1" />
        <?php } ?>
                    </div>
                    <label for="is_agreed"><?php echo $text_agree; ?></label>
                </li>
           </ul>
       </div>
    </div>
    <div class="buttons-set">
   		<p class="required"><?php echo $text_required_fields; ?></p>
        <button class="button" title="Save" type="submit" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
	</div>
   <?php } else { ?>
    <div class="buttons-set">
   		<p class="required"><?php echo $text_required_fields; ?></p>
        <button class="button" title="Save" type="submit" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
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
$('input[name=\'customer_group_id\']:checked').live('change', function() {
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

$('input[name=\'customer_group_id\']:checked').trigger('change');
//--></script> 
<script type="text/javascript"><!--
$('select[name=\'country_id\']').bind('change', function() {
	$.ajax({
		url: 'index.php?route=account/register/country&country_id=' + this.value,
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
$(document).ready(function() {
	$('.colorbox').colorbox({
		width: 640,
		height: 480
	});
});
//--></script> 
<?php echo $footer; ?>