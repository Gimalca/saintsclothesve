<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>

<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
      <div class="col-left sidebar col-md-2 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
    </div>
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account">
        	<div class="my-wishlist">
                <h1><?php echo $heading_title; ?></h1>
                <?php if ($products) { ?>
                <div class="wishlist-info">
                <fieldset>
                    <table class="table">
                        <thead>
                            <tr >
                                <th></th><!--<?php echo $column_image; ?>-->
                                <th><?php echo $column_name; ?></th><!--<?php echo $column_name; ?>-->
                                <!--<td class="model"><?php echo $column_model; ?></td>--><!--<?php echo $column_model; ?>-->
                                <!--<td class="stock"><?php echo $column_stock; ?></td>-->
                                <th><?php echo $text_add_to_cart; ?></th><!--<?php echo $column_price; ?>-->
                                <th></th><!--<?php echo $column_action; ?>-->
                            </tr>
                            <tr class="for-mobile">
                                <th colspan="7"><?php echo $text_order; ?></th>
                            </tr>
                        </thead>
                        <tbody>

                  <?php foreach ($products as $product) { ?>
                 
                    <tr >
                      <td><?php if ($product['thumb']) { ?>
                          <a class="product-image" href="<?php echo $product['href']; ?>"><img class="img-responsive" style="max-width: 80px" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?></td>
                      <td><h3 class="product-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3></td>
                      <!--<td><?php echo $product['model']; ?></td>-->
                      <!--<td class="stock"><?php echo $product['stock']; ?></td>-->
                      <td><?php if ($product['price']) { ?>
                      	<div class="cart-cell">
							<div class="price-box">
                          <?php if (!$product['special']) { ?>
                          <?php echo $product['price']; ?>
                          <?php } else { ?>
                          <p class="old-price"><span class="price"><?php echo $product['price']; ?></span></p>
                          <p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>
                          <?php } ?>
                        	</div>
                            <div class="add-to-cart-alt">
                               
                              <input  class="button btn-add" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="Add to Cart" type="button"  value="<?php echo $text_add_to_cart;?>" />
                           </div>
                           <p>
                           <span class="model"><?php echo $column_model; ?>:-</span><span class="model_name"><?php echo $product['model']; ?></span>
                           </p>
                        </div>
                        
                        <?php } ?></td>
                      <td class="last"><a class="btn-remove btn-remove2" href="<?php echo $product['remove']; ?>"></a></td>
                    </tr>
                    
                    <tr class="for-mobile">
                    	<td class="last" colspan="4">
                        	<p>
                            	<?php if ($product['thumb']) { ?>
                        <a class="product-image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?>
                            </p>
                            <p>
                                <span><?php echo $column_name; ?></span>
                            </p>
                            <h3 class="product-name">
                            	<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                            </h3>
                            <p><span><?php echo $text_add_to_cart; ?></span></p>
                            
                            <?php if ($product['price']) { ?>
                      	<div class="cart-cell">
							<div class="price-box">
                          <?php if (!$product['special']) { ?>
                          <?php echo $product['price']; ?>
                          <?php } else { ?>
                          <p class="old-price"><span class="price"><?php echo $product['price']; ?></span></p>
                          <p class="special-price"><span class="price"><?php echo $product['special']; ?></span></p>
                          <?php } ?>
                        	</div>
                            <div class="add-to-cart-alt">
<input class="button btn-cart" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="Add to Cart" type="button"  value="<?php echo $text_add_to_cart;?>" />
                           </div>
                           <p>
                           <span class="model"><?php echo $column_model; ?>:-</span><span class="model_name"><?php echo $product['model']; ?></span>
                           </p>
                        </div>
                        
                        <?php } ?>
                         <p>
                         <a class="btn-remove btn-remove2" href="<?php echo $product['remove']; ?>"></a>
                         </p>
                        </td>
                   </tr>
                  
                  <?php } ?>
                  </tbody>
                  
                </table>
                	<div class="buttons-set buttons-set2">
                    	<a href="<?php echo $continue; ?>" class="button">
                        <button type="button" class="button btn-add"><span><span><?php echo $button_continue; ?></span></span></button>
                        </a>
                    </div>
                </fieldset>
              	</div>
              
              <?php } else { ?>
              <div class="content"><?php echo $text_empty; ?></div>
              <div class="buttons-set buttons-set2">
              	<a href="<?php echo $continue; ?>" class="button">
                	<button type="button" class="button btn-add"><span><span><?php echo $button_continue; ?></span></span></button>
                </a>
              </div>
              <?php } ?>
           </div>
        </div>
    </div>
    
 </div>
  
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>