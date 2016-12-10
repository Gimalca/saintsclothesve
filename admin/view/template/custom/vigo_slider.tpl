<?php echo $header; ?>

<div id="content">
	<div class="box">
        <div class="heading">
          <h1><img src="view/image/setting.png" alt="" /><?php echo $heading_title; ?></h1>
          <div class="buttons">
          <a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
          <a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a>
          
          </div>
        </div>
        <div class="content">
        <?php $token = $_GET['token']; ?>
        <form name="vigo_slider" action="<?php echo $action; ?>" enctype="multipart/form-data" method="post"  id="form">
	<table class="form">
    	<tr>
        	<td>
            	<label for="mainhome_slider_effect"><?php echo $text_slider_effects; ?> :</label>
            </td>
            <td>
				<select name="mainhome_slider_effect" id="mainhome_slider_effect">
                	<option <?php if($effect == 1) { echo 'selected';} ?> value="1">Effect1</option>
                    <option <?php if($effect == 2) { echo 'selected';} ?> value="2">Effect2</option>
                    
                    <option <?php if($effect == 4) { echo 'selected';} ?> value="4">Effect4</option>
                    <option <?php if($effect == 5) { echo 'selected';} ?> value="5">Effect5</option>
                </select>
            </td>
        </tr>
    	<tr>
        	<td>
				<label for="title"><?php echo $text_title; ?> :</label>
        	</td>
            <td>
            	<input type="text" name="name" size="40" id="title" value="<?php echo $name; ?>"/>
            </td>
        </tr>
        <tr>
        	<td>
				<label for="description"><?php echo $text_description; ?> :</label>
        	</td>
            <td>
            	<textarea name="desc" id="desc" cols="40" rows="5" ><?php echo $desc_1; ?></textarea>
            	
            </td>
        </tr>
        <tr>
        	<td>
				<label for="color"><?php echo $text_text_color; ?> :</label>
        	</td>
            <td>
            	<input type="text" class="color" name="color" value="<?php echo $color; ?>"/> 
            </td>
        </tr>
        <tr>
        	<td>
				<label for="link"><?php echo $text_link; ?> :</label>
        	</td>
            <td>
            	<input type="text" name="link" size="40" id="link" value="<?php echo $link; ?>"/>
            </td>
        </tr>
        <tr>
        	<td>
				<label for="image"><?php echo $text_image; ?> :</label>
        	</td>
           
            <td><div class="image"><img src="<?php echo $thumb; ?>" alt="" id="thumb" /><br />
                  <input type="hidden" name="image" value="<?php echo $image; ?>" id="image" />
                  <a onclick="image_upload('image', 'thumb');">browse</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a onclick="$('#thumb').attr('src', '<?php echo $no_image; ?>'); $('#image').attr('value', '');">clear</a></div></td>

        </tr>
        <tr>
        	<td>
				<label for="title"><?php echo $text_order; ?> :</label>
        	</td>
            <td>
            	<input type="text" name="order_1" size="40" id="order_1" value="<?php echo $order_1; ?>"/>
            </td>
        </tr>
        
    </table>
</form>

        </div>
    </div>
</div>
<link href="view/stylesheet/colorpicker/mcColorPicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="view/javascript/colorpicker/mcColorPicker.js" ></script> 
<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
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
<script type="text/javascript"><!--

CKEDITOR.replace('desc', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script>
<?php echo $footer; ?>
<!--
title: '<?php echo $text_image_manager; ?>',
-->


