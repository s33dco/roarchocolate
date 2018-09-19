<div class="module">
	<div class="module_title"><?php echo $heading_title; ?></div>
	<div class="module_content">
		<ul>
		<?php foreach ($informations as $information) { ?>
		<li><a href="<?php echo str_replace('&', '&amp;', $information['href']); ?>" title="<?php echo $information['title']; ?>"><?php echo $information['title']; ?></a></li>
		<?php } ?>
		<li><a href="<?php echo str_replace('&', '&amp;', $contact); ?>" title="<?php echo $text_contact; ?>"><?php echo $text_contact; ?></a></li>
		<li><a href="<?php echo str_replace('&', '&amp;', $sitemap); ?>" title="<?php echo $text_sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		</ul>
	</div>
</div>