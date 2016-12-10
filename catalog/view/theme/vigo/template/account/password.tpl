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

            <div class="block block-change-password">
                <div class="block-title" style="margin-bottom: 27px;">
                    <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                  <ul class="form-list">
                    <li class="fields">
                        <div class="field">
                            <div class="input-box input-password">
                    <input type="password" id="input-emailn" name="password" value="<?php echo $password; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_password;?> *"/>
                    <?php if ($error_password) { ?>
                    <span class="error"><?php echo $error_password; ?></span>
                    <?php } ?>
                            </div>
                        </div>
                        <div class="field">
                            <div class="input-box input-password">
                    <input type="password" id="input-emailn" name="confirm" value="<?php echo $confirm; ?>" class="input-text validate-password required-entry" placeholder="<?php echo $entry_confirm;?> *"/>
                    <?php if ($error_confirm) { ?>
                    <span class="error"><?php echo $entry_confirm; ?></span>
                    <?php } ?>
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