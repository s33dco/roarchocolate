<div id="module_cart" class="module">
	<div class="module_title"><?php echo $heading_title; ?></div>
	<div class="module_content">
		<?php if ($products) { ?>
		
		<?php foreach ($products as $product) { ?>
		
		<div class="cart_item">
		
			<?php echo $product['quantity']; ?> x <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
			
			<?php foreach ($product['option'] as $option) { ?>
			<div class="cart_option"> - <?php echo $option['name']; ?> <?php echo $option['value']; ?></div>
			<?php } ?>
		
		</div>
		
		
		<?php } ?>
		
		<?php if ($display_price) { ?>
		<div class="cart_total">
		<?php foreach ($totals as $total) { ?>
			<div>
			<a href="index.php?route=checkout/cart"><strong><?php echo $total['title']; ?></strong> <?php echo $total['text']; ?></a>
			</div>
      	<?php } ?>
      	</div>
      	<?php } ?>
      	
      	<div class="cart_nav">
      	    <a href="<?php echo $view; ?>"><?php echo $text_view; ?></a> | <a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
      	</div>
		
		<?php } else { ?>
			<div class="cart_empty">
				<?php echo $text_empty; ?>
			</div>
		<?php } ?>
	</div>
	
</div>

<script type="text/javascript"><!--

function getUrlParam(name) {
  var name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp(regexS);
  var results = regex.exec(window.location.href);
  if (results == null)
    return "";
  else
    return results[1];
}

$(document).ready(function () {
	$('.cart_remove').live('click', function () {
		if (!confirm('<?php echo $text_confirm; ?>')) {
			return false;
		}
		$(this).removeClass('cart_remove').addClass('cart_remove_loading');
		$.ajax({
			type: 'post',
			url: 'index.php?route=module/cart/callback',
			dataType: 'html',
			data: 'remove=' + this.id,
			success: function (html) {
				$('#module_cart .middle').html(html);
				if (getUrlParam('route').indexOf('checkout') != -1) {
					window.location.reload();
				}
			}
		});
	});
});
//--></script>