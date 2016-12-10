<?php echo $header; ?><?php echo $column_left; ?> 	
<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
 
    <div class="breadcrumbs">
        <div class="container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
    </div>
    
    <div class="myblog main container">
        <div class="col-right col-md-9 col-sm-8 col-xs-12">
            <div class="my-account">
                <div class="block block-category">
                    <div class="block-title">
                        <strong><span><?php echo $heading_title; ?></span></strong>
                        <!--<a class="rss-wrapper" href="<?php echo $latest_rss;?>"><span class="icon-rss">Rss</span></a>-->
                    </div>
                    <div class="block-content">
                        <?php if( !empty($children) ) { ?>
                        <?php 
                    $cols = (int)$config->get('children_columns');
                    foreach( $children as $key => $sub )  { $key = $key + 1;?>
                        <div class="col-sm-4 full-width-img">
                        <?php if( $sub['thumb'] ) { ?>
                        <a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>">
                            <img src="<?php echo $sub['thumb'];?>"/>
                        </a>
                        <?php } ?>
                        <h2 class="product-name">
                        <a href="<?php echo $sub['link']; ?>" title="<?php echo $sub['title']; ?>">
                            <?php echo $sub['title']; ?> (<?php echo $sub['count_blogs']; ?>)
                        </a>
                        </h2>
                        <div class="short_desc"><?php echo $sub['description']; ?></div>
                        </div>
                        <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                        <?php } ?>
                        <?php } ?>
                        <?php } ?>
                        
                    </div>
                    <div class="block-content">
                        <?php
                        $cols = $config->get('cat_columns_leading_blog');
                        if( count($leading_blogs) ) { ?>
                    
                        <?php foreach( $leading_blogs as $key => $blog ) { $key = $key + 1;?>
                            <div class="postWrapper">
                                <?php require( '_item.tpl' ); ?>
                            </div>
                            <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                            <?php } ?>
                        <?php } ?>
                        <?php } ?>
    
                    <?php
                    $cols = $config->get('cat_columns_secondary_blogs');
                    if ( count($secondary_blogs) ) { ?>
                    
                        <?php foreach( $secondary_blogs as $key => $blog ) {  $key = $key+1; ?>
                            <div class="postWrapper">
                                <?php require( '_item.tpl' ); ?>
                            </div>
                            <?php if( ( $key%$cols==0 || $cols == count($leading_blogs)) ){ ?>
                            <?php } ?>
                        <?php } ?>
                    <?php } ?>
                <?php if( $total ) { ?>	
                <div class="pav-pagination pagination"><?php echo $pagination;?></div>
                <?php } ?>
            </div>
                </div>
            </div>
        </div>
        <div class="col-main sidebar col-md-3 col-sm-4 col-xs-12">
            <?php echo $column_right; ?>
        </div>
    </div>
	  

 <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>