<div class="col-sm-6">
    <div class="block-testimonials">
        <!--div class="block-title"><strong><span><?php if ($testimonial_title=="") echo "<br>"; else echo $testimonial_title; ?></span></strong></div-->
        <div class="">
            <ul><?php $i=0 ?>
                <?php foreach ($testimonials as $testimonial) { ?>

                <li>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="comments-widget">
                                <div class="comment-box text-center">
                                   
                                    <?php echo $testimonial['description'] ; ?>
                                     <h2><a href="<?php echo $testimonial['email']; ?>"><?php echo $testimonial['title']; ?></a></h2>
                                    <a  style="color: #2a6496" href="<?php echo $testimonial['email'];?>" class=""><?php echo $this->language->get('text_readmore');?> ></a>
                                </div>
                                



                            </div>
                        </div>
                    </div>



                    <?php $i++; } ?>


            </ul>
        </div>
    </div>
</div>




<script type="text/javascript">// <![CDATA[
    jQuery(function ($) {
        $('.block-testimonials ul').bxSlider({auto: false, autoStart: false, autoHover: false, mode:'horizontal', speed:1000, pager: false});
    });
// ]]></script>    

</div>