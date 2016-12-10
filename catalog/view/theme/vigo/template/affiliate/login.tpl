<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
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
        	<div class="account-login">
            	<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	<div class="col2-set">
              <div class="block">
            	<div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	<?php echo $text_description; ?>
                </div>
              </div>
            </div>
            <div class="col2-set">
            	<div class="block block-new-users col-md-6 col-sm-6 col-xs-12">
                	<div class="block-title">
                    	<strong><span><?php echo $text_new_affiliate; ?></span></strong>
                    </div>
					<div class="block-content">
                    	<?php echo $text_register_account; ?>
                    </div>
                </div>
                <div class="block block-registered-users col-md-6 col-sm-6 col-xs-12">
                 
                	<div class="block-title">
                    	<strong><span><?php echo $text_returning_affiliate; ?></span></strong>
                    </div>
					<div class="block-content">
                    	<p><?php echo $text_i_am_returning_affiliate; ?></p>
                        <ul class="form-list">
                            <li>
                            	<div class="input-box input-email">
                   <input type="text" name="email" value="<?php echo $email; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_email;?> *"/>
                                </div>
                            </li>
                            <li>
                            	<div class="input-box input-password">
                   <input type="password" name="password" value="<?php echo $password; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_password;?> *"/>
                                </div>
                            </li>
                        </ul>
                        <p class="required"><?php echo $text_required_fields; ?></p>
                    </div>
                    
                </div>
            </div>
            <div class="col2-set for-desktop">
                <div class="new-users col-md-6 col-sm-6 col-xs-12">
                	<div class="buttons-set">
                    	<a href="<?php echo $register; ?>" class="button">
                        <button class="button" value="<?php echo $button_continue; ?>" type="button" title="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span>
                        </button>
                        </a>
                    </div>
                </div>
                <div class="registered-users col-md-6 col-sm-6 col-xs-12">
                	<div class="buttons-set">
                    <button id="send2" class="button" title="Login" name="send" value="<?php echo $button_login; ?>" type="submit">
                    <span><span><?php echo $button_login; ?></span></span>
                    </button>
                    <?php if ($redirect) { ?>
                  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                  <?php } ?>
                    </div>
                </div>
            </div>
       </form>
       		</div>
            
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
   </div>
 </div>
 
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>