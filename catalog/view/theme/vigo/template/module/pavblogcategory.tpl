<div class="block block-category-nav">
	<div class="block-title">
    	<strong><span><?php echo $heading_title; ?></span></strong>
    </div>
	<div class="block-content box-content" id="pav-categorymenu">
    	<?php echo $tree;?>
    </div>
</div>


<!--<div class="box ">
	<div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content" id="pav-categorymenu" >
		<?php echo $tree;?>
	</div>
</div>-->
<script src="catalog/view/theme/vigo/javascript/jquery/pavblog_script.js" type="text/javascript"></script>
<script>
$(document).ready(function(){
		// applying the settings
		$("#pav-categorymenu li span.head").addClass("selected");
			$('#pav-categorymenu ul').Accordion({
				active: 'span.selected',
				header: 'span.head',
				alwaysOpen: false,
				animated: true,
				showSpeed: 400,
				hideSpeed: 800,
				event: 'click'
			});
});

</script>
