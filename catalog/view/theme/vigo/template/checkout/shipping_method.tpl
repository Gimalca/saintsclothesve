<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($shipping_methods) { ?>
<p><?php echo $text_shipping_method; ?></p>
<table class="radio">
  <?php foreach ($shipping_methods as $shipping_method) { ?>
  <tr>
    <td colspan="3"><b><?php echo $shipping_method['title']; ?></b></td>
  </tr>
  <?php if (!$shipping_method['error']) { ?>
  <?php foreach ($shipping_method['quote'] as $quote) { ?>
  <tr class="highlight">
    <td><?php if ($quote['code'] == $code || !$code) { ?>
      <?php $code = $quote['code']; ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input type="radio" name="shipping_method" value="<?php echo $quote['code']; ?>" id="<?php echo $quote['code']; ?>" />
      <?php } ?></td>
    <td> <label for="<?php echo $quote['code']; ?>"> <?php echo $quote['title']; ?></label></td>
    <td style="text-align: right;"> <label for="<?php echo $quote['code']; ?>">  <?php echo ':  '.$quote['text']; ?> </label></td>
  </tr>
  <?php } ?>
  <?php } else { ?>
  <tr>
    <td colspan="3"><div class="error"> <?php echo $shipping_method['error']; ?></div></td>
  </tr>
  <?php } ?>
  <?php } ?>
</table>
<br />
<?php } ?>
<b><?php $text_comments; ?></b>
<textarea style="display: none" name="comment" rows="8" style="width: 98%;"><?php echo $comment; ?></textarea>
<div class="field buttons-set col-md-6 col-lg-6 col-xs-12">
    <button style="margin-left: 15px" type="button" value="<?php echo $button_continue; ?>" id="button-shipping-method" class="button input-box" >
		<span><span><?php echo $button_continue; ?></span></span>
    </button>
</div>