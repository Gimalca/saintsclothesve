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
    	<div class="my-account dashboard">
        	<div class="block-title" style="margin-bottom: 27px;">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
              <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
              <table class="list">
                <thead>
                  <tr>
                    <td class="left"><?php echo $column_date_added; ?></td>
                    <td class="left"><?php echo $column_description; ?></td>
                    <td class="right"><?php echo $column_amount; ?></td>
                  </tr>
                </thead>
                <tbody>
                  <?php if ($transactions) { ?>
                  <?php foreach ($transactions  as $transaction) { ?>
                  <tr>
                    <td class="left"><?php echo $transaction['date_added']; ?></td>
                    <td class="left"><?php echo $transaction['description']; ?></td>
                    <td class="right"><?php echo $transaction['amount']; ?></td>
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
        </div>
    </div>
  
 </div>
  
  
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>