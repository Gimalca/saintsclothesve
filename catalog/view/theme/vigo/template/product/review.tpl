<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="review-item">
	<div class="review-content">
    	<?php echo $review['text']; ?>
    </div>
     <div class="review-customer">
        <div class="avatar-image">
            <img src="catalog/view/theme/vigo/images/avatar.jpg"/>
        </div>
        <span><?php echo $review['author']; ?></span>
        
            <div class="rating"><img src="catalog/view/theme/vigo/image/stars-<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['reviews']; ?>" /></div>
        
        <small class="date"><?php echo $review['date_added']; ?></small>
    </div>
</div>  
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>




<script type="text/javascript">
$(document).ready(function(){
		$('#review-slider').tinycarousel();	
	});
</script>