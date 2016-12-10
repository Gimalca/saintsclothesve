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
        	<div class="block block-product-return-info">
            	<div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
            	<div class="block-content">
                    <div class="box">
                    	<div class="box-title">
                        	<h3><?php echo $text_return_detail; ?></h3>
                        </div>
                        <div class="box-content">
                        	<div class="row">
                                <div class="col-sm-6">
                                	<b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?>
                                    <br />
                                    <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?>
                                </div>
                                <div class="col-sm-6">
                                	<b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?>
                                    <br />
                                    <b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="block block-product-return-info">
            	<div class="block-title">
                	<strong><span><?php echo $text_product; ?></span></strong>
                </div>
                <div class="block-content">
                	<table id="checkout-review-table" class="data-table">
                    	<colgroup>
                            <col />
                            <col width="1" />
                            <col width="1" />
                            <col />
                            <col width="1" />
                            <col width="1" />
                            <col />
                        </colgroup>
                        <thead>
                            <tr class="for-mobile first">
                            	<th class="last" colspan="7"><span><?php echo $text_product; ?></span></th>
                            </tr>
                            <tr class="for-desktop last">
                            	<th rowspan="1"><span><?php echo $column_product; ?></span></th>
                                <th class="a-center" colspan="1"><span><?php echo $column_model; ?></span></th>
                                <th class="a-center" rowspan="1"><span><?php echo $column_quantity; ?></span></th>
                                <th class="a-center" colspan="1"><span><?php echo $column_reason; ?></span></th>
                                <th class="a-center" rowspan="1"><span><?php echo $column_opened; ?></span></th>
                                <th class="a-center" colspan="1"><span><?php echo $column_action; ?></span></th>
                                <?php if ($comment) { ?>
                                <th class="last" rowspan="1"><span><?php echo $text_comment; ?></span></th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>
							<tr class="for-desktop odd">
                            	<td class="a-center"><?php echo $product; ?></td>
                                <td class="a-center"><?php echo $model; ?></td>
                                <td class="a-center"><?php echo $quantity; ?></td>
                                <td class="a-center"><?php echo $reason; ?></td>
                                <td class="a-center"><?php echo $opened; ?></td>
                                <td class="a-center"><?php echo $action; ?></td>
                                <?php if ($comment) { ?>
                                <td class="a-center"><?php echo $comment; ?></td>
                                <?php } ?>
                            </tr>
                            <tr class="for-mobile even">
                            	<td class="a-center last" colspan="7">
                                	<div class="a-center">
                                        <span class="label"><?php echo $column_product; ?> : </span>
                                        <?php echo $product; ?>
                                    </div>
                                    <div class="a-center">
                                    	<span class="label"><?php echo $column_model; ?> : </span>
                                        <?php echo $model; ?>
                                    </div>
                                    <div class="a-center">
                                    	<span class="label"><?php echo $column_quantity; ?> : </span>
                                        <?php echo $quantity; ?>
                                    </div>
                                    <div class="a-center">
                                    	<span class="label"><?php echo $column_reason; ?> : </span>
                                        <?php echo $reason; ?>
                                    </div>
                                    <div class="a-center">
                                    	<span class="label"><?php echo $column_opened; ?> : </span>
                                        <?php echo $opened; ?>
                                    </div>
                                    <div class="a-center">
                                    	<span class="label"><?php echo $column_action; ?> : </span>
                                        <?php echo $action; ?>
                                    </div>
                                    <?php if ($comment) { ?>
                                    <div class="a-center">
                                    	<span class="label"><?php echo $text_comment; ?> : </span>
                                        <?php echo $comment; ?>
                                    </div>
                                    <?php } ?>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        	
  

 
  <?php if ($histories) { ?>
  <h2><?php echo $text_history; ?></h2>
  <table class="list">
    <thead>
      <tr>
        <td class="left" style="width: 33.3%;"><?php echo $column_date_added; ?></td>
        <td class="left" style="width: 33.3%;"><?php echo $column_status; ?></td>
        <td class="left" style="width: 33.3%;"><?php echo $column_comment; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($histories as $history) { ?>
      <tr>
        <td class="left"><?php echo $history['date_added']; ?></td>
        <td class="left"><?php echo $history['status']; ?></td>
        <td class="left"><?php echo $history['comment']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
  </table>
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