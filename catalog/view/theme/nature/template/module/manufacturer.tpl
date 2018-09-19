<div class="module">
	<div class="module_title"><?php echo $heading_title; ?></div>
	<div class="module_content">
		
		<div class="module_centered">
			
			<?php $counter = 0; ?>
			<?php foreach ($manufacturers as $manufacturer) { ?>
			<?php if ($manufacturer['manufacturer_id'] == $manufacturer_id) { ?>
				
				<?php if ($counter != 0){ echo '| '; } ?>
				<?php $counter++; ?>
				
				<a href="<?php echo str_replace('&', '&amp;', $manufacturer['href']); ?>">
				<?php echo $manufacturer['name']; ?>
				</a> 
				
			<?php } else { ?>
				
				<?php if ($counter != 0){ echo '| '; } ?>
				<?php $counter++; ?>
				
				<a href="<?php echo str_replace('&', '&amp;', $manufacturer['href']); ?>">
				<?php echo $manufacturer['name']; ?>
				</a> 
			<?php } ?>
			
			<?php } ?>
		
		</div>
		
	</div>
	
</div>
