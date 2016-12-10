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
        	<dl class="order-info">
				<dt><?php echo $heading_title; ?></dt>
             </dl>
            
            <div class="col2-set order-info-box">
                <div class="col-1">
                	<div class="box">
                        <div class="box-title">
                        	<h2><?php echo $text_order_detail; ?></h2>
                        </div>
                        <div class="box-content">
                          <address>
                          <?php if ($invoice_no) { ?>
                          <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />
                          <?php } ?>
                          <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
                          <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?>
                          </address>
                        </div>
                    </div>
                </div>
                
                <div class="col-2">
                	<div class="box">
                        <div class="box-title">
                        	<h2><?php echo $text_shipping_address; ?></h2>
                        </div>
                        <div class="box-content">
                        	<address>
                        	<?php if ($shipping_address) { ?>
                    		<?php echo $shipping_address; ?>
                    		<?php } ?>
                            </address>
                        </div>
                    </div>
                </div>
                
                <div class="col-3">
                	<div class="box">
                    	<?php if ($shipping_method) { ?>
                        <div class="box-title">
                        	<h2><?php echo $text_shipping_method; ?></h2>
                        </div>
                        <div class="box-content">
                        	 <?php echo $shipping_method; ?>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
			
            <div class="col2-set order-info-box">
                <div class="col-1">
                	<div class="box">
                    	
                        <div class="box-title">
                        	<h2><?php echo $text_payment_address; ?></h2>
                        </div>
                        <div class="box-content">
                          <address>
                          	<?php echo $payment_address; ?>
                          </address>
                        </div>
                        
                    </div>
                </div>
                <div class="col-2">
                	<div class="box">
                    	<?php if ($payment_method) { ?>
                        <div class="box-title">
                        	<h2><?php echo $text_payment_method; ?></h2>
                        </div>
                        <div class="box-content">
                        	<?php echo $payment_method; ?>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            
            <div class="order-items order-details">
            	<h2 class="table-caption"><?php echo $text_item_ordered; ?> </h2>
                <table id="my-orders-table" class="data-table" summary="Items Ordered">
                	<colgroup>
                    	<col />
                        <col width="1" />
                        <col width="1" />
                        <col width="1" />
                        <col width="1" />
                        <col width="1" />
                    </colgroup>
                    
                    <thead>
                      <tr class="first last">
                        <th><?php echo $column_name; ?></th>
                        <th class="a-center"><?php echo $column_model; ?></th>
                        <th class="a-center"><?php echo $column_quantity; ?></th>
                        <th class="a-right"><?php echo $column_price; ?></th>
                        <th class="a-right"><?php echo $column_total; ?></th>
                        <?php if ($products) { ?>
                        <th style="width: 1px;"><?php echo $button_return; ?></th>
                        <?php } ?>
                      </tr>
                	</thead>
                    
                    <tbody class="odd">
                  <?php foreach ($products as $product) { ?>
                  <tr class="border first last">
                    <td>
                    	<h3 class="product-name"><?php echo $product['name']; ?></h3>
                      <?php foreach ($product['option'] as $option) { ?>
                      	<dl class="item-options">
                        <dt><?php echo $option['name']; ?></dt>:
                        <dl><?php echo $option['value']; ?></dl>
                        </dl>
                      <?php } ?></td>
                    <td><?php echo $product['model']; ?></td>
                    <td class="a-right">
                    	<span class="nobr">
                    		<strong><?php echo $product['quantity']; ?></strong>
                        </span>
                    </td>
                    <td class="a-right">
                    	<span class="price-excl-tax">
							<span class="cart-price">
								<span class="price"><?php echo $product['price']; ?>
                                </span>
                            </span>
                        </span>
                    </td>
                    <td class="a-right">
                    	<span class="price-excl-tax">
                            <span class="cart-price">
	                            <span class="price"><?php echo $product['total']; ?>
                                </span>
                            </span>
                        </span>
                    </td>
                    <td class="a-right last">
                    	<a href="<?php echo $product['return']; ?>">
                    		<span class="nobr">
                    			<strong><?php echo $button_return; ?></strong>
                            </span>
                        </a>
                   </td>
                  </tr>
                  <?php } ?>
                  <?php foreach ($vouchers as $voucher) { ?>
                  <tr>
                    <td><?php echo $voucher['description']; ?></td>
                    <td></td>
                    <td class="a-right">1</td>
                    <td class="a-right"><?php echo $voucher['amount']; ?></td>
                    <td class="a-right"><?php echo $voucher['amount']; ?></td>
                    <?php if ($products) { ?>
                    <td class="a-right last"></td>
                    <?php } ?>
                  </tr>
                  <?php } ?>
                </tbody>
                
                 	<tfoot>
                  <?php foreach ($totals as $total) { ?>
                  <tr>
                    <td colspan="4"class="a-right"><b><?php echo $total['title']; ?>:</b></td>
                    <td class="last a-right"><span class="price"><?php echo $total['text']; ?></span></td>
                    <?php if ($products) { ?>
                    
                    <?php } ?>
                  </tr>
                  <?php } ?>
                </tfoot>
                </table>	
            </div>
            <?php if ($comment) { ?>
            <div class="order-items order-details">
            	<h2 class="table-caption"><?php echo $text_comment; ?></h2>
                <div class="left order_comment_content"><?php echo $comment; ?></div>
            </div>
            <?php } ?>
            <?php if ($histories) { ?>
            <div class="order-items order-details">
            	<h2 class="table-caption"><?php echo $text_history; ?></h2>
                <table id="my-orders-table" class="data-table" summary="Items Ordered">
                	<colgroup>
                    	<col />
                        <col />
                        <col />
                    </colgroup>
                    <thead>
                  <tr class="first last">
                    <th><?php echo $column_date_added; ?></th>
                    <th><?php echo $column_status; ?></th>
                    <th><?php echo $column_comment; ?></th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($histories as $history) { ?>
                  <tr class="border">
                    <td class="a-center"><?php echo $history['date_added']; ?></td>
                    <td class="a-center"><?php echo $history['status']; ?></td>
                    <td class=""><?php echo $history['comment']; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                </table>
            </div>
            <?php } ?>
            
    	</div>
        <div class="buttons-set">
  	<a href="<?php echo $continue; ?>" >
		<button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
   </a>
  </div>
    </div>
   
 </div>
            
       
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 