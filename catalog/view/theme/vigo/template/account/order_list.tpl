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
        <?php if ($orders) { ?>
        	<div class="pager">
            	<div class="limiter">
                <?php echo $pagination; ?>
                </div>
            </div>
            
               <table class="table">
    <thead>
      <tr >
     	<th><?php echo $text_order_id; ?> </th>
        <th><?php echo $text_date_added; ?></th>
        <th><?php echo $text_customer; ?></th>
        <th><span class="nobr"><?php echo $text_products; ?></span></th>
        <th><span class="nobr"><?php echo $text_total; ?></span></th>
        <th><span class="nobr"><?php echo $text_status; ?></span></th>
      </tr>
       <tr class="for-mobile">
                    	<th colspan="7"><?php echo $text_order; ?></th>
                    </tr>
    </thead>
    <tbody>
			
                
  					<?php foreach ($orders as $order) { ?>
                  <tr>
                    	<td># <?php echo $order['order_id']; ?></td>
                        <td><span class="nobr"><?php echo $order['date_added']; ?></span></td>
                        <td><?php echo $order['name']; ?></td>
                        <td><?php echo $order['products']; ?></td>
                        <td><span class="price"><?php echo $order['total']; ?></span></td>
                        <td><em><?php echo $order['status']; ?></em></td>
                        <td><span class="nobr">
                        	<a href="<?php echo $order['href']; ?>"><?php echo $text_view_order; ?></a>
                            <span class="separator">|</span>
                            <a class="link-reorder" href="<?php echo $order['reorder']; ?>"><?php echo $text_reorder; ?></a>
                            
                        	</span></td>
                    </tr>
                  <tr class="for-mobile">
                  	<td class="last" colspan="7">
                    <p>
                    	<span><?php echo $text_order_id; ?></span>
                        # <?php echo $order['order_id']; ?>
					</p>
                    <p>
                    	<span><?php echo $text_date_added; ?></span>
						<span class="nobr"><?php echo $order['date_added']; ?></span>
                    </p>
                    <p>
                    	<span><?php echo $text_customer; ?></span>
						<?php echo $order['name']; ?>
                    </p>
                    <p>
                    	<span class="nobr"><?php echo $text_products; ?></span>
                        <?php echo $order['products']; ?>
                    </p>
                    <p>
                    	<span class="nobr"><?php echo $text_total; ?></span>
                        <span class="price"><?php echo $order['total']; ?></span>
                    </p>
                    <p>
                    	<span class="nobr"><?php echo $text_status; ?></span>
                        <em><?php echo $order['status']; ?></em>
                    </p>
                    <p>
                    	<span class="nobr">
                        	<a href="<?php echo $order['href']; ?>"><?php echo $text_view_order; ?></a>
                            <span class="separator">|</span>
                            <a class="link-reorder" href="<?php echo $order['reorder']; ?>"><?php echo $text_reorder; ?></a>
                        </span>
                    </p>
                    </td>
                  </tr>
                   <?php } ?>
  				  
                </tbody>
            </table>
        	
            <div class="pager">
            	<div class="limiter">
                <?php echo $pagination; ?>
                </div>
            </div>
            <?php } else { ?>
            <div class="content"><?php echo $text_empty; ?></div>
            <?php } ?>
    
    
    	   <div class="buttons-set">
               <a href="<?php echo $continue; ?>">
               <button class="button" title="Save" type="button" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
               </a>
           </div>
  
       </div>
    </div>
   
 </div>
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>