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
  	<div class="col-main col-md-9 col-sm-8 col-xs-12">
    	<div class="my-account dashboard">
        	<div class="block box-account box-info">
            	<?php if ($success) { ?>
            		<div class="success"><?php echo $success; ?></div>
         		<?php } ?>
                <div class="block-title">
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
                                        <li><a href="<?php echo $payment; ?>"><?php echo $text_payment; ?></a></li>
                                    </ul>
                               </div>
                            </div>
                        </div>
                        <div class="col-sm-6">
                        	<div class="box">
                                <div class="box-title">
                                	<h3><?php echo $text_my_tracking; ?></h3>
                                </div>
                                <div class="box-content">
                                	<ul>
                             <li><a href="<?php echo $tracking; ?>"><?php echo $text_tracking; ?></a></li>
                                    </ul>
                               </div>
                            </div>
                        </div>
                    </div>
                	<div class="row">
                		<div class="col-sm-6">
                        	<div class="box">
                                <div class="box-title">
                                	<h3><?php echo $text_my_transactions; ?></h3>
                                </div>
                                <div class="box-content">
                                	<ul>
                          <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                    </ul>
                               </div>
                            </div>
                		</div>
                	</div>
            	</div>
            </div>
        	
          
          
          
          
        </div>
    </div>
    <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">
    	<?php echo $column_left; ?>
   </div>
 </div>
 
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>