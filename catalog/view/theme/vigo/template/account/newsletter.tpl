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
    	<div class="my-account">
          <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        	<div class="block block-account-newsletter">
                <div class="block-title">
                    <strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
                	<ul class="form-list">
						<li class="control">
                        	<label for="subscription"><?php echo $entry_newsletter; ?></label>
                            <?php if ($newsletter) { ?>
                            <input type="radio" name="newsletter" value="1" checked="checked" />
                            <label for="yes"><?php echo $text_yes; ?></label>
                            <input type="radio" name="newsletter" value="0" />
                            <label for="no"><?php echo $text_no; ?></label>
                            <?php } else { ?>
                            <input type="radio" name="newsletter" value="1" />
                            <label for="yes"><?php echo $text_yes; ?></label>
                            <input type="radio" name="newsletter" value="0" checked="checked" />
                            <label for="no"><?php echo $text_no; ?></label>
                            <?php } ?>
                        </li>
                    </ul>
                        
                </div>
            </div>
        	
            <div class="buttons-set">
            	<p class="back-link"><a href="<?php echo $back; ?>"><small>« </small><?php echo $button_back; ?></a></p>
               <button class="button" title="Save" type="submit" value="<?php echo $button_continue; ?>"><span><span><?php echo $button_continue; ?></span></span></button>
            </div>
  	    </form>
      </div>
    </div>
   
  </div>
        
  <?php echo $column_right; ?>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>