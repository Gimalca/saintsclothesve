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
        
<form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
	<table class="list">
    	<thead>
        	<tr>
            	<td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
            	<td class="left"><?php echo $text_title; ?></td>
                <!--<td class="left">Description</td>-->
                <td class="left"><?php echo $text_text_color; ?></td>
                <td class="left"><?php echo $text_link; ?></td>
                <td class="center"><?php echo $text_image; ?></td>
                <td class="right"><?php echo $text_order; ?></td>
                <td class="right"><?php echo $text_slider; ?></td>
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
                    <!--<td class="left"><?php echo $product['desc_1']; ?></td>-->
                    <td class="left"><?php echo $product['color']; ?></td>
                    <td class="left"><?php echo $product['link']; ?></td>
                   
                    <td class="center"><img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" style="padding: 1px; border: 1px solid #DDDDDD;" /></td>
                    <td class="left"><?php echo $product['order_1']; ?></td>
                    <td class="left"><?php echo $product['slider']; ?></td>
                    <td class="right"><?php foreach ($product['action'] as $action) { ?>
                [ <a href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a> ]
                <?php } ?></td>
                
                </tr>
            <?php } ?>
            <?php } else { ?>
                <tr>
                  <td class="center" colspan="7"><?php echo $text_no_banner; ?></td>
                </tr>
            <?php } ?>
       </tbody>
   </table>
</form>
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


