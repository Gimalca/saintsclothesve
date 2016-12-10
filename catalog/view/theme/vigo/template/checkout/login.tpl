<div class="col2-set">
    <div class="col-md-1 col-sm-1"></div>
    <div class="block block-new-users col-md-4 col-sm-4 col-xs-12" id="nuevo-cliente">
	<div class="block-title">
    	<strong><span><?php echo $text_new_customer; ?></span></strong>
  	</div>
  
	<div class="block-content">
  		<p><?php echo $text_checkout; ?></p>
    	<ul class="form-list">
			<li class="control">
    <?php if ($account == 'register') { ?>
    <input type="radio" name="account" value="register" id="register" checked="checked" class="radio"/>
    <?php } else { ?>
    <input type="radio" name="account" value="register" id="register" class="radio"/>
    <?php } ?>
  	<label for="register"><?php echo $text_register; ?></label>
          </li>
          <li class="control">
	<?php if ($guest_checkout) { ?>
  	<?php if ($account == 'guest') { ?>
    <input type="radio" name="account" value="guest" id="guest" checked="checked" class="radio"/>
    <?php } else { ?>
    <input type="radio" name="account" value="guest" id="guest" class="radio"/>
    <?php } ?>
    <label for="guest"><?php echo $text_guest; ?></label>
    <?php } ?>
          </li>
      </ul>
  	<p><?php echo $text_register_account; ?></p>
  	</div>
    	<div class="buttons-set">
        	<button type="button" value="<?php echo $button_continue; ?>" id="button-account" class="button" >
            	<span><span><?php echo $button_continue; ?></span></span>
            </button>
        </div>
  
</div>
    <div class="dividern col-md-2 col-sm-2 hidden-xs">
        
    </div>
<div id="login" class="block block-registered-users col-md-4 col-sm-4 col-xs-12">
	<div class="block-title">
    	<strong><span><?php echo $text_returning_customer; ?></span></strong>
    </div>
    <div class="block-content">
  		<p><?php echo $text_i_am_returning_customer; ?></p>
  		<ul class="form-list">
        	<li>
            	<div class="input-box input-email">
  					<input type="text" id="input-emailn" name="email" value="" class="input-text validate-password required-entry" placeholder="   <?php echo $entry_email;?> *"/>
  				</div>
           </li>
           <li>
                <div class="input-box input-password">
  					<input type="password" id="input-emailn" name="password" value="" class="input-text validate-password required-entry" placeholder="   <?php echo $entry_password;?> *"/>
                </div>
          </li>
  	</ul>
  		<div class="buttons-set">
        	<a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
        	<button type="button" value="<?php echo $button_login; ?>" id="button-login" class="button" >
            	<span><span><?php echo $button_login; ?></span></span>
            </button>
        </div>
  </div>
  
  
</div>
    <div class="col-md2 col-sm-2"></div>
</div>
<div class="col2-set for-desktop">
	
    <div class="col-md-4 col-sm-4 col-xs-12"></div>
    <div class="registered-users col-md-4 col-sm-4 col-xs-12">
    	
   </div>
</div>