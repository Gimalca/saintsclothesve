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
    	<div class="my-account">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	<div class="block block-gift-certificate">
                <div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
					<ul class="form-list">
                    	<li class="fields">
                            <div class="field">
                            	<div class="input-box name-firstname">
          <input type="text" name="to_name" value="<?php echo $to_name; ?>" class="input-text required-entry" placeholder=" <?php echo $entry_to_name;?> *"/>
          <?php if ($error_to_name) { ?>
          <span class="error"><?php echo $error_to_name; ?></span>
          <?php } ?>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-email">
          <input type="text" name="to_email" value="<?php echo $to_email; ?>" class="input-text required-entry" placeholder="<?php echo $entry_to_email;?> *"/>
          <?php if ($error_to_email) { ?>
          <span class="error"><?php echo $error_to_email; ?></span>
          <?php } ?>
                                </div>
                            </div>
                        </li>
                        <li class="fields">
                            <div class="field">
                            	<div class="input-box name-firstname">
          <input type="text" name="from_name" value="<?php echo $from_name; ?>" class="input-text required-entry" placeholder="<?php echo $entry_from_name;?> *"/>
          <?php if ($error_from_name) { ?>
          <span class="error"><?php echo $error_from_name; ?></span>
          <?php } ?>
                                </div>
                            </div>
                            <div class="field">
                            	<div class="input-box input-email">
          <input type="text" name="from_email" value="<?php echo $from_email; ?>" class="input-text required-entry" placeholder="<?php echo $entry_from_email;?> *"/>
          <?php if ($error_from_email) { ?>
          <span class="error"><?php echo $error_from_email; ?></span>
          <?php } ?>
                                </div>
                            </div>
                        </li>
                        <li class="control">
                        	<b><span class="required">*</span> <?php echo $entry_theme; ?></b>
                        </li>
                      <?php foreach ($voucher_themes as $voucher_theme) { ?>
                      <li class="control">
                      <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
                      <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" class="radio"/>
                      <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
                      <?php } else { ?>
                      <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" class="radio"/>
                      <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
                      <?php } ?>
                      </li>
                      <?php } ?>
          
                      <?php if ($error_theme) { ?>
                      <span class="error"><?php echo $error_theme; ?></span>
                      <?php } ?>
                      
                      <li class="fields">
                        <div class="field">
                        	<div class="input-box input-comment">
          <textarea name="message" cols="40" rows="5" class="input-text required-entry" placeholder="<?php echo $entry_message;?>"> <?php echo $message; ?></textarea>
                            </div>
                        </div>
                        <div class="field">
                        	<div class="input-box input-amount">
          <input type="text" name="amount" value="<?php echo $amount; ?>" size="5" class="input-text required-entry" placeholder="<?php echo $entry_amount;?> *"/>
          <?php if ($error_amount) { ?>
          <span class="error"><?php echo $error_amount; ?></span>
          <?php } ?>
                            </div>
                        </div>
                      </li>
                  	  <li class="control">
                        	<div class="input-box">
                            <?php if ($agree) { ?>
                            <input type="checkbox" name="agree" value="1" checked="checked" class="checkbox"/>
                            <?php } else { ?>
                            <input type="checkbox" name="agree" value="1" class="checkbox"/>
                            <?php } ?>
        					</div>
        					<?php echo $text_agree; ?>
        					
                        </li>
                    </ul>
                </div>
            </div>
            <div class="buttons-set">
                  <button class="button" value="<?php echo $button_continue; ?>" type="submit">
                  		<span><span><?php echo $button_continue; ?></span></span>
                  </button>
            </div>
    
  		</form>
        </div>
    </div>
  
 </div>
 
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>