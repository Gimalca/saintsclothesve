<div class="block block-category-nav">
    <div class="block-content">
        <div class="block-title">
            <strong><span><?php echo $heading_title; ?></span></strong>
        </div>
        <div class="akordeon narrow-by-list">
            <div class="block-category-nav box-filter" >
                <?php foreach ($filter_groups as $filter_group) { ?>
                <div class="akordeon-item">
                    <div class="akordeon-item-head">
                        <div class="akordeon-item-head-container">
                            <div class="akordeon-heading">
                                <?php echo ucwords ($filter_group['name'])." "; ?>

                            </div>
                        </div>
                    </div>
                    <div class="akordeon-item-body">
                        <div class="akordeon-item-content">
                            <ul>
                                <?php foreach ($filter_group['filter'] as $filter) { ?>
                                <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
                                <li>
                                    <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>" checked="checked" />
                                    <label for="filter<?php echo $filter['filter_id']; ?>" ><?php echo $filter['name']; ?></label>
                                </li>
                                <?php } else { ?>
                                <li>
                                    <input type="checkbox" value="<?php echo $filter['filter_id']; ?>" id="filter<?php echo $filter['filter_id']; ?>"/>
                                    <label for="filter<?php echo $filter['filter_id']; ?>" ><?php echo $filter['name']; ?></label>
                                </li>
                                <?php } ?>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>

    </div>
    

    <button style="margin-top: 10px;" type="button" value="<?php echo $button_filter; ?>" id="button-cart" class="button btn-cart button-filter"><span><?php echo $button_filter; ?></span></button>

</div>


<script type="text/javascript"><!--
$('.button-filter').bind('click', function () {

        filter = [];

        $('.box-filter input[type=\'checkbox\']:checked').each(function (element) {
            filter.push(this.value);
        });

        location = '<?php echo $action; ?>&filter=' + filter.join(',');
    });
//--></script> 


<script type="text/javascript">
    jQuery(document).ready(function () {
       // jQuery('.akordeon.narrow-by-list').akordeon({expandedItem: 5,buttons: true, toggle: true, expandedAll: false});
    });
</script>                                                           


