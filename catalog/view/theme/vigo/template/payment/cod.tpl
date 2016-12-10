<div class="buttons">
  <div class="right"> 
     <button type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="button input-box" >
		<span><span><?php echo $button_confirm; ?></span></span>
    </button>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {
	$.ajax({ 
		type: 'get',
		url: 'index.php?route=payment/cod/confirm',
		success: function() {
			location = '<?php echo $continue; ?>';
		}		
	});
});
//--></script> 
