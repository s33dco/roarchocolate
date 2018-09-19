<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">

		<strong><?php echo $text_password; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
		<br /><br />
		
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="password">
		
		<span class="required">*</span> <?php echo $entry_password; ?><br />
		<input type="password" name="password" value="<?php echo $password; ?>" size="24" />
              
        	<?php if ($error_password) { ?>
            <span class="error"><?php echo $error_password; ?></span>
            <?php } ?>
            
        <div class="separator_5px"></div><div class="separator_5px"></div>
        
        <span class="required">*</span> <?php echo $entry_confirm; ?><br />
        <input type="password" name="confirm" value="<?php echo $confirm; ?>" size="24" />
            
            <?php if ($error_confirm) { ?>
            <span class="error"><?php echo $error_confirm; ?></span>
            <?php } ?>
            
	</div>
	
	<br />
	
	<div class="page_buttons">
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</form>	
	</div>

</div>
<?php echo $footer; ?> 