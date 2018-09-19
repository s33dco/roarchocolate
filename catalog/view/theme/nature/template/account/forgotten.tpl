<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="forgotten">
		<strong><?php echo $text_email; ?></strong>
		<br /><br />
			
			<?php if ($error) { ?>
	    	<div class="login_error"><?php echo $error; ?></div>
	    	<?php } ?>
		
		<?php echo $entry_email; ?><br />
		<input type="text" name="email" size="30" /><br />
		<div class="separator_5px"></div>
		( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )		
		
	</div>
	
	<div class="page_buttons">
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</form>
	</div>

</div>
<?php echo $footer; ?> 