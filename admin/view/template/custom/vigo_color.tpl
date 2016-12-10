<style type="text/css">
.configur_heading {padding: 10px 0 !important;}
.configur_heading .box > .heading h1{color: #2e2e2e;}
</style>
<?php echo $header; ?>
<div id="content">
	<div class="box">
    	<div class="heading">
          <h1><img src="view/image/setting.png" alt="" /><?php echo $heading_title; ?></h1>
          <div class="buttons">
          
          <a onclick="$('#form').submit();" class="button"><?php echo $button_update; ?></a>
          
          <a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a>
          
          </div>
        </div>
        		
		<div class="content">
        <?php $token = $_GET['token']; ?>
        
        <form action="<?php echo $action; ?>" enctype="multipart/form-data" method="post"  id="form">
        		
        	<table class="form">
            
            	<tr>
                	<td colspan="2" class="configur_heading">
                        <div class="box">
                            <div class="heading">
                            <h1><?php echo $text_basic_color; ?></h1>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="text_color"><?php echo $text_text_color; ?> :</label></td>
                    <td><input type="text" class="color" name="text_color" size="40" id="text_color" value="<?php echo $text_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="link_color"><?php echo $text_link_color; ?> :</label></td>
                    <td><input type="text" class="color"  name="link_color" size="40" id="link_color" value="<?php echo $link_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="link_hover_color"><?php echo $text_link_hover_color; ?> :</label></td>
                    <td><input type="text" class="color" name="link_hover_color" size="40" id="link_hover_color" value="<?php echo $link_hover_color; ?>" required="required"/></td>
                </tr>
                
                
                <tr>
                	<td colspan="2" class="configur_heading">
                        <div class="box">
                            <div class="heading">
                            <h1><?php echo $text_buttons; ?></h1>
                            </div>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td><label for="button_background_color"><?php echo $text_button_background_color; ?> :</label></td>
                    <td><input type="text"  name="button_background_color" size="40" id="button_background_color" value="<?php echo $button_background_color; ?>" required="required"  class="color"/></td>
                </tr>
                <tr>
                    <td><label for="button_border_color"><?php echo $text_button_border_color; ?> :</label></td>
                    <td><input type="text" class="color" name="button_border_color" size="40" id="button_border_color" value="<?php echo $button_border_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="button_text_color"><?php echo $text_button_text_color; ?> :</label></td>
                    <td><input type="text" class="color" name="button_text_color" size="40" id="button_text_color" value="<?php echo $button_text_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="button_hover_background_color"><?php echo $text_hover_button_background_color; ?> :</label></td>
                    <td><input type="text"  name="button_hover_background_color" size="40" id="button_hover_background_color" value="<?php echo $button_hover_background_color; ?>" required="required" class="color"/></td>
                </tr>
                <tr>
                    <td><label for="button_hover_border_color"><?php echo $text_hover_button_border_color; ?> :</label></td>
                    <td><input type="text" class="color" name="button_hover_border_color" size="40" id="button_hover_border_color" value="<?php echo $button_hover_border_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="button_hover_text_color"><?php echo $text_hover_button_text_color; ?> :</label></td>
                    <td><input type="text" class="color" name="button_hover_text_color" size="40" id="button_hover_text_color" value="<?php echo $button_hover_text_color; ?>" required="required"/></td>
                </tr>
                
                
                
                <tr>
                	<td colspan="2" class="configur_heading">
                        <div class="box">
                            <div class="heading">
                            <h1><?php echo $text_product_labels; ?></h1>
                            </div>
                        </div>
                    </td>
                </tr>
                
                <tr>
                    <td><label for="label_new_background_color"><?php echo $text_label_new_background_color; ?> :</label></td>
                    <td><input type="text" name="label_new_background_color" size="40" id="label_new_background_color" value="<?php echo $label_new_background_color; ?>" required="required" class="color"/></td>
                </tr>
                <tr>
                    <td><label for="label_new_border_color"><?php echo $text_label_new_border_color; ?> :</label></td>
                    <td><input type="text" class="color" name="label_new_border_color" size="40" id="label_new_border_color" value="<?php echo $label_new_border_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="label_new_text_color"><?php echo $text_label_new_text_color; ?> :</label></td>
                    <td><input type="text" class="color" name="label_new_text_color" size="40" id="label_new_text_color" value="<?php echo $label_new_text_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="label_sale_background_color"><?php echo $text_label_sale_background_color; ?> :</label></td>
                    <td><input type="text" name="label_sale_background_color" size="40" id="label_sale_background_color" value="<?php echo $label_sale_background_color; ?>" required="required" class="color"/></td>
                </tr>
                <tr>
                    <td><label for="label_sale_border_color"><?php echo $text_label_sale_border_color; ?> :</label></td>
                    <td><input type="text" class="color" name="label_sale_border_color" size="40" id="label_sale_border_color" value="<?php echo $label_sale_border_color; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="label_sale_text_color"><?php echo $text_label_sale_text_color; ?> :</label></td>
                    <td><input type="text" class="color" name="label_sale_text_color" size="40" id="label_sale_text_color" value="<?php echo $label_sale_text_color; ?>" required="required"/></td>
                </tr>
                
                
                
            </table>
        </form>
        
        </div>
    </div>
</div> 

<link href="view/stylesheet/colorpicker/mcColorPicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="view/javascript/colorpicker/mcColorPicker.js" ></script> 


<!--<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>-->


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