<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>  
<div id="content" class="main-container col1-layout">

<div class="main container">
	<div class="col-main">
    <?php if ($testimonials) { ?>
       	<div class="block block-testimonoal">
        	<div class="block-title">
               	<strong><span><?php echo $heading_title ?></span></strong>
            </div>
            <div class="block-content">
            	<div class="pager">
                </div>
                
    				<?php foreach ($testimonials as $testimonial) { ?>
                <div class="review-list">
                	<div class="review-item">
                        <div class="review-content">
                        	<p><?php echo $testimonial['title']; ?></p>
                            <div><?php echo $testimonial['description']; ?></div>
                        </div>
                        <div class="review-customer">
                        <span><?php echo $testimonial['name'];?></span>
                        <span><?php echo $testimonial['city'];?></span>
                        <?php if ($testimonial['rating']) { ?>
                        <table class="ratings-table">
                            <colgroup>
                                <col />
                                <col />
                            </colgroup>
                            <tbody>
                                <tr>
                                	<th><?php echo $text_average; ?></th>
                                    <td>
                                    <div class="rating-box">
                                    <?php  $testimonial_rate = $testimonial['rating'] * 20; ?>
                                    <div class="rating" style="width:<?php echo $testimonial_rate?>%;"></div>
                                    </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <?php } ?>
                        <small class="date"><?php echo $testimonial['date_added'];?></small>
                        </div>
                    </div>
                </div>
                <?php } ?>
                <div class="pager">
                </div>
            </div>
        </div>
        <?php if ( isset($pagination)) { ?>
        	<div class="buttons-set">
    			<div class="pagination"><?php echo $pagination;?></div>
             
                <a class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>">
                    <button class="button" title="<?php echo $write;?>" type="button">
                    <span><span><?php echo $write;?></span></span>
                    </button>
                </a>
            </div>
    	<?php }?>

    	<?php if (isset($showall_url)) { ?>
    		<div class="buttons-set">
            	<a class="button" href="<?php echo $write_url;?>" title="<?php echo $write;?>">
                	<button class="button" title="<?php echo $write;?>" type="button">
                    	<span><span><?php echo $write;?></span></span>
                    </button>
                </a>
                <a class="button" href="<?php echo $showall_url;?>" title="<?php echo $showall;?>">
                	<button class="button" title="<?php echo $showall;?>" type="button">
                    	<span><span><?php echo $showall;?></span></span>
                    </button>
                </a>
            </div>
    	<?php }?>
    <?php } ?>
        
    </div>
</div>
  
</div>
<?php echo $footer; ?> 