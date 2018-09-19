<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">

    	<?php if ($error_warning) { ?>
    	<div class="error"><?php echo $error_warning; ?></div>
    	<?php } ?>
    	
    	<strong><?php echo $text_your_details; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
		<br /><br />

		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="edit">
		
		<div class="contact_box_left">
	
			<span class="required">*</span> <?php echo $entry_firstname; ?><br />
			<input type="text" name="firstname" value="<?php echo $firstname; ?>" size="24" />
			
				<?php if ($error_firstname) { ?>
	            <span class="error"><?php echo $error_firstname; ?></span>
	            <?php } ?>
	            
	        <div class="separator_5px"></div><div class="separator_5px"></div>
	        
	        <span class="required">*</span> <?php echo $entry_lastname; ?><br />
	        <input type="text" name="lastname" value="<?php echo $lastname; ?>" size="24" />
	        
	        	<?php if ($error_lastname) { ?>
	            <span class="error"><?php echo $error_lastname; ?></span>
	            <?php } ?>
	            
	        <div class="separator_5px"></div><div class="separator_5px"></div>
	        
	        <span class="required">*</span> <?php echo $entry_email; ?><br />
	        <input type="text" name="email" value="<?php echo $email; ?>" size="24" />
	        
	            <?php if ($error_email) { ?>
	            <span class="error"><?php echo $error_email; ?></span>
	            <?php } ?>
        
        </div>
        
        <div class="contact_box_right">
        
	        <span class="required">*</span> <?php echo $entry_telephone; ?><br />
	        <input type="text" name="telephone" value="<?php echo $telephone; ?>" size="24" />
				
				<?php if ($error_telephone) { ?>
	            <span class="error"><?php echo $error_telephone; ?></span>
	            <?php } ?>
			
			<div class="separator_5px"></div><div class="separator_5px"></div>
			
			<?php echo $entry_fax; ?><br />
			<input type="text" name="fax" value="<?php echo $fax; ?>" size="24" />
		
		</div>
		
	</div>
	
	<br /><br />

	<div class="page_buttons">
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</form>
	</div>

</div>
<?php echo $footer; ?> 