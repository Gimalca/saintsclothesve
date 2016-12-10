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
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        	<div class="block box-transaction box-info">
                <div class="block-title">
	                <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content" id="opc-review">
                	<p><?php echo $text_balance; ?><b> <?php echo $balance; ?></b>.</p>
                    <table class="data-table">
                    	<colgroup>
                        	<col />
                            <col />
                            <col />
                        </colgroup>
                        <thead>
                  			<tr class="for-desktop">
                            	<th class="a-center"><?php echo $column_date_added; ?></th>
                                <th class="a-center"><?php echo $column_description; ?></th>                                <th class="a-center last"><?php echo $column_amount; ?></th>
                            </tr>
                            <tr class="for-mobile first">
                                <th class="last" colspan="3"><span><?php echo $heading_title; ?></span></th>
                            </tr>
                        </thead>
                        <tbody>
                          <?php if ($transactions) { ?>
                          <?php foreach ($transactions  as $transaction) { ?>
                          <tr class="for-desktop odd">
                            <td class="a-center"><?php echo $transaction['date_added']; ?></td>
                            <td class="a-center"><h3 class="product-name">
                            	<?php echo $transaction['description']; ?></h3></td>
                            <td class="a-center last"><?php echo $transaction['amount']; ?></td>
                          </tr>
                          
                          <tr class="for-mobile even">
                            <td class="a-center last" colspan="3">
                            	<div class="a-center">
                                	<span class="label"><?php echo $column_date_added; ?> : </span>
                                    <?php echo $transaction['date_added']; ?>
                                </div>
                                <div class="a-center">
                                	<!--<span class="label"><?php echo $column_description; ?>:</span>-->
                                    <h3 class="product-name"><?php echo $transaction['description']; ?></h3>
                                </div>
                                <div class="a-center">
                                	<span class="label"><?php echo $column_amount; ?> :</span>
                                    <?php echo $transaction['amount']; ?>
                                </div>
                            </td>
                         </tr>
                          <?php } ?>
                          <?php } else { ?>
                          <tr>
                            <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                          </tr>
                          <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        	
            
            
            <div class="buttons-set">
            	<div class="pagination"><?php echo $pagination; ?></div>
            	<a href="<?php echo $continue; ?>">
                <button class="button" title="<?php echo $button_continue; ?>" type="button">
                	<span><span><?php echo $button_continue; ?></span></span>
				</button></a>
            </div>
            
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
   </div>
 </div>
 
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>