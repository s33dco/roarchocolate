<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="create">
		
		<?php if ($error_warning) { ?>
    	<div class="error"><?php echo $error_warning; ?></div><br />
    	<?php } ?>
		
		<?php echo $text_account_already; ?>
		<br /><br />
		
		<strong><?php echo $text_your_details; ?></strong><br />
		<div class="account_address">
		
			<div class="account_create_block_left">
				<span class="required">*</span> <?php echo $entry_firstname; ?>			
			</div>
			
			<div class="account_create_block_right">
				<input type="text" name="firstname" value="<?php echo $firstname; ?>" size="24" />
				<?php if ($error_firstname) { ?>
	        	<span class="error"><?php echo $error_firstname; ?></span>
	        	<?php } ?>
			</div>
			
			<div class="separator_5px"></div>
        
			<div class="account_create_block_left">
				<span class="required">*</span> <?php echo $entry_lastname; ?>			
			</div>
        	
        	<div class="account_create_block_right">
        		<input type="text" name="lastname" value="<?php echo $lastname; ?>" size="24" />
        		<?php if ($error_lastname) { ?>
            	<span class="error"><?php echo $error_lastname; ?></span>
            	<?php } ?>
        	</div>
        	
        	<div class="separator_5px"></div>
        	
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_email; ?>
        	</div>
        	
        	<div class="account_create_block_right">
        		<input type="text" name="email" value="<?php echo $email; ?>" size="24" />        
            	<?php if ($error_email) { ?>
            	<span class="error"><?php echo $error_email; ?></span>
           		<?php } ?>
        	</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_telephone; ?>
        	</div>
        	
        	<div class="account_create_block_right">
				<input type="text" name="telephone" value="<?php echo $telephone; ?>" size="24" />
				<?php if ($error_telephone) { ?>
            	<span class="error"><?php echo $error_telephone; ?></span>
            	<?php } ?>
        	</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<?php echo $entry_fax; ?>
        	</div>
        	
        	<div class="account_create_block_right">        	
        		<input type="text" name="fax" value="<?php echo $fax; ?>" size="24" />
			</div>
			
		</div>
		
		<br />
		
		<strong><?php echo $text_your_address; ?></strong><br />
		<div class="account_address">
		
			<div class="account_create_block_left">
				<?php echo $entry_company; ?>
			</div>
			
			<div class="account_create_block_right">		
				<input type="text" name="company" value="<?php echo $company; ?>" size="24" />
			</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_address_1; ?>
        	</div>
        	
        	<div class="account_create_block_right">
        		<input type="text" name="address_1" value="<?php echo $address_1; ?>" size="24" />
				<?php if ($error_address_1) { ?>
            	<span class="error"><?php echo $error_address_1; ?></span>
            	<?php } ?>
        	</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<?php echo $entry_address_2; ?>
        	</div>
        	
        	<div class="account_create_block_right">        	
        		<input type="text" name="address_2" value="<?php echo $address_2; ?>" size="24" />
			</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_city; ?>
        	</div>
        	
        	<div class="account_create_block_right">        	
        		<input type="text" name="city" value="<?php echo $city; ?>" size="24" />
				<?php if ($error_city) { ?>
            	<span class="error"><?php echo $error_city; ?></span>
            	<?php } ?>
        	</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<?php echo $entry_postcode; ?>
        	</div>
        	
        	<div class="account_create_block_right">
        		<input type="text" name="postcode" value="<?php echo $postcode; ?>" size="24" />
        		<?php if ($error_postcode) { ?>
              	<br /><span class="error"><?php echo $error_postcode; ?></span>
              	<?php } ?>
			</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_country; ?>
        	</div>
        	
        	<div class="account_create_block_right">        	
					<select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/create/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>'); $('#postcode').load('index.php?route=account/create/postcode&country_id=' + this.value);">
	        		<option value="FALSE"><?php echo $text_select; ?></option>
	                <?php foreach ($countries as $country) { ?>
	                <?php if ($country['country_id'] == $country_id) { ?>
	                <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
	                <?php } else { ?>
	                <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
	                <?php } ?>
	                <?php } ?>
	            </select>       	
				<?php if ($error_country) { ?>
            	<span class="error"><?php echo $error_country; ?></span>
            	<?php } ?>
            </div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_zone; ?>
        	</div>
        	
        	<div class="account_create_block_right">        	
	        	<select name="zone_id"></select>                      
	            <?php if ($error_zone) { ?>
	            <span class="error"><?php echo $error_zone; ?></span>
	            <?php } ?>
	        </div>
		
		</div>
		
		<br />
		
		<strong><?php echo $text_your_password; ?></strong><br />
		<div class="account_address">
		
			<div class="account_create_block_left">
				<span class="required">*</span> <?php echo $entry_password; ?>
			</div>
			
			<div class="account_create_block_right"> 
				<input type="password" name="password" value="<?php echo $password; ?>" size="24" />
			    <?php if ($error_password) { ?>
            	<span class="error"><?php echo $error_password; ?></span>
            	<?php } ?>
        	</div>
        	
        	<div class="separator_5px"></div>
        	
        	<div class="account_create_block_left">
        		<span class="required">*</span> <?php echo $entry_confirm; ?>
        	</div>
        	
        	<div class="account_create_block_right">        	
	        	<input type="password" name="confirm" value="<?php echo $confirm; ?>" size="24" />&nbsp;
				<?php if ($error_confirm) { ?>
	            <span class="error"><?php echo $error_confirm; ?></span>
	            <?php } ?>
            </div>
		
		</div>
		
		<br />
		
		<strong><?php echo $text_newsletter; ?></strong><br />
		<div class="account_address">
		
			<?php echo $entry_newsletter; ?>
			
			<?php if ($newsletter == 1) { ?>
            	<input type="radio" name="newsletter" value="1" checked="checked" />
            	<?php echo $text_yes; ?>
            	<input type="radio" name="newsletter" value="0" />
            	<?php echo $text_no; ?>
            	<?php } else { ?>
            	<input type="radio" name="newsletter" value="1" />
            	<?php echo $text_yes; ?>
            	<input type="radio" name="newsletter" value="0" checked="checked" />
            	<?php echo $text_no; ?>
            <?php } ?>			
		
		</div>
	
	</div>
	
	<div id="anchorpal"></div>
	
	<div class="page_buttons">

		<div id="agree" class="aleft">
		
			<?php if ($agree) { ?>
				<input type="checkbox" name="agree" value="1" checked="checked" />
			<?php } else { ?>
				<input type="checkbox" name="agree" value="1" />
			<?php } ?>
			
			<?php
			
			// Replace Opencart default class for popups for our slider
			
			$text_agree = str_replace('class="thickbox"', 'onclick="termsloader(); return false;"', $text_agree);
			echo $text_agree;
			
			?>
				
		</div>
	
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</form>
	</div>
	
	<div id="termsloader" class=""></div>

</div>
<?php echo $footer; ?>

<script type="text/javascript">
$('select[name=\'zone_id\']').load('index.php?route=account/create/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
$('#postcode').load('index.php?route=account/create/postcode&country_id=<?php echo $country_id; ?>');

var url2load = $('#agree a').attr("href");
$('#termsloader').load(url2load);
</script>