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
    	<div class="my-account dashboard">
        	<div class="block box-account box-info">
                <div class="block-title">
	                <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	 <p><?php echo $text_description; ?></p>
                     <div class="row">
                        <div class="col-sm-6">
                        	<div class="box">
                                <div class="box-title">
                                	<h3><?php echo $text_code; ?></h3>
                                </div>
	                        </div>
                        	<div class="box-content form-list">
                        	<textarea cols="40" rows="5" class="input-text required-entry" placeholder="<?php echo $text_tracking_code; ?>"><?php echo $code; ?></textarea>
                        </div>
                     	</div>
                        <div class="col-sm-6">
                        	<div class="box">
                                <div class="box-title">
                                	<h3><?php echo $text_generator; ?></h3>
                                </div>
	                        </div>
                        	<div class="box-content form-list">
                            	<input type="text" name="product" value=""  class="input-text required-entry"  placeholder="<?php echo $text_tracking_link_generator; ?>" />
                        	</div>
                     	</div>
                     </div>
                     <div class="row">
                     	<div class="col-sm-6">
                        	<div class="box">
                                <div class="box-title">
                                	<h3><?php echo $text_link; ?></h3>
                                </div>
	                        </div>
                        	<div class="box-content form-list">
                        		<textarea name="link" cols="40" rows="5" class="input-text required-entry" placeholder="<?php echo $text_tracking_link; ?>"></textarea>
                        	</div>
                     	</div>
                     </div>
            	</div>
            </div>
            <div class="buttons-set">
            	<a href="<?php echo $continue; ?>">
            	<button class="button" value="<?php echo $button_continue; ?>" type="button" title="Save">
					<span><span><?php echo $button_continue; ?></span></span>
                </button>
                </a>
            </div>
        	
             
             
              
              
              
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
   </div>
 </div>
 
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
	delay: 500,
	source: function(request, response) {
		$.ajax({
			url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request.term),
			dataType: 'json',
			success: function(json) {		
				response($.map(json, function(item) {
					return {
						label: item.name,
						value: item.link
					}
				}));
			}
		});
	},
	select: function(event, ui) {
		$('input[name=\'product\']').attr('value', ui.item.label);
		$('textarea[name=\'link\']').attr('value', ui.item.value);
						
		return false;
	},
	focus: function(event, ui) {
      return false;
   }
});
//--></script> 
<?php echo $footer; ?>