<?php echo $header; ?><?php echo $column_left; ?>
<div id="content" class="main-container col2-right-layout"><?php echo $content_top; ?>
  
<div class="breadcrumbs">
	<div class="container">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
    </div>
  </div>
<div class="main container">
      
		<div class="col-main brand">
        	<div class="block block-brand">
            	<div class="col-main col-md-9 col-sm-8 col-xs-12">
                <div class="block-title">
                	<strong><span><?php echo $heading_title; ?></span></strong>
                </div>
                <div class="block-content">
  <?php if ($categories) { ?>

  <p><b><?php echo $text_index; ?></b>
    <?php foreach ($categories as $category) { ?>
    &nbsp;&nbsp;&nbsp;<a href="index.php?route=product/manufacturer#<?php echo $category['name']; ?>"><b><?php echo $category['name']; ?></b></a>
    <?php } ?>
  </p>
  <?php foreach ($categories as $category) { ?>
  
  <div class="manufacturer-list">
    <div class="manufacturer-heading"><?php echo $category['name']; ?><a id="<?php echo $category['name']; ?>"></a></div>
    <div class="manufacturer-content">
      <?php if ($category['manufacturer']) { ?>
      <ul>
      <?php for ($i = 0; $i < count($category['manufacturer']);) { ?>
      
        <?php $j = $i + ceil(count($category['manufacturer']) / 4); ?>
        <?php for (; $i < $j; $i++) { ?>
        <?php if (isset($category['manufacturer'][$i])) { ?>
        <li class="brand_name"><a href="<?php echo $category['manufacturer'][$i]['href']; ?>"><?php echo $category['manufacturer'][$i]['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      
      <?php } ?>
      </ul>
      <?php } ?>
    </div>
  </div>
  <?php } ?>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>  </div>
	
  
                </div>
                <div class="col-right sidebar col-md-3 col-sm-4 col-xs-12">
                        <?php echo $column_right; ?>
                </div>
            </div>
        
        </div>
        
    </div>
  
  
  
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>