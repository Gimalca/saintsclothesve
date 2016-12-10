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
  
    <div class="main container" style="padding-top: 20px">
  	<div class="col-main col-md-12 col-sm-12 col-xs-12">
    	<div class="">
        	<div class="">
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
            	<div class="col2-set">
                	
                    <div class="block block-registered-users col-md-offset-1 col-md-5 " style="padding-right: 70px">

                        <div class="block-title">
                            <strong><span><?php echo $text_returning_customer; ?></span></strong>
                        </div>
                        <div class="">
                            <p><?php //echo $text_i_am_returning_customer; ?></p>
                            <ul class="form-list">
                                <li>
                                    <div class="input-box input-email">
                                        <input type="text" name="email" id="input-emailn" value="<?php echo $email; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_email;?> *"/>
                                    </div>
                                </li>
                                <li>
                                    <div class="input-box input-password">
                                        <input type="password" name="password" id="input-emailn" value="<?php echo $password; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_password; ?> *"/>
                                    </div>
                                </li>
                                <a class="" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                            </ul>
                             
                              
                        </div>                        
                          <button type="submit" value="<?php echo $button_login; ?>" class="button" style="margin-top: 20px" id="send2" name="send" title="Login">
                                    <span><span><?php echo $button_login; ?></span></span>
                                </button>
                                <?php if ($redirect) { ?>
                                <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                                <?php } ?>
                                
                          
                          
                      
                        <div class="buttons-set for-mobile">
                            <a class="f-right" href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
                            <button type="submit" value="<?php echo $button_login; ?>" class="button" id="send2" name="send" title="Login">
                                <span><span><?php echo $button_login; ?></span></span>
                            </button>
                            <?php if ($redirect) { ?>
                            <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
                            <?php } ?>
                        </div>
                    </div>
                  
                    <div class="block block-new-users col-md-offset-1 col-md-5">
                        <div class="block-title">
                            <strong><span><?php echo $text_new_customer; ?></span></strong>
                        </div>
                        <div class="block-content">
                            <p><b><?php echo $text_register; ?></b></p>
                            <p><?php echo $text_register_account; ?></p>
                              <a href="<?php echo $register; ?>">
                                        <button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
                                    </a>
                        </div>
                        <div class="buttons-set for-mobile">
                            <a href="<?php echo $register; ?>">
                                <button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
                            </a>
                        </div>
                     
                    </div>
                    
                </div>
                
                </form>
            </div>
  
        </div>
    </div>
    <!--div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php //echo $column_left; ?>
   </div-->
 </div>
        
	<?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>