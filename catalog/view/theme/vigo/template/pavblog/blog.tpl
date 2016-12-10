<?php echo $header; ?>
  <?php echo $column_left; ?>
<div id="content" class="col2-left-layout blag"><?php echo $content_top; ?>
  	<div class="breadcrumbs">
        <div class="container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
        </div>
    </div>
    <div class="myblog main container">
    	<div class="col-left col-md-offset-1 col-md-9 col-sm-8 col-xs-12">
			<div class="my-account">
              <div class="account-login">
				<div class="block block-blog blogpage">
                	
                    <div class="blog-title">
        <span><?php echo $blog['title'];?></span>
    </div>
                    
                    <div class="block-content">
                    	<div class="postBanner">
                	<!--<div class="postDate for-desktop">
    	<div class="blog_name">
                	<a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                		<?php echo $blog['title'];?>
 		            </a>
                </div>
        <div class="blog_date">
                	<?php echo date("d",strtotime($blog['created']));?> 
                    <?php echo date("M",strtotime($blog['created']));?> ,
                    <?php echo date("Y",strtotime($blog['created']));?>
                </div>
    </div>-->
                	<p>
                <img src="<?php echo $blog['thumb_large'];?>" title="<?php echo $blog['title'];?>"/> </p>
                </div>
                		
                        <div class="product-options-bottom add-to-box">
                        <ul class="add-to-links">
                <li><div class="blog_date">
                
                <?php echo date("d",strtotime($blog['created']));?> 
                <?php echo strtoupper(date("M",strtotime($blog['created'])));?>
                <?php echo date("Y",strtotime($blog['created']));?>
                
                </div>
                </li>
                <?php if( $config->get('cat_show_comment_counter') ) { ?>
                <li>
                	<div class="blog_date">
                    	<?php echo $blog['comment_count'];?>
                    	<?php echo $this->language->get("text_comment_count");?>
		                
                    </div>
                </li>
                <?php } ?>
               <li>
                <div class="blogimage">
                	 <div  class="line"></div>
                </div>
                </li>
                 <?php if( $config->get('cat_show_author') ) { ?>
                <li><span class="blogauther">
                	<?php echo $this->language->get('text_postedby');?><?php echo " ".$blog['author'];?></span>
                </li>
                <?php } ?>
            	<?php if( $config->get('cat_show_title') ) { ?>
               
                <li>
                	<a class="lable-tag1" href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                	<?php echo $this->language->get('text_tags');?><?php foreach( $tags as $tag => $tagLink ) { ?>
                        <a href="<?php echo $tagLink; ?>" title="<?php echo $tag; ?>" ><?php echo $tag; ?></a>,
                    <?php } ?>
	                
                     </a>
                </li>
               
                <?php } ?>
                
               
                <?php if( $config->get('cat_show_category') ) { ?>
                <!--<li>
                	<a class="lable-category" href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>">
                    <?php echo $blog['category_title'];?>
                	</a>
                </li>-->
                <?php } ?>
                <?php if( $config->get('cat_show_hits') ) { ?>
            	
                <span class="lable-hits leftblog"><?php echo $blog['hits'];?></span>
                
            
            <?php } ?>
                
                
            </ul>
             
            
           <!-- <ul class="add-to-links">
            	<?php if( $config->get('cat_show_title') ) { ?>
                
                <li>
                	<a class="lable-tag" href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>">
                	<?php echo $blog['title'];?>
	                </a>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_author') ) { ?>
                <li>
                	<span class="lable-author"><?php echo $blog['author'];?></span>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_category') ) { ?>
                <li>
                	<a class="lable-category" href="<?php echo $blog['category_link'];?>" title="<?php echo $blog['category_title'];?>">
                    <?php echo $blog['category_title'];?>
                	</a>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_hits') ) { ?>
                <li>
                	<span class="lable-hits"><?php echo $this->language->get("text_hits");?><?php echo $blog['hits'];?></span>
                </li>
                <?php } ?>
                <?php if( $config->get('cat_show_comment_counter') ) { ?>
                <li>
                	<span class="lable-comment">
                    	<?php echo $this->language->get("text_comment_count");?>
		                <?php echo $blog['comment_count'];?>
                    </span>
                </li>
                <?php } ?>
            </ul>-->
        </div>
                		
                        <div class="postTitle for-mobile">
                            <h2><?php echo $heading_title; ?></h2>
                        </div>
                     
                        <div class="postContent">
                            <?php echo $description;?>
                        </div>
                        
                        <div class="postContent">
                            <?php echo $content;?>
                            <!-- AddThis API Config END -->
                            <style type="text/css">
                               .sharing-tool-area a span{ background-color: #000 !important}
                            </style>
                            <div class="sharing-tool-area">
                                <span class="label">Share: </span>
                                <div class="addthis_toolbox addthis_default_style addthis_20x20_style" >
                                    <a class="addthis_button_facebook "></a>
                                    <a class="addthis_button_twitter"></a>
                                    <a class="addthis_button_pinterest"></a>
                                    <a class="addthis_button_instagram"></a>                               
                                    <a class="addthis_button_compact"></a>
                                    <a class="addthis_counter addthis_bubble_style"></a>
                                </div>  
                            </div>
                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>
                            <!-- AddThis Button END -->
                        </div>
                        
                        <?php if( $blog['video_code'] ) { ?>
                		<div class="postContent">
                    	<?php echo html_entity_decode($blog['video_code'], ENT_QUOTES, 'UTF-8');?>
                        
                    </div>
                       <?php } ?>
                       
                    
        <!--social-->   
                        <!--<div class="product-view">
                                <div class="sharing-tool-area">
                                <span class="label">Share: </span>
                                <div class="addthis_toolbox addthis_default_style addthis_32x32_style" >
                            <a class="addthis_button_preferred_1"></a>
                            <a class="addthis_button_preferred_2"></a>
                            <a class="addthis_button_preferred_3"></a>
                            <a class="addthis_button_preferred_4"></a>
                            <a class="addthis_button_compact"></a>
                            <a class="addthis_counter addthis_bubble_style"></a>
                            </div>  
                            </div>
                            </div>-->
                        
                        <!--<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js"></script>-->         
                                 
                        <!--<div class="col2-set">
                            <?php if( !empty($samecategory) ) { ?>
                            <div class="block block-same-category col-md-6 col-sm-6 col-xs-12">
                                <div class="block-title">
                                    <strong><span><?php echo $this->language->get('text_in_same_category');?></span></strong>
                                </div>
                                <div class="block-content">
                                    <ul class="form-list">
                                        <?php foreach( $samecategory as $item ) { ?>
                                        <li>
                                            <a href="<?php echo $this->url->link('pavblog/blog',"id=".$item['blog_id']);?>"><?php echo $item['title'];?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <?php } ?>
                            
                            <?php if( !empty($related) ) { ?>
                            <div class="block block-related-category col-md-6 col-sm-6 col-xs-12">
                                <div class="block-title">
                                    <strong><span><?php echo $this->language->get('text_in_related_by_tag');?></span></strong>
                                </div>
                                <div class="block-content">
                                    <ul class="form-list">
                                        <?php foreach( $related as $item ) { ?>
                                        <li>
                                            <a href="<?php echo $this->url->link('pavblog/blog',"id=".$item['blog_id']);?>"><?php echo $item['title'];?></a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <?php } ?>
                        </div>-->
                        
                        
            	
                
                    	
                <?php //echo $content_bottom; ?>
                
                
                </div>
              </div>
           </div>
       </div>
            
    	
    </div>
</div>
 
  
<?php echo $footer; ?>
