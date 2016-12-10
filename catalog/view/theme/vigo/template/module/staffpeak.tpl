<div class="split">
<div>&nbsp;</div>
</div>
<div class="row">
<div class="col-sm-6">
	<div class="block block-from-blog">
    	<div class="block-title">
        	<strong><span><?php echo $text_from_the_staff; ?></span></strong>
		</div>
        <div class="block-content">
        	<ul>
            	<?php foreach ($products as $product) { ?>
            	<li class="bx-clone">
                	<div class="row">
                        <div class="col-md-6 col-sm-12">
                        	<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>"/>
                        </div>
                        <div class="col-md-6 col-sm-12 details">
                        	<h3><?php echo $product['name'];?></h3>
                            <?php echo rtrim(substr(html_entity_decode($product['desc']),0,200)); ?>
                            <br />
                            <a class="more-link" href="<?php echo $product['href']; ?>"><?php echo $text_read_more;?>></a>
                        </div>
                    </div>
                </li>
                <?php } ?>
            </ul>
        </div>
    </div>
</div>



<script type="text/javascript">// &lt;![CDATA[
                    jQuery(function($) {
                        $('.block-from-blog ul').bxSlider({auto: false, autoStart: false, autoHover: false, mode:'horizontal', speed:1000, pager: false});
                    });
// ]]&gt;</script>
