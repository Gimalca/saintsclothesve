<?php echo $header; ?>
  <?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="content" class="main-container col2-left-layout" ><?php echo $content_top; ?>
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
                	<div class="block block-account-info">
                        <div class="block-title">
                        	<strong><span><?php echo $text_your_details; ?></span></strong>
                        </div>
                        <div class="block-content">
                        	<ul class="form-list">
								<li class="fields">
                                	<div class="customer-name">
                                        <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                                        	<div class="input-box">
                         <input type="text" name="firstname" id="input-emailn" value="<?php echo $firstname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_firstname; ?> *"/>
                        <?php if ($error_firstname) { ?>
                        <span class="error"><?php echo $error_firstname; ?></span>
                        <?php } ?>
                                            </div>
                                        </div>
                                        <div class="field name-lastname col-md-6 col-sm-6 col-xs-12">
                                        	<div class="input-box">
                       <input type="text" name="lastname" id="input-emailn" value="<?php echo $lastname; ?>" class="input-text required-entry" placeholder="<?php echo $entry_lastname; ?> *"/>
                        <?php if ($error_lastname) { ?>
                        <span class="error"><?php echo $error_lastname; ?></span>
                        <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
									<div class="input-box input-email">
                        <input type="text" name="email" id="input-emailn" value="<?php echo $email; ?>" class="input-text required-entry validate-email" placeholder="<?php echo $entry_email; ?> *" />
                        <?php if ($error_email) { ?>
                        <span class="error"><?php echo $error_email; ?></span>
                        <?php } ?>
                                    </div>
                                </li>
                                <li class="fields">
                                	<div class="input-box input-contact">
                                        <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                         <input type="text" name="telephone" id="input-emailn" value="<?php echo $telephone; ?>" class="input-text required-entry" placeholder="<?php echo $entry_telephone; ?> *"/>
                        <?php if ($error_telephone) { ?>
                        <span class="error"><?php echo $error_telephone; ?></span>
                        <?php } ?>
                                        </div>
                                        <div class="field name-firstname col-md-6 col-sm-6 col-xs-12">
                       <input type="text" name="fax" id="input-emailn" value="<?php echo $fax; ?>" class="input-text required-entry" placeholder="<?php echo $entry_fax; ?> *"/>
                                        </div>
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
<?php echo $footer; ?>