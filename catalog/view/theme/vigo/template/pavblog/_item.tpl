<div class="block block-blog blogpage">
    <div class="block-content">
        <?php if( $config->get('cat_show_readmore') ) { ?>
        <a href="<?php echo $blog['link'];?>">        
            <div class="thumbnail">
                <div class="caption">
                    <div class="blog-entry-title">
                        <?php echo $blog['title'];?>
                    </div>
                    <div class="blog-entry-date">
                        <?php echo strtoupper(date("M",strtotime($blog['created'])));?>
                        <?php echo date("d",strtotime($blog['created']));?>,                        
                        <?php echo date("Y",strtotime($blog['created']));?>
                    </div>
                </div>
                <?php if( $blog['thumb'] && $config->get('cat_show_image') )  { ?>
                <img class="img-responsive" src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>"/>
                <?php } ?>
            </div>
        </a>        
        <?php } ?>
    </div>
</div>