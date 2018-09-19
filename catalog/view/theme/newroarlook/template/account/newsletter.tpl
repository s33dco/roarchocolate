<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="newsletter">
		
		<strong><?php echo $heading_title; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
		<br /><br />
		<?php echo $entry_newsletter; ?>
		<?php if ($newsletter) { ?>			
            <input type="radio" name="newsletter" value="1" checked="checked" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" />
            <?php echo $text_no; ?>
            <?php } else { ?>
            <input type="radio" name="newsletter" value="1" />
            <?php echo $text_yes; ?>&nbsp;
            <input type="radio" name="newsletter" value="0" checked="checked" />
            <?php echo $text_no; ?>
		<?php } ?>
		
	</div>
	
	<br />
	
	<div class="page_buttons">
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</form>
	</div>

</div>
<?php echo $footer; ?> 