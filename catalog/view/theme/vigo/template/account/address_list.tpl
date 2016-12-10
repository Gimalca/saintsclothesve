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
       <div class="col-md-2 col-sm-4 col-xs-12">
    <?php echo $column_left; ?>
    </div>
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        	<div class="block block-contact-info">
                <div class="block-title" style="margin-bottom: 27px;">
                <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
           		<div class="block-content" style="color: black;">
            	<div class="row addresses-list">
            	<ol>
              	<?php foreach ($addresses as $result) { ?>
                	<li class="item">
                		<div class="col-sm-6 addresses-primary">
                		<address><?php echo $result['address']; ?></address>
                    </div>
                    	<div class="col-sm-6 addresses-additional">
                		<p>
                        <a href="<?php echo $result['update']; ?>" class="button"><?php echo $button_edit; ?></a>
                        <span class="separator">|</span>
                        <a href="<?php echo $result['delete']; ?>" class="button"><?php echo $button_delete; ?></a>
                    </p>
                    </div>
                	</li>
				<?php } ?>
              	</ol>
           </div>
            
            </div>
        	</div>
        </div>
        
    	<div class="buttons-set">
               <p class="required"><?php echo $text_required_fields; ?></p>
               <p class="back-link"><a href="<?php echo $back; ?>"><small>« </small><?php echo $button_back; ?></a></p>
               <a href="<?php echo $insert; ?>" class="button">
               <button class="button" title="Save" type="submit" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_new_address; ?></span></span></button></a>
            </div>
    </div>
   
  </div>
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>