<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<strong><?php echo $heading_title; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $continue); ?>"><?php echo $button_continue; ?></a> )
		<br />		
		
		<?php foreach ($downloads as $download) { ?>
				
		<div class="account_address">
			
			<div class="aleft">
			<strong><?php echo $text_order; ?></strong> <?php echo $download['order_id']; ?><br />
			<strong><?php echo $text_name; ?></strong> <?php echo $download['name']; ?><br />
			<strong><?php echo $text_date_added; ?></strong> <?php echo $download['date_added']; ?><br />
			</div>
		
			<div class="aright">
			<a href="<?php echo str_replace('&', '&amp;', $download['href']); ?>"><?php echo $text_download; ?></a><br />
			<strong><?php echo $text_remaining; ?></strong> <?php echo $download['remaining']; ?><br />
			<?php echo $text_size; ?></b> <?php echo $download['size']; ?>
			</div>
		
		</div>		
		
		<?php } ?>
	
	</div>
	
	<br />

	<div class="page_buttons">
	<?php echo $pagination; ?>
	</div>


</div>
<?php echo $footer; ?> 