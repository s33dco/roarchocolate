<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<div class="contact_box_left">
			<strong><?php echo $text_i_am_new_customer; ?></strong>
			<div class="login_box">
			
				<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="account">
				
				<fieldset>
				
					<?php echo $text_checkout; ?>
					<br /><br />
					<label for="register">
					<?php if ($account == 'register') { ?>
					<input type="radio" name="account" value="register" id="register" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="account" value="register" id="register" />
					<?php } ?>
					<strong><?php echo $text_register; ?></strong>
					</label>				
					<?php if ($guest_checkout) { ?>
					<br />
					<label for="guest">
					<?php if ($account == 'guest') { ?>
					<input type="radio" name="account" value="guest" id="guest" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="account" value="guest" id="guest" />
					<?php } ?>
					<strong><?php echo $text_guest; ?></strong>
					</label>			
					<?php } ?>
					<br /><br />
					<?php echo $text_create_account; ?>
					<br />
					<div class="aright">
					<input type="submit" value="<?php echo $button_continue; ?>" class="input_button" />
					</div>
				
				</fieldset>
				
				</form>			
			
			</div>			
		</div>	
	
		<div class="contact_box_right">
			<strong><?php echo $text_returning_customer; ?></strong>
			<div class="login_box">
				<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="login">
				
				<fieldset>
				
					<?php if ($redirect) { ?>
					<input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />
					<?php } ?>
		            <?php echo $text_i_am_returning_customer; ?>	            
		            <br /><br />
		            <strong><?php echo $entry_email; ?></strong>
		            <br />
		            <input type="text" name="email" />
		            <div class="separator_5px"></div>
		            <strong><?php echo $entry_password; ?></strong>
		            <br />
		            <input type="password" name="password" />
		            <div class="separator_5px"></div>
		            <a href="<?php echo str_replace('&', '&amp;', $forgotten); ?>"><?php echo $text_forgotten_password; ?></a>
		            <div class="separator_5px"></div>
		            <div class="separator_5px"></div>
		            
		            	<?php if ($success) { ?>
		    			<div class="login_success"><?php echo $success; ?></div>
		    			<?php } ?>
		    			<?php if ($error) { ?>
		    			<div class="login_error"><?php echo $error; ?></div>
		    			<?php } ?>	            
		            
		            <div class="aright">
		            <input type="submit" value="<?php echo $button_login; ?>" class="input_button" />
		            </div>
	            
	            </fieldset>            
	            
	          	</form>
          	</div>	
				
		</div>
	
	</div>

</div>
<?php echo $footer; ?> 