<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?><img src="catalog/view/theme/vigo/image/close.png" alt="" class="close" /></div>
<?php } ?>
<?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="main-container col1-layout"><?php echo $content_top; ?>
 
  <div class="breadcrumbs">
	<div class="container">
    	<div class="page-title"><?php echo $heading_title; ?></div>	
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
	<div class="col-main">
    	<?php if ($products) { ?>
    	<table id="product_comparison" class="compare-info data-table compare-table for-desktop">
        <?php 
        	$com_pro_count = count($products);
            $colgwidth=77/$com_pro_count;
        	  
        ?>
        <colgroup>
        	<col width="23%" />
            <?php for($i=0;$i<$com_pro_count; $i++){ ?>
            <col width="<?php echo $colgwidth;?>"  />
            <?php } ?>
        </colgroup>
        
    
    <tbody>
      <tr class="product-img-row first odd">
        <th><?php echo $text_name; ?></th>
        <?php foreach ($products as $product) { ?>
        <td>
                <a href="<?php echo $products[$product['product_id']]['href']; ?>" class="product-image">
                    <?php if ($products[$product['product_id']]['thumb']) { ?>
                  	<img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
                  	<?php } ?>
                </a>
                  
                <h2 class="product-name">
                <a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a>
                </h2>
        </td>
        <?php } ?>
      </tr>
      
      <tr class="product-price-row even">
        <th><?php echo $text_price; ?></th>
        <?php foreach ($products as $product) { ?>
        <td><?php if ($products[$product['product_id']]['price']) { ?>
          <?php if (!$products[$product['product_id']]['special']) { ?>
          <div class="price-box">
            <span class="regular-price">
	            <span class="price"><?php echo $products[$product['product_id']]['price']; ?></span>
            </span>
          </div>
          
          <?php } else { ?>
          <div class="price-box">
                <p class="old-price">
                <span class="price-label"><?php echo $text_regular_price;?></span>
                <span id="old-price-<?php echo $product['product_id']; ?>-compare-list-top" class="price"> <?php echo $products[$product['product_id']]['price']; ?> </span>
                </p>
                <p class="special-price">
                    <span class="price-label"><?php echo $text_special_price;?></span>
                    <span id="product-price-<?php echo $product['product_id']; ?>-compare-list-top" class="price"> <?php echo $products[$product['product_id']]['special']; ?> </span>
                </p>
           </div>

          <?php } ?>
          <?php } ?></td>
        <?php } ?>
      </tr>
      <tr class="product-model-row odd">
        <th><?php echo $text_model; ?></th>
        <?php foreach ($products as $product) { ?>
        <td>
        	<p class="availability in-stock">
            	<span><?php echo $products[$product['product_id']]['model']; ?></span>
            </p>
        </td>
        <?php } ?>
      </tr>
      <tr class="product-brand-row even">
        <th><?php echo $text_manufacturer; ?></th>
        <?php foreach ($products as $product) { ?>
        <td>
        	<p class="availability in-stock">
            	<span><?php echo $products[$product['product_id']]['manufacturer']; ?></span>
            </p>
        </td>
        <?php } ?>
      </tr>
      <tr class="product-availability-row odd">
        <th><?php echo $text_availability; ?></th>
        <?php foreach ($products as $product) { ?>
        <td>
        	<p class="availability in-stock">
            	<span><?php echo $products[$product['product_id']]['availability']; ?></span>
            </p>
        </td>
        <?php } ?>
      </tr>
	  <?php if ($review_status) { ?>
      <tr class="product-review-row even">
        <th><?php echo $text_rating; ?></th>
        <?php foreach ($products as $product) { ?>
        <td>
        	<div class="ratings">
                <div class="rating-box">
                		<?php $star_rate = $products[$product['product_id']]['rating']; ?>
                        <?php $star_ret_per = $star_rate * 20 ; ?>
                	<div class="rating" style="width:<?php echo $star_ret_per ?>%;"> </div>
                </div>
                <span class="amount">
                	 <?php echo $products[$product['product_id']]['reviews']; ?>
                </span>
            </div>
         </td>
        <?php } ?>
      </tr>
      <?php } ?>
	  <tr class="odd"> 
        <th><span class="nobr"><?php echo $text_summary; ?></span></th>
        <?php foreach ($products as $product) { ?>
        <td><div class="std"><?php echo $products[$product['product_id']]['description']; ?></div></td>
        <?php } ?>
      </tr>
      <tr class="even">
        <th><span class="nobr"><?php echo $text_weight; ?></span></th>
        <?php foreach ($products as $product) { ?>
        <td><div class="std"><?php echo $products[$product['product_id']]['weight']; ?></div></td>
        <?php } ?>
      </tr>
      <tr class="odd">
        <th><span class="nobr"><?php echo $text_dimension; ?></span></th>
        <?php foreach ($products as $product) { ?>
        <td><div class="std"><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></div></td>
        <?php } ?>
      </tr>
    </tbody>
    <?php foreach ($attribute_groups as $attribute_group) { ?>
    
    <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
    <tbody>
      <tr class="even">
        <th><span class="nobr"><?php echo $attribute['name']; ?></span></th>
        <?php foreach ($products as $product) { ?>
        <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
        <td><div class="std"><?php echo $products[$product['product_id']]['attribute'][$key]; ?></div></td>
        <?php } else { ?>
        <td></td>
        <?php } ?>
        <?php } ?>
      </tr>
    </tbody>
    <?php } ?>
    <?php } ?>
    <tr class="add-to-row last even">
      <td></td>
      <?php foreach ($products as $product) { ?>
      <td>
      	<p>
           <button type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button btn-cart" ><span><span><?php echo $button_cart; ?></span></span></button>
        </p>
        <a href="<?php echo $product['remove']; ?>" class="btn-remove2"><?php echo $button_remove; ?></a>
        </td>
      <?php } ?>
    </tr>
    
  </table>
  		
        <script type="text/javascript">
        decorateTable('product_comparison');
    </script>
    
    	<table id="product_comparison_mobile" class="data-table compare-table for-mobile">
        
        <colgroup>
        	<col width="50%" />
            <col width="50%" />
        </colgroup>
        
    
    <tbody>
    	<tr class="first odd">
        	<th colspan="2"><?php echo $text_name; ?></th>
        </tr>
       
        <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
                 <?php if($i %2 == 0){?>
                 <tr class="product-img-row first odd">
                 <?php }  ?>
                          <td>
                              <a href="<?php echo $products[$product['product_id']]['href']; ?>" class="product-image">
                                  <?php if ($products[$product['product_id']]['thumb']) { ?>
                                  <img src="<?php echo $products[$product['product_id']]['thumb']; ?>" alt="<?php echo $products[$product['product_id']]['name']; ?>" />
                                  <?php } ?>
                              </a>
                                
                              <h2 class="product-name">
                              <a href="<?php echo $products[$product['product_id']]['href']; ?>"><?php echo $products[$product['product_id']]['name']; ?></a>
                              </h2>
                          </td>
                
                <?php if($i %2 == 1){?>
                    </tr>
                <?php  } ?>
        
         <?php $i++;  } ?>
        
       
        
      	<tr class="first odd">
        	<th colspan="2"><?php echo $text_price; ?></th>
        </tr>
        <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             <tr class="product-price-row even">
            <?php }  ?>
        		<td><?php if ($products[$product['product_id']]['price']) { ?>
          <?php if (!$products[$product['product_id']]['special']) { ?>
          <div class="price-box">
            <span class="regular-price">
	            <span class="price"><?php echo $products[$product['product_id']]['price']; ?></span>
            </span>
          </div>
          
          <?php } else { ?>
          <div class="price-box">
                <p class="old-price">
                <span class="price-label"><?php echo $text_regular_price;?></span>
                <span id="old-price-13-compare-list-top" class="price"> <?php echo $products[$product['product_id']]['price']; ?> </span>
                </p>
                <p class="special-price">
                    <span class="price-label"><?php echo $text_special_price;?></span>
                    <span id="product-price-13-compare-list-top" class="price"> <?php echo $products[$product['product_id']]['special']; ?> </span>
                </p>
           </div>

          <?php } ?>
          <?php } ?></td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
         
         <tr class="first odd">
        	<th colspan="2"><?php echo $text_model; ?></th>
         </tr>
         <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             <tr class="product-model-row odd">
            <?php }  ?>
            	<td>
        	<p class="availability in-stock">
            	<span><?php echo $products[$product['product_id']]['model']; ?></span>
            </p>
        </td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
        
        
        <tr class="first odd">
        	<th colspan="2"><?php echo $text_manufacturer; ?></th>
         </tr>
         <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             <tr class="product-brand-row even">
            <?php }  ?>
            	<td>
        	<p class="availability in-stock">
            	<span><?php echo $products[$product['product_id']]['manufacturer']; ?></span>
            </p>
        </td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
        
        <tr class="first odd">
        	<th colspan="2"><?php echo $text_availability; ?></th>
         </tr>
         <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             <tr class="product-availability-row odd">
            <?php }  ?>
            	<td>
        	<p class="availability in-stock">
            	<span><?php echo $products[$product['product_id']]['availability']; ?></span>
            </p>
        </td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
        
        <?php if ($review_status) { ?>
        <tr class="first odd">
        	<th colspan="2"><?php echo $text_rating; ?></th>
         </tr>
         <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             	<tr class="product-review-row even">
            <?php }  ?>
            	<td>
        	<div class="ratings">
                <div class="rating-box">
                		<?php $star_rate = $products[$product['product_id']]['rating']; ?>
                        <?php $star_ret_per = $star_rate * 20 ; ?>
                	<div class="rating" style="width:<?php echo $star_ret_per ?>%;"> </div>
                </div>
                <span class="amount">
                	 <?php echo $products[$product['product_id']]['reviews']; ?>
                </span>
            </div>
         </td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
        <?php } ?>
        
        <tr class="first odd">
        	<th colspan="2"><span class="nobr"><?php echo $text_summary; ?></span></th>
         </tr>
         <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             	<tr class="odd">
            <?php }  ?>
            	<td><div class="std"><?php echo $products[$product['product_id']]['description']; ?></div></td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
            
         <tr class="first odd">
        	<th colspan="2"><span class="nobr"><?php echo $text_weight; ?></span></th>
         </tr>
         <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             	<tr class="even">
            <?php }  ?>
            	<td><div class="std"><?php echo $products[$product['product_id']]['weight']; ?></div></td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
            
	  	<tr class="first odd">
        	<th colspan="2"><span class="nobr"><?php echo $text_dimension; ?></span></th>
        </tr>
        <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             	<tr class="odd">
            <?php }  ?>
            	<td><div class="std"><?php echo $products[$product['product_id']]['length']; ?> x <?php echo $products[$product['product_id']]['width']; ?> x <?php echo $products[$product['product_id']]['height']; ?></div></td>
        	<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
      
      
    </tbody>
    <?php foreach ($attribute_groups as $attribute_group) { ?>
    
    <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
    <tbody>
    	<tr class="first odd">
        	<th colspan="2"><span class="nobr"><?php echo $attribute['name']; ?></span></th>
        </tr>
      
        <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             	<tr class="even">
            <?php }  ?>
        
        <?php if (isset($products[$product['product_id']]['attribute'][$key])) { ?>
        <td><div class="std"><?php echo $products[$product['product_id']]['attribute'][$key]; ?></div></td>
        <?php } else { ?>
        <td></td>
        <?php } ?>
        <?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
      
    </tbody>
    <?php } ?>
    <?php } ?>
    
    <tr class="first odd">
    	<th colspan="2"></th>
    </tr>
    <?php 
        $i=0;
        foreach ($products as $product) { 
        ?>
        	<?php if($i %2 == 0){?>
             	 <tr class="add-to-row last even">
            <?php }  ?>
    			<td>
      	<p>
           <button type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" class="button btn-cart" ><span><span><?php echo $button_cart; ?></span></span></button>
        </p>
        <a href="<?php echo $product['remove']; ?>" class="btn-remove2"><?php echo $button_remove; ?></a>
        </td>
      		<?php if($i %2 == 1){?>
            	</tr>
            <?php  } ?>
        <?php $i++;  } ?>
      
    
  </table>
        
        <div class="buttons-set">
          <a href="<?php echo $continue; ?>">
        	<button value="<?php echo $button_continue; ?>" type="submit" title="Save" class="button"><span><span class="compare_continue"><?php echo $button_continue; ?></span></span></button>
          </a>
        </div>
  		
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons-set">
          <a href="<?php echo $continue; ?>">
        	<button value="<?php echo $button_continue; ?>" type="submit" title="Save" class="button"><span><span class="compare_continue"><?php echo $button_continue; ?></span></span></button>
          </a>
        </div>
  <?php } ?>
  	<script type="text/javascript">
        decorateTable('product_comparison');
    </script>
    </div>
  </div>
<?php echo $content_bottom; ?></div>
<?php echo $footer; ?>