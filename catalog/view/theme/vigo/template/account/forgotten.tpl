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
        		<div class="block block-forgot-password">
              		<div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                	<div class="block-content"  style="margin-top: 25px;">
                	<ul class="form-list">
                    	<li>
                        	<div class="input-box input-email">
               <input type="text" name="email" id="input-emailn" value="" class="input-text required-entry validate-email" placeholder="<?php echo $entry_email; ?> *"/>
                            </div>
                        </li>
                    </ul>
                    <div class="buttons-set">
                    <p class="back-link"><a href="<?php echo $back; ?>">
                    	<small>« </small><?php echo $button_back; ?>
                    </a></p>
                    <button class="button" title="Save" type="submit" value="<?php echo $button_continue; ?>">
                    	<span><span><?php echo $button_continue; ?></span></span>
                    </button>
               </div>
                </div>
            	</div>  
            	 
            </form>
        </div>
    </div>
     </div>
 
 
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>
