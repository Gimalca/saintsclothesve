
<?php $a=count($banners)?>

<?php if($a==1){ ?>
    <?php foreach ($banners as $banner) { ?>
        <?php if ($banner['link']) { ?>
            <p class="category-image"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a>
            </p>
        <?php } else { ?>
            <p class="category-image"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></p>
                 
        <?php } ?>
    <?php } ?>
            
            
<?php } else { ?><div style="margin-top:30px;"></div>
            
    <div class="row">
        
         <?php foreach ($banners as $banner) { ?>
             
                <?php if ($banner['link']) { ?>
                    <div  class="col-sm-4 full-width-img"><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo 						$banner['title']; ?>" /></a>
                        
                    </div>
                    
                <?php  } else { ?>
                    <div class="col-sm-4 full-width-img"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" />
                        
                    </div>
                    
                
            
               <?php } ?> 	
        <?php } ?>
    </div>
     
<?php } ?>

            

