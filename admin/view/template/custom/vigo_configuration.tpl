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
                            <h1><?php echo $text_footer_option; ?></h1>
                            </div>
                        </div>
                    </td>
                </tr>
                
            	<tr>
                    <td><label for="facebook"><?php echo $text_facebook; ?> :</label></td>
                    <td><input type="text" name="facebook" size="40" id="facebook" value="<?php echo $facebook; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="twitter"><?php echo $text_twitter; ?> :</label></td>
                    <td><input type="text" name="twitter" size="40" id="twitter" value="<?php echo $twitter; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="rss"><?php echo $text_rss; ?> :</label></td>
                    <td><input type="text" name="rss" size="40" id="rss" value="<?php echo $rss; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="delicious"><?php echo $text_delicious; ?> :</label></td>
                    <td><input type="text" name="delicious" size="40" id="delicious" value="<?php echo $delicious; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="linkedin"><?php echo $text_linkedin; ?> :</label></td>
                    <td><input type="text" name="linkedin" size="40" id="linkedin" value="<?php echo $linkedin; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="flickr"><?php echo $text_flickr; ?> :</label></td>
                    <td><input type="text" name="flickr" size="40" id="flickr" value="<?php echo $flickr; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="skype"><?php echo $text_skype; ?> :</label></td>
                    <td><input type="text" name="skype" size="40" id="skype" value="<?php echo $skype; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="email"><?php echo $text_email; ?> :</label></td>
                    <td><input type="text" name="email" size="40" id="email" value="<?php echo $email; ?>" required="required"/></td>
                </tr>
                <tr>
                    <td><label for="copyright"><?php echo $text_copy_right; ?> :</label></td>
                    <td><input type="text" name="copyright" size="40" id="copyright" value="<?php echo $copyright; ?>" required="required"/></td>
                </tr>
                <tr>
        			<td><label for="footer_background_type"><?php echo $text_footer_background; ?> :</label></td>
            		<td>
                        <select name="footer_background_type" id="footer_background_type" onchange="$('#form').submit();">
                            <option <?php if($footer_background_type == 1) { echo 'selected';} ?> value="1"> Backgroung Color</option>
                            <option <?php if($footer_background_type == 2) { echo 'selected';} ?> value="2">Backgroung Image</option>
                            <option <?php if($footer_background_type == 3) { echo 'selected';} ?> value="3">Backgroung Pattent</option>
                            
                        </select>
                   		
                        
                        
                        <tr id="background_display">
                        
                        <?php if($footer_background_type == 1) { ?>
                        <td>
                            <label for="color"><?php echo $text_color; ?> :</label>
                        </td>
                        <td>
                            <input type="text" class="color" name="footer_background" value=""/> 
                            <!--<?php echo $footer_background; ?>-->
                        </td>
                        <?php } ?>
                        <?php if($footer_background_type == 2) { ?>
                        <td>
                            <label for="image"><?php echo $text_image; ?> :</label>
                        </td>
                        <td>
                        	<div class="image"><img src="<?php echo $footer_background; ?>" alt="" id="thumb" /><br />
                              <input type="hidden" name="footer_background" value="<?php echo $footer_background; ?>" id="image" />
                              <a onclick="image_upload('image', 'thumb');">browse</a> &nbsp;&nbsp;|&nbsp;&nbsp; <a onclick="$('#thumb').attr('src', '<?php echo $no_image; ?>'); $('#image').attr('value', '');">clear</a></div>
                        </td>

                        <?php } ?>
                        <?php if($footer_background_type == 3) { ?>
                        <td><label for="footer_background"><?php echo $text_pattent; ?> :</label></td>
            		<td>
                    <select name="footer_background" id="footer_background">
                        <option <?php if($footer_background == '1.png') { echo 'selected';} ?> value="1.png">  Pattent 1  </option>
                        <option <?php if($footer_background == '2.png') { echo 'selected';} ?> value="2.png"> Pattent 2 </option>
                        <option <?php if($footer_background == '3.png') { echo 'selected';} ?> value="3.png"> Pattent 3 </option>
                        <option <?php if($footer_background == '4.png') { echo 'selected';} ?> value="4.png"> Pattent 4 </option>
                        <option <?php if($footer_background == '5.png') { echo 'selected';} ?> value="5.png"> Pattent 5 </option>
                        <option <?php if($footer_background == '6.png') { echo 'selected';} ?> value="6.png"> Pattent 6 </option>
                        <option <?php if($footer_background == '7.png') { echo 'selected';} ?> value="7.png"> Pattent 7 </option>
                        <option <?php if($footer_background == '8.png') { echo 'selected';} ?> value="8.png"> Pattent 8 </option>
                    </select>
                        </td>
                        <?php } ?>
                        </tr> 
                    </td>
                   
        		</tr>
                
                <tr>
                    <td colspan="2" class="configur_heading">
                        <div class="box">
                            <div class="heading">
                            	<h1><?php echo $text_product_listing_option; ?></h1>
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
        			<td><label for="product_listing_effect"><?php echo $text_product_listing_effects; ?> :</label></td>
            		<td>
                        <select name="product_listing_effect" id="product_listing_effect">
                            <option <?php if($product_listing_effect == 1) { echo 'selected';} ?> value="1">Effect1</option>
                            <option <?php if($product_listing_effect == 2) { echo 'selected';} ?> value="2">Effect2</option>
                            <option <?php if($product_listing_effect == 3) { echo 'selected';} ?> value="3">Effect3</option>
                            <option <?php if($product_listing_effect == 4) { echo 'selected';} ?> value="4">Effect4</option>
                            <option <?php if($product_listing_effect == 5) { echo 'selected';} ?> value="5">Effect5</option>
                            <option <?php if($product_listing_effect == 6) { echo 'selected';} ?> value="6">Effect6</option>
                        </select>
                    </td>
        		</tr>
                
                <tr>
                    <td colspan="2" class="configur_heading">
                    <div class="box">
                        <div class="heading">
                        	<h1><?php echo $text_mega_manu_option; ?></h1>
                        </div>
                    </div>
                    </td>
                </tr>
                <tr>
        			<td><label for="Megamenu"><?php echo $text_mega_menu; ?> :</label></td>
            		<td>
                        <select name="Megamenu" id="Megamenu">
                            <option <?php if($megamenu == 1) { echo 'selected';} ?> value="1">Enable</option>
                            <option <?php if($megamenu == 2) { echo 'selected';} ?> value="2">Disable</option>
                       	</select>
                    </td>
        		</tr>
                <?php if($megamenu==1) { ?>
                <tr>
                    <td>
                        <label for="image"><?php echo $text_mega_menu_content; ?> :</label>
                    </td>
                   
                   	<td>
            			<textarea name="category_image" id="category_image" cols="40" rows="5" ><?php echo $category_image; ?></textarea>
            	
           			 </td>
        
                </tr>
                <tr>
                    <td>
                        <label for="image"><?php echo $text_custom_menu; ?> :</label>
                    </td>
                   
                   	<td>
            			<textarea name="custom_category" id="custom_category" cols="40" rows="5" ><?php echo $custom_category; ?></textarea>
            	
           			 </td>
        
                </tr>                
                <?php } else { ?>
                <tr class="mega_menu_disable">
                    <td>
                        <label for="image"><?php echo $text_mega_menu_content; ?> :</label>
                    </td>
                   
                   	<td>
            			<textarea name="category_image" id="category_image" cols="40" rows="5" ><?php echo $category_image; ?></textarea>
            	
           			 </td>
        
                </tr>
                <tr class="mega_menu_disable">
                    <td>
                        <label for="image"><?php echo $text_custom_menu; ?> :</label>
                    </td>
                   
                   	<td>
            			<textarea name="custom_category" id="custom_category" cols="40" rows="5" ><?php echo $custom_category; ?></textarea>
            	
           			 </td>
        
                </tr> 
                <?php } ?>
                
                
                
            </table>
        </form>
        
        </div>
    </div>
</div> 

<link href="view/stylesheet/colorpicker/mcColorPicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="view/javascript/colorpicker/mcColorPicker.js" ></script> 


<script type="text/javascript" src="view/javascript/ckeditor/ckeditor.js"></script>
<script type="text/javascript"><!--

CKEDITOR.replace('category_image', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script>
<script type="text/javascript"><!--

CKEDITOR.replace('custom_category', {
	filebrowserBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashBrowseUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserImageUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>',
	filebrowserFlashUploadUrl: 'index.php?route=common/filemanager&token=<?php echo $token; ?>'
});

//--></script>

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

<?php echo $footer; ?>