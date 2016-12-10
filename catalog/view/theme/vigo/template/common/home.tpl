<?php echo $header; ?>





<div class="container">   

    <?php if($slidereffect == 3){ ?>

    <?php echo $column_center; ?>

    <script type="text/javascript">



        var tpj = jQuery;

        tpj.noConflict();



        tpj(document).ready(function () {



            tpj('.tp-banner').revolution({

                delay: 9000, startheight: 550, startwidth: '1170', onHoverStop: 'off', hideThumbs: 10, navigationType: 'none', navigationArrows: 'solo', navigationStyle: 'square', navigationHAlign: 'center', navigationVAlign: 'center', touchenabled: 'on', hideThumbsOnMobile: 'off', hideBulletsOnMobile: 'off', hideArrowsOnMobile: 'off', fullWidth: 'on', autoHeight: 'on', fullScreenAlignForce: 'off', forceFullWidth: 'on', fullScreen: 'off', shadow: 0});



        });

    </script>

    <?php } ?> 







    <?php if($slidereffect == 4){



    ?>

    <div class="slider_4_banner">

        <?php if ($products) { ?>

        <?php $i=1; ?>

        <?php foreach ($products as $product) { ?>

        <?php if($i==1){ ?>

        <div class="full-width-img">

            <a href="<?php echo $product['link']; ?>">

                <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image_banner_4_1']; ?>">

            </a>

        </div>

        <?php } ?>

        <?php if($i==2){ ?>

        <div class="full-width-img">

            <a href="<?php echo $product['link']; ?>">

                <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image_banner_4_2']; ?>">

            </a>

        </div>

        <?php } ?>

        <?php

        $i++; 

        } ?>

        <?php }  else { ?>

        <div><?php echo $text_sorry_no_slider;?></div>

        <?php } ?>

    </div>

    <?php } ?>

</div>



<div class="main-container home-container" style="margin-top: 0px">

    <div class="container">

        <div class="col-main">



            <div class="std">





                <div class="row dessa">

                    <?php if($slidereffect == 1){ ?>

                    <?php if ($products) { ?>

                    <?php $i=1; 

                    $total_banner = count($products);

                    ?>



                    <?php foreach ($products as $product) { ?>



                    <?php if($i<=2){ ?> 

                    <div class="col-sm-4 full-width-img">

                        <a href="<?php echo $product['link']; ?>">

                            <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image']; ?>">

                        </a>

                        <div class="cat-caption">

                            <a href="<?php echo $product['link']; ?>">

                                <h2 class="" style="color: <?php echo $product['color']?>;"><?php echo $product['name']; ?></h2>

                            </a>

                        </div>

                    </div>

                    <?php } ?>





                    <?php if($i==3){ ?>

                    <div class="col-sm-4 full-width-img">

                        <div class="row">

                            <div class="col-sm-12">

                                <a href="<?php echo $product['link']; ?>">

                                    <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image1']; ?>">

                                </a>

                                <div class="cat-caption">

                                    <a href="<?php echo $product['link']; ?>">

                                        <h2 class="third_banner" style="color:<?php echo $product['color']?>;"><?php echo $product['name']; ?></h2>

                                    </a>

                                </div>

                            </div>

                        </div>

                        <?php } ?>

                        <?php if($i==4){ ?>

                        <div style="margin-top: 0.75em;" class="row">

                            <div class="col-sm-12">

                                <a href="<?php echo $product['link']; ?>">

                                    <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image1']; ?>">

                                </a>

                                <div class="cat-caption">

                                    <a href="<?php echo $product['link']; ?>">

                                        <h2 class="" style="color:<?php echo $product['color']?>;"><?php echo $product['name']; ?></h2>

                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>

                    <?php } ?>



                    <?php $i++; } ?>

                    <?php } else { ?>

                    <div><?php echo $text_sorry_no_slider;?></div>

                    <?php } ?>

                    <?php } ?>



                    <?php if($slidereffect == 3){ ?>

                    <?php if ($products) { ?>

                    <?php foreach ($products as $product) { ?>

                    <div class="col-sm-4 full-width-img">

                        <a href="<?php echo $product['link']; ?>">

                            <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image_banner_2']; ?>">

                        </a>

                    </div>

                    <?php } ?>

                    <?php } else { ?>

                    <div><?php echo $text_sorry_no_slider;?></div>

                    <?php } ?>

                    <?php } ?>



                    <?php if($slidereffect == 4){ ?>

                    <div class="slider_4_banner_next">

                        <?php if ($products) { ?>

                        <?php $i=1; ?>

                        <?php foreach ($products as $product) { ?>

                        <?php if($i==3){ ?>

                        <div class="full-width-img_3">

                            <a href="<?php echo $product['link']; ?>">

                                <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image_banner_4_3']; ?>">

                            </a>

                        </div>

                        <?php } ?>

                        <?php if($i==4){ ?>

                        <div class="full-width-img_4">

                            <a href="<?php echo $product['link']; ?>">

                                <img alt="<?php echo $product['name']; ?>" src="<?php echo $product['image_banner_4_4']; ?>">

                            </a>

                        </div>

                        <?php } ?>

                        <?php

                        $i++; 

                        } ?>

                        <?php }  else { ?>

                        <div><?php echo $text_sorry_no_slider;?></div>

                        <?php } ?>

                    </div>

                    <?php } ?>

                </div>



            </div>



            <div>

                <?php echo $content_top; ?>



            </div>



            <div>

                <div class="filter-products col-sm-12 col-lg-12">

                   

                    <?php echo $column_left; ?>

                </div>







                <div class="row">

                     <?php echo $content_bottom; ?>

                    



                    <?php //echo $column_right; ?>

                </div>

                <!--div class="row">



                    <div class="col-sm-4 full-width-img">

                        <a href="index.php?route=product/category&amp;path=59">

                            <img src="image/data/vigo/our_new_arrivals.jpg" alt="NEW MEN COLLECTION">

                        </a>

                    </div>

                    <div class="col-sm-4 full-width-img">

                        <a href="index.php?route=product/category&amp;path=77_81">

                            <img src="image/data/vigo/sale.jpg" alt="SALE">

                        </a>

                    </div>

                    <div class="col-sm-4 full-width-img">

                        <a href="index.php?route=product/category&amp;path=59">

                            <img src="image/data/vigo/summer.jpg" alt="GIRLS">

                        </a>

                    </div>



                </div-->

                <div class="row hidden-xs">



                    <div class="col-lg-12" style="margin-bottom: 70px">

                        <div class="block block-from-blog">

                            <div class="block-title">

                                <img style=" width:600px" src="image/data/title-instagram.jpg" alt="Instagram">

                                <!--strong><span>Instagram</span></strong-->



                            </div>

                        </div>

                        <!--center>
                            <h2>Próximamente</h2>
                        </center-->

                        <iframe src="http://snapwidget.com/sc/?u=c2FpbnRzX3ZlfGlufDIwMHwzfDN8fG5vfDV8ZmFkZU91dHxvblN0YXJ0fHllc3xubw==&ve=250815" title="Instagram Widget" class="snapwidget-widget" allowTransparency="false" frameborder="0" scrolling="no" style="border:none; overflow:hidden; width:1200px; height:200px"></iframe>

                    </div>



                </div>

            </div>

        </div>

    </div>



    <?php echo $footer; ?>

