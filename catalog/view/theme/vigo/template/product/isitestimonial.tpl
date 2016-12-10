<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="main-container col1-layout">
	
    <div class="main container">
		<div class="col-main">
        	<div class="block block-testimonoal">
            	<div class="block-title">
                    	<strong><span><?php echo $heading_title ?></span></strong>
                </div>
                <div class="block-content">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="testimonial">
                <ul class="form-list col-md-6 col-sm-12 col-xs-12 first">
                	<li class="fields">
                        <div class="field">
                        	<div class="input-box name-firstname">
              <input type="text" name="name" value="<?php echo $name; ?>" class="input-text required-entry" placeholder="<?php echo $text_enter_your_name;?>"/>
              <?php if ($error_name) { ?>
              <span class="error"><?php echo $error_name; ?></span>
              <?php } ?>
                            </div>
                        </div>
                        <div class="field">
                        	<div class="input-box input-city">
                            <input type="text" name="city" value="<?php echo $city; ?>" class="input-text required-entry" placeholder="<?php echo $text_enter_your_city;?>"/>
                            </div>
                        </div>
                        <div class="field">
                        	<div class="input-box input-email">
              <input type="text" name="email" value="<?php echo $email; ?>" class="input-text required-entry" placeholder="<?php echo $text_enter_your_email;?>"/>
              <?php if ($error_email) { ?>
              <span class="error"><?php echo $error_email; ?></span>
              <?php } ?>
                            </div>
                        </div>
                        <div class="field">
                        	<div class="input-box input-rating">
                <br><?php echo $entry_rating; ?> &nbsp;&nbsp;&nbsp; <span><?php echo $entry_bad; ?></span>&nbsp;
        		<input type="radio" name="rating" value="1" style="margin: 0;" <?php if ( $rating == 1 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="2" style="margin: 0;" <?php if ( $rating == 2 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="3" style="margin: 0;" <?php if ( $rating == 3 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="4" style="margin: 0;" <?php if ( $rating == 4 ) echo 'checked="checked"';?> />
        		&nbsp;
        		<input type="radio" name="rating" value="5" style="margin: 0;" <?php if ( $rating == 5 ) echo 'checked="checked"';?> />
        		&nbsp; <span><?php echo $entry_good; ?></span><br /><br>
                            </div>
                        </div>
                        <div class="field">
                        	<div class="input-box input-captch">
                            <?php if ($error_captcha) { ?>
              <span class="error"><?php echo $error_captcha; ?></span>
              <?php } ?>
                            <input type="text" name="captcha" value="<?php echo $captcha; ?>" class="input-text required-entry" placeholder="<?php echo $text_enter_your_captch;?>*"/>
                            </div>
                        </div>
                        <div class="field">
                        	<div class="input-box input-captch-image">
                            <img src="index.php?route=information/contact/captcha" alt="captch-image"/>
                            </div>
                        </div>
                   </li>
				</ul>
                <ul class="form-list col-md-6 col-sm-12 col-xs-12">
                	<li class="wide">
                    	<div class="field">
	                    	<div class="input-box input-subject">
              <input type="text" name="title" value="<?php echo $title; ?>" size = 90 class="input-text required-entry" placeholder="<?php echo $text_enter_your_subject;?>"/>
              <?php if ($error_title) { ?>
              <span class="error"><?php echo $error_title; ?></span>
              <?php } ?>
                            </div>
                        </div>
                        <div class="field">
	                    	<div class="input-box input-comment">
              <textarea name="description" style="width: 99%;" rows="10" class="input-text required-entry" placeholder="<?php echo $text_enter_your_message;?>*"><?php echo $description; ?></textarea>
                            </div>
                        </div>
                    </li>
                    <li class="wide form-button">
                    	<a  onclick="$('#testimonial').submit();">
                    	<button class="button" value="<?php echo $button_send; ?>" type="button" title="Post Comment">
                        	<span><span><?php echo $button_send; ?></span></span>
                        </button>
                        </a>
                        <a class="button testimonial_show_all_button" href="<?php echo $showall_url;?>">
                        <button class="button" value="<?php echo $show_all; ?>" type="button" title="<?php echo $show_all; ?>">
                        	<span><span><?php echo $show_all; ?></span></span>
                        </button>
                        </a>
                    </li>
                </ul>
	
    			</form>
                </div>
            </div>
            
        </div>
    </div>
	
<?php echo $footer; ?> 