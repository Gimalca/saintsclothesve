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
      <div class="col-md-2 col-sm-4 col-xs-12">
    <?php echo $column_left; ?>
    </div>
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        
        	<h1><?php echo $heading_title; ?></h1>
  <?php if ($profiles) { ?>

    <table class="list">
        <thead>
        <tr>
            <td class="left"><?php echo $column_profile_id; ?></td>
            <td class="left"><?php echo $column_created; ?></td>
            <td class="left"><?php echo $column_status; ?></td>
            <td class="left"><?php echo $column_product; ?></td>
            <td class="right"><?php echo $column_action; ?></td>
        </tr>
        </thead>
        <tbody>
        <?php if ($profiles) { ?>
        <?php foreach ($profiles as $profile) { ?>
        <tr>
            <td class="left">#<?php echo $profile['id']; ?></td>
            <td class="left"><?php echo $profile['created']; ?></td>
            <td class="left"><?php echo $status_types[$profile['status']]; ?></td>
            <td class="left"><?php echo $profile['name']; ?></td>
            <td class="right"><a href="<?php echo $profile['href']; ?>"><img src="catalog/view/theme/vigo/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></td>
        </tr>
        <?php } ?>
        <?php } else { ?>
        <tr>
            <td class="center" colspan="5"><?php echo $text_empty; ?></td>
        </tr>
        <?php } ?>
        </tbody>
    </table>

  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
        
        </div>
    </div>
  
  </div>
        
  
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>