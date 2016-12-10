<?php echo $header; ?>



<div id="content" class="main-container col2-left-layout"><?php echo $content_top; ?>
  <div class="breadcrumbs">
		<div class="container">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
            <?php } ?>
    </div>
  </div>
  <?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
  <div class="main container">
    <div class="col-md-2 col-sm-4 col-xs-12">
    <?php echo $column_left; ?>
    </div>
     
    <div class=" col-md-offset-1 col-md-8 col-sm-8 col-xs-12">
    	<div class="my-account dashboard">
        	<div class="block box-account box-info">
                <div class="block-title" style="margin-bottom: 27px;">
                    <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	<div class="row">
                    	<div class="col-sm-6">
                            <div class="box">
                            	<div class="box-title">
                                	<h3><?php echo $text_my_account; ?></h3>
								</div>
                                <div class="box-content">
                                	<ul>
              <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
              <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
              <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
              <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            </ul>
                                </div>
                            	
                            </div>
	                    </div>
                        <div class="col-sm-6">
                            <div class="box">
                            	<div class="box-title">
                                	<h3><?php echo $text_my_orders; ?></h3>
								</div>
                                <div class="box-content">
                                	<ul>
              <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
              <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
              <?php if ($reward) { ?>
              <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
              <?php } ?>
              <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
              <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
              <li><a href="<?php echo $recurring; ?>"><?php echo $text_recurring; ?></a></li>
            </ul>
                                </div>
                            	
                            </div>
	                    </div>
                    </div>
                    <div class="row">
                    	<div class="col-sm-6">
                            <div class="box">
                            	<div class="box-title">
                                	<h3><?php echo $text_my_newsletter; ?></h3>
								</div>
                                <div class="box-content">
                                	<ul>
              <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
            </ul>
                                </div>
                            	
                            </div>
	                    </div>
                      
                    </div>
                </div>
            </div>
    	  
		</div>    
    </div>
   <!--<?php echo $column_right; ?>-->
    
  </div>
 
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?> 