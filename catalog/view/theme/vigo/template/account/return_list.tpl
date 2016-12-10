<?php echo $header; ?>
<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
  
  <div class="breadcrumbs">
		<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
     </div>
  </div>
  
  <div class="main container">
      <div class="col-md-2 col-sm-4 col-xs-12">
    <?php echo $column_left; ?>
    </div>
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account dashboard">
        	<div class="block block-product-return-list">
            	<div class="block-title" style="margin-bottom: 27px;">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
            	<div class="block-content">
                    
                      <?php if ($returns) { ?>
                      <div class="row">
                        <?php foreach ($returns as $return) { ?>
                        <div class="col-sm-6">
                            <div class="box">
                                <div class="box-title">
                                    <h3><?php echo $text_return_id; ?>#<?php echo $return['return_id']; ?></h3>
                                    <a href="<?php echo $return['href']; ?>"><?php echo $text_view; ?></a>
                                </div>
                                <div class="box-content">
                                    <p>
                                        <b><?php echo $text_status; ?></b> <?php echo $return['status']; ?>
                                        <br />
                                        <b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?>
                                        <br />
                                        <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?>
                                        <br />
                                        <b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="pagination"><?php echo $pagination; ?></div>
                    
                    <?php } else { ?>
                    <div class="content"><?php echo $text_empty; ?></div>
                   
                    <?php } ?>
                    
                </div>
			</div>
            <div class="buttons-set">
                <a href="<?php echo $continue; ?>">
                    <button class="button" value="<?php echo $button_continue; ?>" type="button" title="Save">
                    	<span><span><?php echo $button_continue; ?></span></span>
                    </button>
                </a>
            </div>
  		</div>
  	</div>
  
 </div>
        
  
  
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>