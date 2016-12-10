<div class="block block-comment block-account">
    <div class="block-title">
    	<strong><span><?php echo $heading_title; ?></span></strong>
    </div>
    <div class="block-content">
       <?php if( !empty($comments) ) { ?>
    	<ul>
        	<?php $total_comment  = count($comments);
            $i = 1;
            $j = 1;
            ?>
            
        	<?php $default=''; foreach( $comments as $comment ) { ?>
        <?php if($j%2!=0) { ?>
        <li>
        	<div class ="latestcomment">
                <div class="review-item">
                    <div class="review-content">
                        <a  class="no-border"href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
                            <?php echo utf8_substr( $comment['comment'], 0,50 ); ?>...
                        </a>
                    </div>
                </div>
                <div class="comment-image">
                    <a href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
                    <?php if($i%2==0){ ?>
                    <img alt="" src="catalog/view/theme/vigo/images/testimonial_user_2.jpg" >
                    <!-- <?php echo "?d=" . urlencode( $default ) . "&s=60" ?>-->
                    <?php } else { ?>
                    <img alt="" src="catalog/view/theme/vigo/images/testimonial_user_3.jpg" >
                    <?php } ?>
                    </a>
                    
                </div>
                <div class="text text_name_date">
                    <a class="name" href="#"><b><?php echo $comment['user'];?></b></a>
                    <span class="time"><?php echo date("d",strtotime($comment['created'])).".".date("m",strtotime($comment['created'])).".".date("Y",strtotime($comment['created']));?></span>                        
                </div>	
			</div>            
            
            
            
            
            <!--<div class="postDetails">
            	<div class="postBy"><?php echo $comment['user'];?></div>
            </div>-->
            
        	
        <?php $j++; }  else { ?>
        <div class ="latestcomment">
        <div class="review-item">
				<div class="review-content">
                    <a  class="no-border"href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
                    	<?php echo utf8_substr( $comment['comment'], 0,50 ); ?>...
                    </a>
                </div>
            </div>
            <div class="comment-image">
            	<a href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
                <?php if($i%2==0){ ?>
            	<img alt="" src="catalog/view/theme/vigo/images/testimonial_user_2.jpg" >
                <!-- <?php echo "?d=" . urlencode( $default ) . "&s=60" ?>-->
                <?php } else { ?>
                <img alt="" src="catalog/view/theme/vigo/images/testimonial_user_3.jpg" >
                <?php } ?>
                </a>
                
            </div>
            <div class="text text_name_date">
             	<a class="name" href="#"><b><?php echo $comment['user'];?></b></a>
                <span class="time"><?php echo date("d",strtotime($comment['created'])).".".date("m",strtotime($comment['created'])).".".date("Y",strtotime($comment['created']));?></span>                        
            </div>	
     	</div>
            
            
            
            
            <!--<div class="postDetails">
            	<div class="postBy"><?php echo $comment['user'];?></div>
            </div>-->
            
        	<div class="pav-comment clearfix">
					
					
					<!--<span class="comment-author"><?php echo $this->language->get('text_postedby');?> <?php echo $comment['user'];?>...</span>-->
				</div></li>
        <?php $j++; } ?>
        <?php $i++; } ?>
        </ul>
        <?php } ?>
    </div>
    <script type="text/javascript">
// &lt;![CDATA[
jQuery(function($) {
$('.block-account ul').bxSlider({auto: false, autoStart: false, autoHover: false, mode:'horizontal', speed:1000, pager: false});
});
// ]]&gt;
</script>
</div>


<!--<div class="box pavblogs-comments-box">
	<div class="box-heading"><?php echo $heading_title; ?></div>
	<div class="box-content" >
		<?php if( !empty($comments) ) { ?>
		<div class="pavblog-comments clearfix">
			 <?php $default=''; foreach( $comments as $comment ) { ?>
				
                <div class="pav-comment clearfix">
					<a href="<?php echo $comment['link'];?>" title="<?php echo $comment['user'];?>">
					<img src="<?php echo "http://www.gravatar.com/avatar/" . md5( strtolower( trim( $comment['email'] ) ) ) . "?d=" . urlencode( $default ) . "&s=60" ?>" align="left"/>
					</a>
					<div class="comment"><?php echo utf8_substr( $comment['comment'], 50 ); ?></div>
					<span class="comment-author"><?php echo $this->language->get('text_postedby');?> <?php echo $comment['user'];?>...</span>
				</div>
	
    		 <?php } ?>
		</div>
		<?php } ?>
	</div>
 </div>-->
