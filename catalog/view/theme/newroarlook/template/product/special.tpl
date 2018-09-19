<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		
		<div class="aleft">
			<h1><?php echo $heading_title; ?></h1>
			<?php // if ($description) { echo $description; } ?>
		</div>
	</div>
	
	<div class="page_content">
	
	<?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>

	<?php for ($j = $i; $j < ($i + 4); $j++) { ?>
	<?php if (isset($products[$j])) { ?>
	<div class="home_block">
	<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>">
	<img src="<?php echo $products[$j]['thumb']; ?>" title="<?php echo $products[$j]['name']; ?>" 
	alt="<?php echo $products[$j]['name']; ?>" />
	</a>
	<br />
	<a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>" title="<?php echo $products[$j]['name']; ?>">
	<?php echo $products[$j]['name']; ?>
	</a>
	<br />
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
	
	</div>
	
	<div class="pagination"><?php echo $pagination; ?></div>

</div>
<?php echo $footer; ?> 