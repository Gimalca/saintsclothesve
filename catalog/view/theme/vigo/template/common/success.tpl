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
          <div class="block block-account-info">
              <div class="block-title" style="text-align: left">
         	   <strong><span><?php echo $heading_title; ?></span></strong>
            </div>
            <div class="block-content">
                
                <?php echo $text_message; ?>
            </div>
          </div>
          <div class="buttons-set">
        <a href="<?php echo $continue; ?>" >
           <button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
        </a>
     </div>
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php //echo $column_left; ?>
   </div>
 </div>
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>