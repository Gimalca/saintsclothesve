<?php echo $header; ?>
<div id="content">
	<div class="box">
        <div class="heading">
          <h1><img src="view/image/setting.png" alt="" /><?php echo $heading_title; ?></h1>
          <div class="buttons">
          <a href="<?php echo $insert; ?>" class="button"><?php echo $button_insert; ?></a>
          <a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
        </div>
        <div class="content">
        <?php $token = $_GET['token']; ?>
        
<form name="vigo_slider_form" action="<?php echo $effect_update; ?>"  method="POST" enctype="multipart/form-data">
	<table border="0" cellpadding="6" cellspacing="0" align="center" style="border-collapse:collapse; margin-top:10px; width:100%;">
		<tr>
        	<td width="150px"><label for="mainhome_slider_effect"><?php echo $text_slider_effects; ?> :</label></td>
            <td>
				<select name="mainhome_slider_effect" id="mainhome_slider_effect">
                	<option <?php if($slider_effect == 1) { echo 'selected';} ?> value="1"> Effect1 </option>
                    <option <?php if($slider_effect == 2) { echo 'selected';} ?> value="2"> Effect2 </option>
                    <option <?php if($slider_effect == 3) { echo 'selected';} ?> value="3"> Effect3 </option>
                    <option <?php if($slider_effect == 4) { echo 'selected';} ?> value="4"> Effect4 </option>
                    <option <?php if($slider_effect == 5) { echo 'selected';} ?> value="5"> Effect5 </option>
                </select>
            </td>
        </tr>
        <tr>
        	<td></td>
        	<td>
            	<input type="submit" name="trego_submit_config" value="Save Configuration" />
            </td>
        </tr>
    </table>
</form>

<?php if($slider_effect == 3) {
	echo "change or add in slider3  Go To Extensions --> Modules --> Text Blocks change in slider image and content.";
} else { ?>
        
<form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
	<table class="list">
    	<thead>
        	<tr>
            	<td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
            	<td class="left"><?php echo $text_title; ?></td>
                <td class="left"><?php echo $text_description; ?></td>
                <td class="left"><?php echo $text_text_color; ?></td>
                <td class="left"><?php echo $text_link; ?></td>
                <td class="center"><?php echo $text_image; ?></td>
                <td class="right"><?php echo $text_order; ?></td>
                <td class="right"><?php echo $text_action; ?></td>
            </tr>
       </thead>
       <tbody>
       		
       		<?php if ($products) { ?>
            <?php foreach ($products as $product) { ?>
                <tr>
                	
                    <td style="text-align: center;"><?php if ($product['selected']) { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $product['id']; ?>" checked="checked" />
                <?php } else { ?>
                <input type="checkbox" name="selected[]" value="<?php echo $product['id']; ?>" />
                <?php } ?></td>
                    <td class="left"><?php echo $product['name']; ?></td>
                    <td class="left"><?php echo $product['desc_1']; ?></td>
                    <td class="left"><?php echo $product['color']; ?></td>
                    <td class="left"><?php echo $product['link']; ?></td>
                   
                    <td class="center"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" style="padding: 1px; border: 1px solid #DDDDDD;" /></td>
                    <td class="left"><?php echo $product['order_1']; ?></td>
                    <td class="right"><?php foreach ($product['action'] as $action) { ?>
                 	<a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> 
                <?php } ?></td>
                
                </tr>
            <?php } ?>
            <?php } else { ?>
                <tr>
                  <td class="center" colspan="8"><?php echo $text_no_slider; ?></td>
                </tr>
            <?php } ?>
       </tbody>
   </table>
</form>
	
<?php } ?>
        </div>
    </div>
</div>   
 
<script type="text/javascript"><!--
function image_upload(field, thumb) {
	$('#dialog').remove();
	
	$('#content').prepend('<div id="dialog" style="padding: 3px 0px 0px 0px;"><iframe src="index.php?route=common/filemanager&token=<?php echo $token; ?>&field=' + encodeURIComponent(field) + '" style="padding:0; margin: 0; display: block; width: 100%; height: 100%;" frameborder="no" scrolling="auto"></iframe></div>');
	
	$('#dialog').dialog({
		title: 'Image Manager',
		close: function (event, ui) {
			if ($('#' + field).attr('value')) {
				$.ajax({
					url: 'index.php?route=common/filemanager/image&token=<?php echo $token; ?>&image=' + encodeURIComponent($('#' + field).attr('value')),
					dataType: 'text',
					success: function(text) {
						$('#' + thumb).replaceWith('<img src="' + text + '" alt="" id="' + thumb + '" />');
					}
				});
			}
		},	
		bgiframe: false,
		width: 800,
		height: 400,
		resizable: false,
		modal: false
	});
};
//--></script>
<?php echo $footer; ?>
<!--
title: '<?php echo $text_image_manager; ?>',
-->


