<div class="block block-category-nav hidden-xs">
    <div class="block-title">
        <strong><span><?php echo $heading_title; ?></span></strong>
    </div>
    <div class="box-content">
        <div class="block-content">
            <div class="akordeon category-list">

                <?php foreach ($categories as $category) { ?>
                <div class="akordeon-item ">
                    <div class="akordeon-item-head">
                        <div class="akordeon-item-head-container">
                            <?php if ($category['category_id'] == $category_id) { ?>

                            <?php } else { ?>

                            <?php } ?>
                            <?php if ($category['category_id'] == $category_id) { ?>
                            <div class="akordeon-heading">
                                <a href="<?php echo $category['href']; ?>" class="active"><?php echo $category['name']; ?></a>
                            </div>
                            <?php } else { ?>
                            <div class="akordeon-heading">
                                <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                            </div>
                            <?php } ?>
                        </div></div>
                    <?php if ($category['children']) { ?>

                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <div class="akordeon-item-body">
                    <div class="akordeon-item-content">
                    <ul>
                            <?php $j = $i + count($category['children']); ?>
                            <?php for (; $i < $j; $i++) { ?>
                            <?php if (isset($category['children'][$i])) { ?>
                            <?php $id=$category['children'][$i]['category_id'];?>
                            
                            <li>
                                <?php if ($category['children'][$i]['children3']) {?>
                <a  href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name'];?></a>
                <?php if ( $id == $child_id) { ?>
                <ul class="active">
               	<?php } else { ?>
                                <ul>
                                    <?php }?>
                                    <?php foreach ($category['children'][$i]['children3'] as $ch3) { ?>
                                    <li>
                                        <?php if ($ch3['category_id'] == $ch3_id) { ?>
                                        <a href="<?php echo $ch3['href']; ?>" class="active"><?php echo $ch3['name']; ?></a>
                                        <?php } else { ?>
                                        <a href="<?php echo $ch3['href']; ?>"><?php echo $ch3['name']; ?></a>
                                        <?php } ?>
                                    </li>
                                    <?php } ?>
                                </ul>
                                <?php } else {?>
                <a  href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name'];?></a>
              <?php }?>
                            </li>
                            <?php } ?>
                            <?php } ?>
                        </ul>
                    </div>
                    </div>
                        <?php } ?>
                        <?php } ?>
                       

                </div>
                <?php } ?>


            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    jQuery(document).ready(function () {
        //jQuery('.akordeon.category-list').akordeon({expandedItem: 0, buttons: true, toggle: true});
    });
</script>