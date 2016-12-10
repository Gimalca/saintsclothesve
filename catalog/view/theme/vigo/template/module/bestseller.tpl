<div Class="block-bestseller-home">
    <div class="block-title">
    	<strong><span><?php echo $heading_title; ?></span></strong>
    </div>
    <div class="block-content">
		<div class="category-products">
        <?php if($listing_effect==1) { ?>
          	<ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
               	<?php foreach($products as $product) { ?>
                	<li class="item">
            			<div class="product-image-area" hover_img="<?php echo  $product['add']; ?>" base_img="<?php echo $product['thumb']; ?>" product_url="<?php echo $product['href']; ?>">
                            <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            </a>
                            <?php if($product['special']){ ?>
                                <div class="sale-product-icon" style="top: 10px">Sale</div>
                           <?php }?>
                            <div class="hover-area">
                               
                                <div class="ratings">
                                    <div class="rating-box">
                                        <?php $product_rate =  $product['rating'] * 20; ?>
                                        <div class="rating" style="width:<?php echo $product_rate?>%;"></div>
                                    </div>
                                
                                    <span class="amount"><?php echo $product['reviews']; ?></span>
                                </div>
                                
                    
                   				<div class="short_desc"><?php echo $product['desc']; ?></div>
                
                                    <ul class="cart-button-set">
                                        <li class="first">
                                          <a class="addtocart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
                                           
                                        </li>
                                        <li><a class="addtowishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                                        </li>
                                        <li class="last"><a class="addtocompare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $text_compare; ?></a>
                                        </li>
                                    
                                    </ul>
                    
                    
                             	<div class="clearer"></div>
                         		</div>
                </div>
                
            
                		<h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
            
    
            
                 		<div class="price-box">
                    <?php if($product['special']){ ?>
                        <p class="old-price">
                           	<span class="price"> <?php echo $product['price'];?> </span>
                        </p>
                        <p class="special-price">
                            <span class="price"> <?php echo $product['special'];?> </span>
                        </p>
                   <?php } else { ?>
                        <span class="regular-price">
                            <span class="price"><?php echo $product['price'];?></span>
                        </span>     
                   <?php } ?>    
               </div>
               
    
            </li>
                  		
          		<?php } ?>     
          </ul>
         <?php } else if($listing_effect==2) { ?>
       		<ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
               	<?php foreach($products as $product) { ?>
                	<li class="item">
            			<div class="product-image-area" hover_img="<?php echo $product['thumb']; ?>" base_img="<?php echo $product['thumb']; ?>" product_url="<?php echo $product['href']; ?>">
                            <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            </a>
                            <?php if($product['special']){ ?>
                                <div class="sale-product-icon" style="top: 10px">Sale</div>
                           <?php }?>
                            
                </div>
                
            
                		<h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
            
    
            
                 		<div class="price-box">
                    <?php if($product['special']){ ?>
                        <p class="old-price">
                           	<span class="price"> <?php echo $product['price'];?> </span>
                        </p>
                        <p class="special-price">
                            <span class="price"> <?php echo $product['special'];?> </span>
                        </p>
                   <?php } else { ?>
                        <span class="regular-price">
                            <span class="price"><?php echo $product['price'];?></span>
                        </span>     
                   <?php } ?>    
               </div>
               <ul class="cart-button-set">
                                        <li class="first">
                                          <a class="addtocart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
                                           
                                        </li>
                                        <li><a class="addtowishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                                        </li>
                                        <li class="last"><a class="addtocompare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $text_compare; ?></a>
                                        </li>
                                    
                                    </ul>
               
    
            </li>
                  		
          		<?php } ?>     
          </ul>
         <?php } else if($listing_effect==3) { ?>
       		<ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
               	<?php foreach($products as $product) { ?>
                	<li class="item">
            			<div class="product-image-area" hover_img="<?php echo  $product['add']; ?>" base_img="<?php echo $product['thumb']; ?>" product_url="<?php echo $product['href']; ?>">
                            <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            </a>
                            <?php if($product['special']){ ?>
                                <div class="sale-product-icon" style="top: 10px">Sale</div>
                           <?php }?>
                            <div class="hover-area">
                               
                                
                                
                    
                   				<div class="short_desc"><?php echo $product['desc']; ?></div>
                
                                    
                    
                    
                             	<div class="clearer"></div>
                                
                         		</div>
                </div>
                
            			<div class="price-box">
                    <?php if($product['special']){ ?>
                        <p class="old-price">
                           	<span class="price"> <?php echo $product['price'];?> </span>
                        </p>
                        <p class="special-price">
                            <span class="price"> <?php echo $product['special'];?> </span>
                        </p>
                   <?php } else { ?>
                        <span class="regular-price">
                            <span class="price"><?php echo $product['price'];?></span>
                        </span>     
                   <?php } ?>    
               </div>
               			<div class="ratings">
	                        <div class="rating-box">
                                <?php $product_rate =  $product['rating'] * 20; ?>
                                <div class="rating" style="width:<?php echo $product_rate?>%;"></div>
                            </div>
                        
                            
                        </div>
                		<h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
            			<ul class="cart-button-set">
                                        <li class="first">
                                          <a class="addtocart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
                                           
                                        </li>
                                        <li><a class="addtowishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                                        </li>
                                        <li class="last"><a class="addtocompare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $text_compare; ?></a>
                                        </li>
                                    
                                    </ul>
    
            
                 		
               
    
            </li>
                  		
          		<?php } ?>     
          </ul>
          <?php } else if($listing_effect==4) { ?>
         	<ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
               	<?php foreach($products as $product) { ?>
                	<li class="item">
            			<div class="product-image-area" hover_img="<?php echo  $product['add']; ?>" base_img="<?php echo $product['thumb']; ?>" product_url="<?php echo $product['href']; ?>">
                            <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            </a>
                            <?php if($product['special']){ ?>
                                <div class="sale-product-icon" style="top: 10px">Sale</div>
                           <?php }?>
                            <div class="hover-area">
                               
                                
                                
                    
                   				<div class="short_desc"><?php echo $product['desc']; ?></div>
                                <ul class="cart-button-set">
                                        <li class="first">
                                          <a class="addtocart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
                                           
                                        </li>
                                        <li><a class="addtowishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                                        </li>
                                        <li class="last"><a class="addtocompare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $text_compare; ?></a>
                                        </li>
                                    
                                    </ul>
                
                                    
                    
                    
                             	<div class="clearer"></div>
                                
                         		</div>
                </div>
                
            			<div class="price-box">
                    <?php if($product['special']){ ?>
                        <p class="old-price">
                           	<span class="price"> <?php echo $product['price'];?> </span>
                        </p>
                        <p class="special-price">
                            <span class="price"> <?php echo $product['special'];?> </span>
                        </p>
                   <?php } else { ?>
                        <span class="regular-price">
                            <span class="price"><?php echo $product['price'];?></span>
                        </span>     
                   <?php } ?>    
               </div>
               <h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
               			<div class="ratings">
	                        <div class="rating-box">
                                <?php $product_rate =  $product['rating'] * 20; ?>
                                <div class="rating" style="width:<?php echo $product_rate?>%;"></div>
                            </div>
                        
                            
                        </div>
                		
            			
    
            
                 		
               
    
            </li>
                  		
          		<?php } ?>     
          </ul>
          <?php } else if($listing_effect==5) { ?>
          	<ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
               	<?php foreach($products as $product) { ?>
                	<li class="item">
            			<h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
                        <div class="product-image-area" hover_img="<?php echo  $product['add']; ?>" base_img="<?php echo $product['thumb']; ?>" product_url="<?php echo $product['href']; ?>">
                            
                            <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            </a>
                            <?php if($product['special']){ ?>
                                <div class="sale-product-icon" style="top: 10px">Sale</div>
                           <?php }?>
                            <div class="hover-area">
                               
                                <div class="ratings">
                                    <div class="rating-box">
                                        <?php $product_rate =  $product['rating'] * 20; ?>
                                        <div class="rating" style="width:<?php echo $product_rate?>%;"></div>
                                    </div>
                                
                                    <span class="amount"><?php echo $product['reviews']; ?></span>
                                </div>
                                <div class="clearer"></div>
                         		</div>
                </div>
                
            
                <div class="short_desc"><?php echo $product['desc']; ?></div>
                <div class="price-box">
                    <?php if($product['special']){ ?>
                        <p class="old-price">
                            <span class="price"> <?php echo $product['price'];?> </span>
                        </p>
                        <p class="special-price">
                            <span class="price"> <?php echo $product['special'];?> </span>
                        </p>
                   <?php } else { ?>
                        <span class="regular-price">
                            <span class="price"><?php echo $product['price'];?></span>
                        </span>     
                   <?php } ?>    
               </div>
                <ul class="cart-button-set">
                    <li class="first">
                      <a class="addtocart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
                       
                    </li>
                    <li><a class="addtowishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                    </li>
                    <li class="last"><a class="addtocompare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $text_compare; ?></a>
                    </li>
                
                </ul>
                    
            
    
            
                 		
               
    
            </li>
                  		
          		<?php } ?>     
          </ul>
          <?php } else if($listing_effect==6) { ?>
          	<ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
               	<?php foreach($products as $product) { ?>
                	<li class="item">
            			<div class="product-image-area" hover_img="<?php echo  $product['add']; ?>" base_img="<?php echo $product['thumb']; ?>" product_url="<?php echo $product['href']; ?>">
                            <a href="<?php echo $product['href']; ?>" title="Black and white dust dress" class="product-image">
                                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                            </a>
                            <?php if($product['special']){ ?>
                                <div class="sale-product-icon" style="top: 10px">Sale</div>
                           <?php }?>
                            <div class="hover-area">
                               <h2 class="product-name"><a href="<?php echo $product['href'];?>" title="<?php echo $product['name'];?>"><?php echo $product['name'];?></a></h2>
                               <div class="price-box">
                                    <?php if($product['special']){ ?>
                                        <p class="old-price">
                                            <span class="price"> <?php echo $product['price'];?> </span>
                                        </p>
                                        <p class="special-price">
                                            <span class="price"> <?php echo $product['special'];?> </span>
                                        </p>
                                   <?php } else { ?>
                                        <span class="regular-price">
                                            <span class="price"><?php echo $product['price'];?></span>
                                        </span>     
                                   <?php } ?>    
                               </div>
                                <div class="ratings">
                                    <div class="rating-box">
                                        <?php $product_rate =  $product['rating'] * 20; ?>
                                        <div class="rating" style="width:<?php echo $product_rate?>%;"></div>
                                    </div>
                                
                                    <span class="amount"><?php echo $product['reviews']; ?></span>
                                </div>
                                
                    
                   				<div class="short_desc"><?php echo $product['desc']; ?></div>
                
                                    <ul class="cart-button-set">
                                        <li class="first">
                                          <a class="addtocart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
                                           
                                        </li>
                                        <li><a class="addtowishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
                                        </li>
                                        <li class="last"><a class="addtocompare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $text_compare; ?></a>
                                        </li>
                                    
                                    </ul>
                    
                    
                             	<div class="clearer"></div>
                         		</div>
                </div>
                
            
                		
            
    
            
                 		
               
    
            </li>
                  		
          		<?php } ?>     
          </ul>
         <?php } ?>
      </div>
    </div>
  </div>
<script type="text/javascript">
        // <![CDATA[
            jQuery(document).ready(function(){
                var window_size = jQuery(window).width();
                var bxslider;
                if(window_size<992 && window_size >= 768){
                    bxslider=jQuery('.block-bestseller-home .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 2,  maxSlides: 2,  slideWidth: 225,  slideMargin: 20});
                } else if(window_size<768){
                    bxslider=jQuery('.block-bestseller-home .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                }else {
                    bxslider=jQuery('.block-bestseller-home .products-grid').bxSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 240,  slideMargin: 15});
                }
                
                jQuery(window).resize(function(e){
                    e.preventDefault();
                    var window_size = jQuery(window).width();
                    var time_out;
                    if(time_out) clearTimeout(time_out);
                    time_out = setTimeout(function(){
                        if(window_size<992 && window_size >= 768){
                            bxslider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 2,  maxSlides: 2,  slideWidth: 225,  slideMargin: 20});
                        } else if(window_size<768){
                            bxslider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 1,  maxSlides: 1});
                        }else {
                            bxslider.reloadSlider({auto:false, autoStart:false, autoHover:false, mode:'horizontal', speed:1000, pager:false, minSlides: 3,  maxSlides: 3,  slideWidth: 240,  slideMargin: 15});
                        }
                    }, 500);
                });
            });
        // ]]>
        </script> 
        <?php  if($listing_effect==2) { ?>
        <script>
$(document).ready(function(){
  $(".item").hover(function(){
	  jQuery(this).addClass("active");
	$(".products-grid.producteffect2 .active .cart-button-set").addClass("effectul");
    
    },function(){
	 
    $(".products-grid.producteffect2 .active .cart-button-set").removeClass("effectul");
	jQuery(this).removeClass("active");
  });
  
  
});
</script>
  <?php } ?>