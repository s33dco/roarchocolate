<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>

<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="contact">

<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<div class="contact_box">
		
			<div class="contact_box_left">
			<strong><?php echo $text_address; ?></strong><br />			
			<?php echo $store; ?><br />
			<?php echo $address; ?>			
			</div>
			
			<div class="contact_box_right">
			<?php if ($telephone) { ?>
			<strong><?php echo $text_telephone; ?></strong><br />
			<?php echo $telephone; ?><br />
			<br />
			<?php } ?>
			<?php if ($fax) { ?>
			<strong><?php echo $text_fax; ?></strong><br />
			<?php echo $fax; ?>
			<?php } ?>
			</div>
		
		</div>
		
		<br />
		
		<fieldset>
		
			<?php echo $entry_name; ?><br />
			<input type="text" name="name" value="<?php echo $name; ?>" /> 
	        <?php if ($error_name) { ?>
	        <br /><span class="error"><?php echo $error_name; ?></span>
	        <?php } ?>
	        
	        <br />
	        
	        <?php echo $entry_email; ?><br />
	        <input type="text" name="email" value="<?php echo $email; ?>" />
	        <?php if ($error_email) { ?>
	        <br /><span class="error"><?php echo $error_email; ?></span>
	        <?php } ?>
	        
	        <br /><br />
	        
	        <?php echo $entry_enquiry; ?><br />
	        <textarea name="enquiry" rows="10" cols="99%"><?php echo $enquiry; ?></textarea>
	        <?php if ($error_enquiry) { ?>
	        <br /><span class="error"><?php echo $error_enquiry; ?></span>
	        <?php } ?>
	        
	        <br /><br />
	        
	        <?php echo $entry_captcha; ?><br />
	        <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
	        <?php if ($error_captcha) { ?>
	        <br /><span class="error"><?php echo $error_captcha; ?></span>
	        <?php } ?>
	        <br /><br />
	        <img src="index.php?route=information/contact/captcha" alt="captcha" />
        
        </fieldset>

    

	</div>
	
<div class="page_buttons">
    
    	<fieldset>
    
	    	<input type="submit" value="<?php echo $button_continue; ?>" class="input_button" />
    
	    </fieldset>
    	
  	</div>

</div>

</form>

<?php echo $footer; ?> 