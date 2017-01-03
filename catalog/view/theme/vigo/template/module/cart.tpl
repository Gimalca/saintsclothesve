<a href="javascript:void(0)" class="mybag-link"><?php echo $text_items; ?></a>
<div-- id="topCartContent" class="block-content">
    <div class="inner-wrapper">
        <div id="cart">
            <div class="heading">
                <a class=" resumen"><span id="cart-total" class="block-subtitle"><?php echo $text_items; ?></span></a>
                <button class="button" type="button" onclick="setLocation('<?php echo $checkout; ?>')">COMPRAR</button>
                <?php if ($products || $vouchers) { ?>
                <!--<p class="block-subtitle"><?php echo $heading_title; ?></p>-->
                <?php foreach ($products as $product) { ?>
                <ol class="mini-products-list" id="mini-cart">
                    
                        <?php if ($product['thumb']) { ?>
                        <a class="product-image" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                        <?php } ?>
                         
                       
                        <div class="product-details">
                            <p class="product-name">
                                <a class="cortar" href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                            </p>
                            <div class="cart-option hidden-sm hidden-md hidden-lg">
                                <?php foreach ($product['option'] as $option) { ?>
                                <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small><br />
                                <?php } ?>
                                <?php if ($product['recurring']): ?>
                                <small><?php echo $text_payment_profile ?>: <?php echo $product['profile']; ?></small><br />
                                <?php endif; ?>

                            </div>
                            <p class="qty-price">
                                <?php echo $product['quantity']; ?> x 
                                <span class="price"><?php echo $product['total']; ?></span>                                                                  
                            </p>
                            <a class="btn-remove btn-remove2 top-btn-remove" title="Remove This Item" onclick="(getURLVar('route') == '' || getURLVar('route') == '') ? location = 'index.php?route=checkout/cart&remove=<?php echo $product['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?>' + ' #cart > *');"> </a>

                        </div>
                        <div class="clearer"></div>
                    
                </ol>
                <?php } ?>

                <?php foreach ($vouchers as $voucher) { ?>

                <ol class="mini-products-list" id="mini-cart">
                    <li class="item last odd">
                        <a class="product-image"> </a>
                        <div class="product-details voucher-details">

                            <p class="product-name"><a><?php echo $voucher['description']; ?></a></p>
                            <p class="qty-price">


                                1 x&nbsp;
                                <span class="price"><?php echo $voucher['amount']; ?></span>
                            </p>

                            <a id="remove-item" class="btn-remove btn-remove2 top-btn-remove" title="Remove This Item" onclick="(getURLVar('route') == 'checkout/cart' || getURLVar('route') == 'checkout/checkout') ? location = 'index.php?route=checkout/cart&remove=<?php echo $voucher['key']; ?>' : $('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?>' + ' #cart > *'); alert('ver');" /></a>
                        </div>
                    </li>
                </ol>
                <?php } ?>

                <script type="text/javascript">


                    decorateList('mini-cart', 'none-recursive');
                </script>
                <?php if($totals){ ?>
                <div class="actions col-xs-6 col-sm-6 hidden-xs">
                    <button class="button " type="button" onclick="setLocation('<?php echo $cart; ?>')"><span><span><?php echo $text_cart; ?></span></span></button>
                    <button class="button " type="button" onclick="setLocation('<?php echo $checkout; ?>')"><span><span><?php echo $text_checkout; ?></span></span></button>
                </div>
                <?php  } ?>

                <div class="minicart_total col-xs-12 col-sm-6">
                    <?php foreach ($totals as $total) { ?>
                    <div class="totals">
                        <span class="label minicart_name"><?php echo $total['title']; ?> </span>
                        <span class="price-total">
                            <span class="price"><?php echo $total['text']; ?></span>
                        </span>
                    </div>
                    <?php } ?>

                </div>
                <button class="button" type="button" onclick="setLocation('<?php echo $checkout; ?>')">COMPRAR</button>
                <?php } else { ?>
                <div class="cart-empty"><?php echo $text_empty; ?></div>
                <?php } ?>                               


            </div>

        </div>

    </div>
    <!--div class="metod-pay hidden-md hidden-sm hidden-lg">
        <img src="image/payment-cart.jpg">
    </div-->
</div>
