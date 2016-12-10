<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="main-container col2-right-layout"><?php echo $content_top; ?>
  
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
  
  <div class="main container">
  	<?php echo $content_top; ?>
   
    <div class="col-main col-md-9 col-sm-8 col-xs-12">
    	
		<div class="category-products">
            <div class="toolbar">
            	
                  	<div class="">
                    	<div class="sorter">
                        	<a href="<?php echo $compare; ?>" id="compare-total">
                            <button class="button btn-compare"><span><span><?php echo $text_compare; ?></span></span> </button>
                            </a>
                            
                            <div class="sort-by">
                            <label><?php echo $text_sort; ?></label>
                            <span class="selectbox default">
                              <select onchange="location = this.value;">
                                <?php foreach ($sorts as $sorts) { ?>
                                <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                              </select>
                              </span>
    						</div>
                            
                            <div class="view-mode"><label><?php echo $text_display; ?></label> <strong class="list" title="List"><?php echo $text_list; ?></strong><a class="grid" title="Grid" onclick="display('grid');" ><?php echo $text_grid; ?></a></div>
                            
                            <div class="limiter">
                            	<label><?php echo $text_limit; ?></label>
	                            <select onchange="location = this.value;">
                                <?php foreach ($limits as $limits) { ?>
                                <?php if ($limits['value'] == $limit) { ?>
                                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                              </select>
                            </div>
                           
                        </div>
						<!--<div class="pager">
                        	<div class="view-mode"><label><?php echo $text_display; ?></label> <strong class="list" title="List"><?php echo $text_list; ?></strong><a class="grid" title="Grid" onclick="display('grid');" ><?php echo $text_grid; ?></a></div>
                            
                            <div class="limiter">
                            	<label><?php echo $text_limit; ?></label>
	                            <select onchange="location = this.value;">
                                <?php foreach ($limits as $limits) { ?>
                                <?php if ($limits['value'] == $limit) { ?>
                                <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
                                <?php } else { ?>
                                <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
                                <?php } ?>
                                <?php } ?>
                              </select>
                            </div>
                        </div>-->
                    </div>
					
               
            </div>
             <?php if ($products) { ?>
            <?php if($listing_effect==6){ ?>
             <ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
            <?php foreach ($products as $product) { ?>
                <li class="item">
                
                <div class="main_image" >
      
      <div class="product-image-area" product_url="<?php echo $product['href']; ?>"  base_img="<?php echo $product['thumb']; ?>"  hover_img="<?php echo $product['add']; ?>">
      
      <?php if ($product['thumb']) { ?>
      <a href="<?php echo $product['href']; ?>" class="product-image"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
      <?php } ?>
      <?php if($product['special']){ ?>
      		<div class="sale-product-icon" style="top: 10px">Sale</div>
      <?php } ?>
      
      <div class="hover-area" style="display: none;">
      	 <h2 class="product-name"><a href="<?php echo $product['href']; ?>">
               
                 
                  <?php echo $product['name']; ?>
                
                
				
                </a></h2>
      <?php if ($product['price']) { ?>
      <div class="price-box">
        <?php if (!$product['special']) { ?>
        <span id="product-price-<?php echo $product['product_id']; ?>" class="regular-price">
        	<span class="price"><?php echo $product['price']; ?></span>
        </span>
        
        <?php } else { ?>
        <p class="old-price">
        	<span class="price-label"><?php echo $text_regular_price;?></span>
            <span id="old-price-<?php echo $product['product_id']; ?>" class="price"><?php echo $product['price']; ?></span>
        </p>
        <p class="special-price">
        	<span class="price-label"><?php echo $text_special_price;?></span>
            <span id="product-price-<?php echo $product['product_id']; ?>" class="price"><?php echo $product['special']; ?></span>
        </p>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      	<?php 
        	$star_rate_1 = $product['rating'];
            $star_rate = $star_rate_1 *20 ;
        ?>
    	
        <div class="ratings">
		<div class="rating-box">
      		<div class="rating" style="width:<?php echo $star_rate ?>%;"></div>
        </div>
    </div>
      
      <div class="short_desc"><?php echo $product['description']; ?></div>
      
     
      <ul class="add-to-links cart-button-set">
      <li class="first">
      
     <a class="addtocart button btn-cart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
     
     </li>
     <li class="middle">
     <a class="addtowishlist link-wishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
     </li>
     <li class="last">
     <a class="addtocompare link-compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a>
     </li>
     </ul>
     
     
      </div>
      
      </div>
      </div>
      			
               
      <div class="short_desc"><?php echo $product['description']; ?></div>
      
      
      
      
     
      	<?php 
        	$star_rate_1 = $product['rating'];
            $star_rate = $star_rate_1 *20 ;
        ?>
    	<div class="ratings">
            <div class="rating-box">
                <div class="rating" style="width:<?php echo $star_rate ?>%;"></div>
            </div>
    	</div>
      
      
      <ul class="add-to-links cart-button-set">
      <li class="first">
      		<a class="addtocart button btn-cart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
     </li>
     <li class="middle">
     		<a class="addtowishlist link-wishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
     </li>
     <li class="last">
     		<a class="addtocompare link-compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a>
     </li>
     </ul>
     
     
     
     
     
     
                
                </li>
            <?php } ?>
            </ul>
             <?php } else { ?>  
            <ul class="products-grid producteffect<?php echo "$listing_effect"; ?>">
            <?php foreach ($products as $product) { ?>
                <li class="item">
                
                <div class="main_image">
      <?php if($listing_effect==2){ ?>   <div class="product-image-area" product_url="<?php echo $product['href']; ?>"  base_img="<?php echo $product['thumb']; ?>"  hover_img="<?php echo $product['thumb']; ?>"><?php } else { ?>
      <div class="product-image-area" product_url="<?php echo $product['href']; ?>"  base_img="<?php echo $product['thumb']; ?>"  hover_img="<?php echo $product['add']; ?>">
      <?php } ?>
      <?php if ($product['thumb']) { ?>
      <a href="<?php echo $product['href']; ?>" class="product-image"><img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" /></a>
      <?php } ?>
      <?php if($product['special']){ ?>
      		<div class="sale-product-icon" style="top: 10px">Sale</div>
      <?php } ?>
       <?php if($listing_effect==2){ } else { ?>
      <div class="hover-area" style="display: none;">
      
      	<?php 
        	$star_rate_1 = $product['rating'];
            $star_rate = $star_rate_1 *20 ;
        ?>
    	 <?php if($listing_effect==2 || $listing_effect==3 || $listing_effect==4){ }else { ?>
        <div class="ratings">
		<div class="rating-box">
      		<div class="rating" style=" width: <?php echo $star_rate ?>%; "></div>
        </div>
    </div><?php } ?>
      <?php if($listing_effect==5){ } else { ?>
      <div class="short_desc"><?php echo $product['description']; ?></div>
      
      <?php if($listing_effect==2 || $listing_effect==3){} else { ?>
      <ul class="add-to-links cart-button-set">
      <li class="first">
      
     <a class="addtocart button btn-cart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
     
     </li>
     <li class="middle">
     <a class="addtowishlist link-wishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
     </li>
     <li class="last">
     <a class="addtocompare link-compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a>
     </li>
     </ul>
     <?php } ?>
     <?php } ?> 
      </div>
      <?php } ?>
      </div>
      </div>
      			
                <h2 class="product-name"><a href="<?php echo $product['href']; ?>">
               
                 <?php 
                
                  if($listing_effect==2) {
                  
                  	if(strlen($product['name']) > 35){
                 		echo ltrim(substr($product['name'], 0, 35).'...');
                 	}
                    else {
                    	 echo ltrim(substr($product['name'], 0, 35));
                    }
                   
                 } else {
                  echo $product['name'];
                 }
                  ?>
                </a></h2>
       
      <div class="short_desc"><?php if($listing_effect==5) {
                  
                  	if(strlen($product['description']) > 150){
                 		echo ltrim(substr($product['description'], 0, 150).'...');
                 	}
                    else {
                    	 echo ltrim(substr($product['description'], 0, 150));
                    }
                   
                 } else {
                  echo $product['description'];
                 }
                  ?></div>
      
      <?php if ($product['price']) { ?>
      <div class="price-box">
        <?php if (!$product['special']) { ?>
        <span id="product-price-<?php echo $product['product_id']; ?>" class="regular-price">
        	<span class="price"><?php echo $product['price']; ?></span>
        </span>
        
        <?php } else { ?>
        <p class="old-price">
        	<span class="price-label"><?php echo $text_regular_price;?></span>
            <span id="old-price-<?php echo $product['product_id']; ?>" class="price"><?php echo $product['price']; ?></span>
        </p>
        <p class="special-price">
        	<span class="price-label"><?php echo $text_special_price;?></span>
            <span id="product-price-<?php echo $product['product_id']; ?>" class="price"><?php echo $product['special']; ?></span>
        </p>
        <?php } ?>
        <?php if ($product['tax']) { ?>
        <br />
        <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
        <?php } ?>
      </div>
      <?php } ?>
      
      
     
      	<?php 
        	$star_rate_1 = $product['rating'];
            $star_rate = $star_rate_1 *20 ;
        ?>
    	<div class="ratings">
            <div class="rating-box">
                <div class="rating" style="width:<?php echo $star_rate ?>%;"></div>
            </div>
    	</div>
      
      
      <ul class="add-to-links cart-button-set">
      <li class="first">
      		<a class="addtocart button btn-cart" onclick="addToCart('<?php echo $product['product_id']; ?>');"><?php echo $button_cart; ?></a>
     </li>
     <li class="middle">
     		<a class="addtowishlist link-wishlist" onclick="addToWishList('<?php echo $product['product_id']; ?>');"><?php echo $button_wishlist; ?></a>
     </li>
     <li class="last">
     		<a class="addtocompare link-compare" onclick="addToCompare('<?php echo $product['product_id']; ?>');"><?php echo $button_compare; ?></a>
     </li>
     </ul>
     
     
     
     
     
     
                
                </li>
            <?php } ?>
            </ul>
            <?php } ?>
            
            <div class="pagination"><?php echo $pagination; ?></div>
  <?php }  else {  ?>
 
  <div class="content"><?php echo $text_empty; ?></div>
 
  <?php } ?>
        </div>
    </div>
	<div class="col-right sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_right; ?>
    </div>
  </div>
  
  <?php echo $content_bottom; ?></div>
 

<?php if($listing_effect==1) { ?> 
<script type="text/javascript"><!--
function display(view) {
	
	if (view == 'list') {
		
		$('.products-grid').attr('class', 'products-list');
		
		$('.products-list > li').each(function(index, element) {
			
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) { 
				html = '<div class="main_image">' + image + '</div>';
			}
			
			html += '<div class="product-shop">';
			html += '<div class="product-details">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			html += '</div>';
			html += '<div class="links-set">';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			html += '<ul class="add-to-links">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
			
			html += '</div>';
			html += '</div>';
					
			$(element).html(html);
			
		});		
		
		$('.view-mode').html('<label><?php echo $text_display; ?></label><strong class="list" title="List"> <?php echo $text_list; ?></strong>  <a class="grid" title="Grid" onclick="display(\'grid\'); "><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
		js_fun();
	} else {
		
		$('.products-list').attr('class', 'products-grid');
		
		$('.products-grid > li').each(function(index, element) {
			
			html = '';
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) {
				html += '<div class="main_image">' + image ;
			}
			html += '<div class="hover-area" style="display: none;">';
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			//html +='<ul class="cart-button-set">'+ $(element).find('.cart-button-set').html() + '</ul>';
			html += '<ul class="cart-button-set">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
	
			
			html += '</div>';
			html += '</div>';
			
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}	
			
			$(element).html(html);
			
			
		});	
					
		$('.view-mode').html('<label><?php echo $text_display; ?></label> <a class="list" title="list" onclick="display(\'list\'); "><?php echo $text_list; ?></a> <strong class="grid" title="grid"><?php echo $text_grid; ?></strong>');
		
		$.totalStorage('display', 'grid');
		js_fun();
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
<?php } else if($listing_effect==2) { ?>
<script type="text/javascript"><!--
function display(view) {
	
	if (view == 'list') {
		
		$('.products-grid').attr('class', 'products-list producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-list > li').each(function(index, element) {
			
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) { 
				html = '<div class="main_image">' + image + '</div>';
			}
			
			html += '<div class="product-shop">';
			html += '<div class="product-details">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			html += '</div>';
			html += '<div class="links-set">';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			html += '<ul class="add-to-links">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
			
			html += '</div>';
			html += '</div>';
					
			$(element).html(html);
			
		});		
		
		$('.view-mode').html('<label><?php echo $text_display; ?></label><strong class="list" title="List"> <?php echo $text_list; ?></strong>  <a class="grid" title="Grid" onclick="display(\'grid\'); "><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
		js_fun();
	} else {
		
		$('.products-list').attr('class', 'products-grid producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-grid > li').each(function(index, element) {
			
			html = '';
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) {
				html += '<div class="main_image">' + image ;
			}
			html += '<div class="hover-area" style="display: none;">';
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			//html +='<ul class="cart-button-set">'+ $(element).find('.cart-button-set').html() + '</ul>';
			
	
			
			html += '</div>';
			html += '</div>';
			
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			html += '<ul class="cart-button-set">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';	
			
			$(element).html(html);
			
			
		});	
					
		$('.view-mode').html('<label><?php echo $text_display; ?></label> <a class="list" title="list" onclick="display(\'list\'); "><?php echo $text_list; ?></a> <strong class="grid" title="grid"><?php echo $text_grid; ?></strong>');
		
		$.totalStorage('display', 'grid');
		js_fun();
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>


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

<?php } else if($listing_effect==3) { ?>
<script type="text/javascript"><!--
function display(view) {
	
	if (view == 'list') {
		
		$('.products-grid').attr('class', 'products-list producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-list > li').each(function(index, element) {
			
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) { 
				html = '<div class="main_image">' + image + '</div>';
			}
			
			html += '<div class="product-shop">';
			html += '<div class="product-details">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			html += '</div>';
			html += '<div class="links-set">';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			html += '<ul class="add-to-links">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
			
			html += '</div>';
			html += '</div>';
					
			$(element).html(html);
			
		});		
		
		$('.view-mode').html('<label><?php echo $text_display; ?></label><strong class="list" title="List"> <?php echo $text_list; ?></strong>  <a class="grid" title="Grid" onclick="display(\'grid\'); "><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
		js_fun();
	} else {
		
		$('.products-list').attr('class', 'products-grid producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-grid > li').each(function(index, element) {
			
			html = '';
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) {
				html += '<div class="main_image">' + image ;
			}
			html += '<div class="hover-area" style="display: none;">';
			
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			//html +='<ul class="cart-button-set">'+ $(element).find('.cart-button-set').html() + '</ul>';
			
	
			
			html += '</div>';
			html += '</div>';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			
			html += '<ul class="cart-button-set">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';	
			
			$(element).html(html);
			
			
		});	
					
		$('.view-mode').html('<label><?php echo $text_display; ?></label> <a class="list" title="list" onclick="display(\'list\'); "><?php echo $text_list; ?></a> <strong class="grid" title="grid"><?php echo $text_grid; ?></strong>');
		
		$.totalStorage('display', 'grid');
		js_fun();
	}
}

view = $.totalStorage('display');


if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
<?php } else if($listing_effect==4) { ?>
<script type="text/javascript"><!--
function display(view) {
	
	if (view == 'list') {
		
		$('.products-grid').attr('class', 'products-list producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-list > li').each(function(index, element) {
			
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) { 
				html = '<div class="main_image">' + image + '</div>';
			}
			
			html += '<div class="product-shop">';
			html += '<div class="product-details">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			html += '</div>';
			html += '<div class="links-set">';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			html += '<ul class="add-to-links">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
			
			html += '</div>';
			html += '</div>';
					
			$(element).html(html);
			
		});		
		
		$('.view-mode').html('<label><?php echo $text_display; ?></label><strong class="list" title="List"> <?php echo $text_list; ?></strong>  <a class="grid" title="Grid" onclick="display(\'grid\'); "><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
		js_fun();
	} else {
		
		$('.products-list').attr('class', 'products-grid producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-grid > li').each(function(index, element) {
			
			html = '';
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) {
				html += '<div class="main_image">' + image ;
			}
			html += '<div class="hover-area" style="display: none;">';
			
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			//html +='<ul class="cart-button-set">'+ $(element).find('.cart-button-set').html() + '</ul>';
			html += '<ul class="cart-button-set">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';	
			
	
			
			html += '</div>';
			html += '</div>';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			
			
			
			$(element).html(html);
			
			
		});	
					
		$('.view-mode').html('<label><?php echo $text_display; ?></label> <a class="list" title="list" onclick="display(\'list\'); "><?php echo $text_list; ?></a> <strong class="grid" title="grid"><?php echo $text_grid; ?></strong>');
		
		$.totalStorage('display', 'grid');
		js_fun();
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}

//--></script>
<?php } else if($listing_effect==5) { ?>
<script type="text/javascript"><!--
function display(view) {
	
	if (view == 'list') {
		
		$('.products-grid').attr('class', 'products-list producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-list > li').each(function(index, element) {
			
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) { 
				html = '<div class="main_image">' + image + '</div>';
			}
			
			html += '<div class="product-shop">';
			html += '<div class="product-details">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			html += '</div>';
			html += '<div class="links-set">';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			html += '<ul class="add-to-links">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
			
			html += '</div>';
			html += '</div>';
					
			$(element).html(html);
			
		});		
		
		$('.view-mode').html('<label><?php echo $text_display; ?></label><strong class="list" title="List"> <?php echo $text_list; ?></strong>  <a class="grid" title="Grid" onclick="display(\'grid\'); "><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
		js_fun();
	} else {
		
		$('.products-list').attr('class', 'products-grid producteffect<?php echo "$listing_effect"; ?>');
		
		$('.products-grid > li').each(function(index, element) {
			
			html = '';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			var image = $(element).find('.main_image').html();
			
			if (image != null) {
				html += '<div class="main_image">' + image ;
			}
			html += '<div class="hover-area" style="display: none;">';
			
			
			//html +='<ul class="cart-button-set">'+ $(element).find('.cart-button-set').html() + '</ul>';
			
			
	
			
			html += '</div>';
			html += '</div>';
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			html += '<ul class="cart-button-set">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';	
			$(element).html(html);
			
			
		});	
					
		$('.view-mode').html('<label><?php echo $text_display; ?></label> <a class="list" title="list" onclick="display(\'list\'); "><?php echo $text_list; ?></a> <strong class="grid" title="grid"><?php echo $text_grid; ?></strong>');
		
		$.totalStorage('display', 'grid');
		js_fun();
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
<?php } else if($listing_effect==6) { ?> 
<script type="text/javascript"><!--
function display(view) {
	
	if (view == 'list') {
		
		$('.products-grid').attr('class', 'products-list');
		
		$('.products-list > li').each(function(index, element) {
			
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) { 
				html = '<div class="main_image">' + image + '</div>';
			}
			
			html += '<div class="product-shop">';
			html += '<div class="product-details">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			
			
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			html += '</div>';
			html += '<div class="links-set">';
			var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}
			
			html += '<ul class="add-to-links">';
			html += '<li class="first">';
			 var addtocart = $(element).find('.first').html() ;
			 html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			 var addtowishlist = $(element).find('.middle').html() ;
			 html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			html += addtocompare;
			html += '</li>';
			html += '</ul>';
			
			html += '</div>';
			html += '</div>';
					
			$(element).html(html);
			
		});		
		
		$('.view-mode').html('<label><?php echo $text_display; ?></label><strong class="list" title="List"> <?php echo $text_list; ?></strong>  <a class="grid" title="Grid" onclick="display(\'grid\'); "><?php echo $text_grid; ?></a>');
		
		$.totalStorage('display', 'list'); 
		js_fun();
	} else {
		
		$('.products-list').attr('class', 'products-grid');
		
		$('.products-grid > li').each(function(index, element) {
			
			html = '';
			
			var image = $(element).find('.main_image').html();
			
			if (image != null) {
				html += '<div class="main_image">' + image ;
			}
			html += '<div class="hover-area" style="display: none;">';
			html += '<h2 class="product-name">' + $(element).find('.product-name').html() + '</h2>';
			var rating = $(element).find('.ratings').html();
			
			if (rating != null) {
				
				html += '<div class="ratings">' + rating + '</div>';
				
			}
			html += '<div class="short_desc">' + $(element).find('.short_desc').html() + '</div>';
			//html +='<ul class="cart-button-set">'+ $(element).find('.cart-button-set').html() + '</ul>';
			html += '<ul class="cart-button-set">';
			html += '<li class="first">';
			var addtocart = $(element).find('.first').html() ;
			html += addtocart;
			html += '</li>';
			html += '<li class="middle">';
			var addtowishlist = $(element).find('.middle').html() ;
			html += addtowishlist;
			html += '</li>';
			html += '<li class="last">';
			 var addtocompare = $(element).find('.last').html() ;
			 html += addtocompare;
			html += '</li>';
			html += '</ul>';
	var price = $(element).find('.price-box').html();
			
			if (price != null) {
				html += '<div class="price-box">' + price  + '</div>';
			}	
			
			html += '</div>';
			html += '</div>';
			
			
			
			
			
			
			$(element).html(html);
			
			
		});	
					
		$('.view-mode').html('<label><?php echo $text_display; ?></label> <a class="list" title="list" onclick="display(\'list\'); "><?php echo $text_list; ?></a> <strong class="grid" title="grid"><?php echo $text_grid; ?></strong>');
		
		$.totalStorage('display', 'grid');
		js_fun();
	}
}

view = $.totalStorage('display');

if (view) {
	display(view);
} else {
	display('list');
}
//--></script>
<?php } ?>

<script type="text/javascript">
  function js_fun(){
	
  
        jQuery('.category-products .product-image-area').each(function(){
            var inarea = false;
            jQuery(this).click(function(e){
                if(jQuery(e.target).is('.cart-button-set a')){
                    return;
                }
                setLocation(jQuery(this).attr('product_url'));
            });
            jQuery(this).mouseenter(function(){
                if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == false){
                    var hover_img = jQuery(this).attr('hover_img');
                    var base_img = jQuery(this).attr('base_img');
                    var img = jQuery(this).children('a.product-image').children('img');
                    //jQuery(img).attr('src', hover_img);
                    /********************************/
                    var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",base_img);
                    jQuery(img).css("z-index",1);
                    jQuery(img).attr('src', hover_img);
                    jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});
                }
                inarea = true;
            }).mouseleave(function(){
                if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == true){
                    var hover_img = jQuery(this).attr('hover_img');
                    var base_img = jQuery(this).attr('base_img');
                    var img = jQuery(this).children('a.product-image').children('img');
                    //jQuery(img).attr('src', base_img);
                    /********************************/
                    var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",hover_img);
                    jQuery(img).css("z-index",1);
                    jQuery(img).attr('src', base_img);
                    jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});
                }
                inarea = false;
            });
			
        });
 
 
}
  </script>
  <script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('.col-main .category-products select').selectbox({styleClass:'default'});
        jQuery('.products-grid li:nth-child(3n)').addClass('nth-child-3n');
        jQuery('.products-grid li:nth-child(3n+1)').addClass('nth-child-3np1');
        jQuery('.products-grid li:nth-child(2n)').addClass('nth-child-2n');
        jQuery('.products-grid li:nth-child(2n+1)').addClass('nth-child-2np1');
        jQuery('.products-grid li:nth-child(4n)').addClass('nth-child-4n');
        jQuery('.products-grid li:nth-child(4n+1)').addClass('nth-child-4np1');
        jQuery('.category-products .product-image-area').mouseenter(function(){
            jQuery(this).children('.hover-area').fadeIn();
        }).mouseleave(function(){
            jQuery(this).children('.hover-area').fadeOut();
        });
        jQuery('.category-products .product-image-area').each(function(){
            var inarea = false;
            jQuery(this).click(function(e){
                if(jQuery(e.target).is('.cart-button-set a')){
                    return;
                }
                setLocation(jQuery(this).attr('product_url'));
            });
            jQuery(this).mouseenter(function(){
                if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == false){
                    var hover_img = jQuery(this).attr('hover_img');
                    var base_img = jQuery(this).attr('base_img');
                    var img = jQuery(this).children('a.product-image').children('img');
                    //jQuery(img).attr('src', hover_img);
                    /********************************/
                    var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",base_img);
                    jQuery(img).css("z-index",1);
                    jQuery(img).attr('src', hover_img);
                    jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});
                }
                inarea = true;
            }).mouseleave(function(){
                if(!jQuery(this).parent().parent().parent().parent().parent().hasClass('block') && inarea == true){
                    var hover_img = jQuery(this).attr('hover_img');
                    var base_img = jQuery(this).attr('base_img');
                    var img = jQuery(this).children('a.product-image').children('img');
                    //jQuery(img).attr('src', base_img);
                    /********************************/
                    var ele = jQuery(img).clone().appendTo(jQuery(img).parent()).css({position:"absolute","top":"0px","left":"0px","z-index":"2"}).attr("src",hover_img);
                    jQuery(img).css("z-index",1);
                    jQuery(img).attr('src', base_img);
                    jQuery(ele).fadeOut(400,function(){jQuery(ele).remove();});
                }
                inarea = false;
            });
        });
    });
    </script>
<?php echo $footer; ?>