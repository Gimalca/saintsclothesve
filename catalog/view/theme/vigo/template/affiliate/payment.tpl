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
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	<div class="block block-address-info">
                <div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	<ul class="form-list">
                		<li class="fields">
                			<div class="field">
	                            <div class="input-box input-tax">
              <input type="text" name="tax" value="<?php echo $tax; ?>"  class="input-text required-entry"  placeholder="<?php echo $entry_tax; ?> *"/>
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
                		<li id="payment-cheque" class="payment" style="display: list-item;">
                            <div class="field">
	                            <div class="input-box input-cheque">
              <input type="text" name="cheque" value="<?php echo $cheque; ?>" class="input-text required-entry"  placeholder="<?php echo $entry_cheque; ?> *"/>
                                </div>
                            </div>
                        </li>
                        <li id="payment-paypal" class="payment" style="display: none;">
                            <div class="field">
                            	<div class="input-box input-paypal">
              <input type="text" name="paypal" value="<?php echo $paypal; ?>"  class="input-text required-entry" placeholder="<?php echo $entry_paypal; ?> *"/>
                                </div>
                            </div>
                        </li>
                        <li id="payment-bank" class="payment" style="display: none;">
                            <div class="field">
                            	<div class="input-box input-paypal">
              <input type="text" name="bank_name" value="<?php echo $bank_name; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_name; ?> *"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
              <input type="text" name="bank_branch_number" value="<?php echo $bank_branch_number; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_branch_number; ?> *"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
              <input type="text" name="bank_swift_code" value="<?php echo $bank_swift_code; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_swift_code; ?> *"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
              <input type="text" name="bank_account_name" value="<?php echo $bank_account_name; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_account_name; ?> *"/>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-paypal">
              <input type="text" name="bank_account_number" value="<?php echo $bank_account_number; ?>" class="input-text required-entry" placeholder="<?php echo $entry_bank_account_number; ?> *"/>
                                </div>
                            </div>
                        </li>
                	</ul>
                </div>
            </div>
            
            <div class="buttons-set">
            	<p class="required"><?php echo $text_required_fields;?></p>
            	<p class="back-link"><a href="<?php echo $back; ?>">
                	<small> « </small><?php echo $button_back; ?>
                 </a></p>
                <button class="button" value="<?php echo $button_continue; ?>" type="submit">
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
$('input[name=\'payment\']').bind('change', function() {
	$('.payment').hide();
	
	$('#payment-' + this.value).show();
});

$('input[name=\'payment\']:checked').trigger('change');
//--></script> 
<?php echo $footer; ?> 