<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
	
		<div class="aleft">
		<h1><?php echo $heading_title; ?></h1>
		</div>
		
		<div class="aright" style="font-size:1.2em;">
			<?php if ($display_price) { ?>
				<strong><?php echo $text_price; ?></strong> 
				<?php if (!$special) { ?>
			  	<span class="price"><?php echo $price; ?></span>
			  	<?php } else { ?>
			  	<span class="price_special" style="color: #FFF;"><?php echo $special; ?></span>
			  	<span class="price_crossed" style="color: #CCC;"><?php echo $price; ?></span>			  	
				<?php } ?>

			<?php } ?>	
		</div>
		
		
	</div>
	
	<div class="page_content">
	
		<div class="product_image">
			<a href="<?php echo $popup; ?>" rel="productgal" title="<?php echo $heading_title; ?>">
		    <img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" id="image" alt="<?php echo $heading_title; ?>" />
		    </a>
		   
           <?php if ($images) { ?>
			  <div class="product_thumb">
		      <?php foreach ($images as $image) { ?>	        
		      <a href="<?php echo $image['popup']; ?>" rel="productgal" title="<?php echo $heading_title; ?>">
		      <img src="<?php echo $image['thumb']; ?>" width="50" alt="<?php echo $heading_title; ?>" />
		      </a>
		      <?php } ?>
		      </div>
		    <?php } ?>
		    
		    <a href="<?php echo $popup; ?>" rel="productgal" title="<?php echo $heading_title; ?>">
		    <?php echo $text_enlarge; ?>
		    </a>
		 
		    <script type="text/javascript">
			/* <![CDATA[ */

				$('a[rel]').attr('id' , 'fancybox');

			/* ]]> */
			</script> 
		    
		</div>			
		
		<div class="product_info">
		
			<div class="product_description">
	
			<?php echo $description; ?>
			</div>
			
				
			<div class="separator_5px"></div>		             
	
		    <?php if ($display_price) { ?>
            <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="product">
              <?php if ($options) { ?>
              <strong><?php echo $text_options; ?></strong>
              <br />
              <div class="product_options">

                  <?php foreach ($options as $option) { ?>
                  
					  <div class="product_options_col1">
					  <?php echo $option['name']; ?>:
					  </div>
					  
					  <div class="product_options_col2">
                      <select name="option[<?php echo $option['option_id']; ?>]">
                        <?php foreach ($option['option_value'] as $option_value) { ?>
                        <option value="<?php echo $option_value['option_value_id']; ?>"><?php echo $option_value['name']; ?>
                        <?php if ($option_value['price']) { ?>
                        <?php echo $option_value['prefix']; ?><?php echo $option_value['price']; ?>
                        <?php } ?>
                        </option>
                        <?php } ?>
                      </select>
                      </div>
                  <?php } ?>

              </div>
              <?php } ?>
              
              
              <?php if ($display_price) { ?>
              <?php if ($discounts) { ?>
              <strong><?php echo $text_discount; ?></strong>
              <div class="product_options">
              
				  <div class="product_options_col1">
				  <?php echo $text_order_quantity; ?>
				  </div>
				  
				  <div class="product_options_col2">
				  <?php echo $text_price_per_item; ?>
				  </div>				  

                  <?php foreach ($discounts as $discount) { ?>
                  
				  <div class="product_options_col1">
				  <?php echo $discount['quantity']; ?>
				  </div>
				  
				  <div class="product_options_col2">
				  <?php echo $discount['price']; ?>
				  </div>                

                  <?php } ?>
                  	
              </div>
              <?php } ?>
              <?php } ?>           

              <div class="product_addtocart">
              <strong><?php echo $text_qty; ?></strong> 
              <input type="text" name="quantity" size="3" value="1" />
              <input type="hidden" name="product_id" value="<?php echo $product_id; ?>" />
              <input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />
              <input type="submit" onclick="return false;" id="add_to_cart" class="input_button" value="<?php echo $button_add_to_cart; ?>" />
              </div>
              
            </form>

            <?php } ?>

	
		</div>
		
	<br style="clear:both;" />
	
	<?php if ($products) { ?>	
	<br />
	<h1><?php echo $tab_related; ?></h1>
	<div class="underline"></div>	
	
		<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>	
			<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
				<?php if (isset($products[$j])) { ?>
				<div class="home_block">			
				<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>" title="<?php echo $products[$j]['name']; ?>">
				<img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" alt="<?php echo $products[$j]['name']; ?>" />
				</a>
				<br />
				<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>" title="<?php echo $products[$j]['name']; ?>">
				<?php echo $products[$j]['name']; ?>
				</a>
				<br />
				<!--<span class="price_option"><?php echo $products[$j]['model']; ?></span><br />-->
				<?php if ($display_price) { ?>
				<?php if (!$products[$j]['special']) { ?>
				<span class="price"><?php echo $products[$j]['price']; ?></span><br />
				<?php } else { ?>
				<span class="price_crossed"><?php echo $products[$j]['price']; ?></span>
				<span class="price_special"><?php echo $products[$j]['special']; ?></span>
				<?php } ?>
				<?php } ?>
				</div>
				<?php } ?>
				
			<?php } ?>	
		<?php } ?>
	<?php } ?>
	
	
	<br style="clear:both;" />
  	</div>
</div>

<script type="text/javascript"><!--
// Loads Reviews from DB
$('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');
// Loads Reviews from DB END

// Review Check & Send Function
function review() {
	$.ajax({
		type: 'POST',
		url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
		dataType: 'json',
		data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
		beforeSend: function() {
			$('.review_success, .review_warning').remove();
			$('#review_button').attr('disabled', 'disabled');
			$('#review_status').after('<div class="review_wait"><img src="catalog/view/theme/nature/images/loading.gif" alt="" /> <?php echo $text_wait; ?></div>');
		},
		complete: function() {
			$('#review_button').attr('disabled', '');
			$('.review_wait').remove();
		},
		success: function(data) {
			if (data.error) {
				$('#review_status').after('<div class="review_warning">' + data.error + '</div>');
			}
			
			if (data.success) {
				$('#review_status').after('<div class="review_success">' + data.success + '</div>');
								
				$('input[name=\'name\']').val('');
				$('textarea[name=\'text\']').val('');
				$('input[name=\'rating\']:checked').attr('checked', '');
				$('input[name=\'captcha\']').val('');
			}
		}
	});
}
// Review Load / Check & Send Function END

$('#review .pagination a').live('click', function() {
	$('#review').slideUp('slow');		
	$('#review').load(this.href);	
	$('#review').slideDown('slow');	
	return false;
});
//--></script>

<?php echo $footer; ?>