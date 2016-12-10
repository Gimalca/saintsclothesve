<div class="split">

    <div class="block-title">

        <img class="img-responsive" style="width:382px;margin: 0 auto;" src="image/data/tittle-blog.jpg" alt="Blog">

                                <!--strong><span>Instagram</span></strong-->



                            </div>

</div>



    

    <div class="col-sm-6 col-md-6 col-lg-6 " >

        <div class="block block-from-blog">

            <!--div class="block-title">

                <strong><span><?php echo $heading_title; ?></span></strong>

                <?php echo $text_from_the_staff; ?>

            </div-->

            <div class="block-content" style="background-color:#fff;">

                <ul>

                    <?php if( !empty($blogs) ) { $blog = $blogs?>

                  

                    <li class="bx-clone">

                        <div class="row">

                            <div class="col-md-12 col-sm-12">

                                <?php if( $blog[0]['thumb']  )  { ?>

                                <img src="<?php echo $blog[0]['thumb'];?>" title="<?php echo $blog[0]['title'];?>"/>

                                <?php } ?>

                                
                                <h2><br>

                                    <a style="color: #000" href="<?php echo $blog[0]['link'];?>" title="<?php echo $blog[0]['title'];?>"><?php echo $blog[0]['title'];?></a>
                                </h2>

                                <div><?php echo rtrim(substr(html_entity_decode($blog[0]['description']),0,500)); ?>

                                    <a  style="color: #000;float: left; font-family: Arial; font-size: 14px; text-transform: uppercase; font-weight: 

                                        bold" href="<?php echo $blog[0]['link'];?>" class=""><?php echo $this->language->get('text_readmore');?> ></a>

                                </div>



                                

                            </div>

                        </div>

                    </li>

                   

                    <?php } ?>

                </ul>

            </div>

          

        </div>

        

    </div>

    <div class="col-sm-6 col-md-6 col-lg-6" >

        <div class="block block-from-blog">

            <!--div class="block-title">

                <strong><span><?php echo $heading_title; ?></span></strong>

                <?php echo $text_from_the_staff; ?>

            </div-->

            <div class="block-content" style="background-color:#fff; ">

                <ul>

                    <?php if( !empty($blogs) ) { $blog = $blogs?>

                  

                    <li class="bx-clone">

                        <div class="row">

                            <div class="col-md-12 col-sm-12">

                                <?php if( $blog[1]['thumb']  )  { ?>

                                <img  src="<?php echo $blog[1]['thumb'];?>" title="<?php echo $blog[1]['title'];?>"/>

                                <?php } ?>

                            </div>

                        </div>

                        <div class="row">    

                            <div class="col-md-12 col-sm-12 details">
                           
                                <h2> <br>

                                    <a style="color: #000" href="<?php echo $blog[1]['link'];?>" title="<?php echo $blog[1]['title'];?>"><?php echo $blog[1]['title'];?></a>

                                </h2>

                                <div><?php echo rtrim(substr(html_entity_decode($blog[1]['description']),0,500)); ?>

                                    <a  style="color: #000;float: left; font-family: Arial; font-size: 14px; text-transform: uppercase; font-weight:bold" href="<?php echo $blog[1]['link'];?>" class=""><?php echo $this->language->get('text_readmore');?> ></a>

                                </div>

                        </div>

                    </li>

                   

                    <?php } ?>

                </ul>

            </div>

          

        </div>

        

    </div>







    <!--<div class="box ">

            <div class="box-heading"><?php echo $heading_title; ?></div>

            <div class="box-content" >

                    <?php if( !empty($blogs) ) { ?>

                    <div class="pavblog-latest clearfix">

                            <?php foreach( $blogs as $key => $blog ) { $key = $key + 1;?>

                            <div class="pavcol<?php echo $cols;?>">

                                            <div class="blog-item">

                                                            <div class="blog-header clearfix">

                                                            <h4 class="blog-title">

                                                                    <a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title'];?></a>

                                                            </h4>

                                                            </div>

                                                            <div class="blog-body">

                                                                    <?php if( $blog['thumb']  )  { ?>

                                                                    <img src="<?php echo $blog['thumb'];?>" title="<?php echo $blog['title'];?>" align="left"/>

                                                                    <?php } ?>

                                                                    <div class="description">

                                                                                    <?php echo utf8_substr( $blog['description'],0, 200 );?>...

                                                                    </div>

                                                                    <a href="<?php echo $blog['link'];?>" class="readmore"><?php echo $this->language->get('text_readmore');?></a>

                                                            </div>	

                                                    </div>

                            </div>

                            <?php if( ( $key%$cols==0 || $key == count($blogs)) ){  ?>

                                    <div class="clearfix"></div>

                            <?php } ?>

                            <?php } ?>

                    </div>

                    <?php } ?>

            </div>

     </div>-->

  