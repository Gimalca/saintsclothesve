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

        <div class="col-main col-md-12 col-sm-12 col-xs-12">

        	<div class="my-account">

				<div class="account-login">

                	<div class="block">	

                    <div class="block-title">

                        <strong><span><?php echo $heading_title; ?></span></strong>

                    </div>

                    <div class="block-content" style="text-align:justify">

                        <p><?php echo $description; ?></p>

                    </div>

                    <!--a href="<?php echo $continue; ?>" >

                    <button id="button-review" class="button btn-write">

                        <span><span><?php echo $button_continue; ?></span></span>

                    </button>

                 </a>

                  </div-->

  					<?php //echo $column_right; ?>

                </div>

            </div>

		</div>

        <div class="col-left sidebar col-md-3 col-sm-4 col-xs-12">

        	<?php //echo $column_left; ?>

        </div>

	</div>

  

  

  

                               

  

  

  <?php echo $content_bottom; ?></div>

<?php echo $footer; ?>