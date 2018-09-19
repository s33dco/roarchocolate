<div class="module">
	<div class="module_title"><?php echo $heading_title; ?></div>
	<div class="module_content">
		<?php if ($products) { ?>
		
		<?php foreach ($products as $product) { ?>
		
		<div class="holder">

			<div class="module_left">
				<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>" title="<?php echo $product['name']; ?>">
				<img src="<?php echo $product['image']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>
			</div>
			
			<div class="module_right">
				<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>" title="<?php echo $product['name']; ?>">
				<?php echo $product['name']; ?>
				</a>
				
				<?php if ($display_price) { ?>
				<br />
				<?php if (!$product['special']) { ?>
				<span class="price"><?php echo $product['price']; ?></span>
				<?php } else { ?>
				<span class="price_crossed"><?php echo $product['price']; ?></span>
				<span class="price_special"><?php echo $product['special']; ?></span>
				<?php } ?>
				<?php } ?>
			</div>
		
		</div>
		
		<?php } ?>
		
		<?php } ?>
	</div>
</div>
