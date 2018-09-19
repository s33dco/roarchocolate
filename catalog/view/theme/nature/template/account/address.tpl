<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<strong><?php echo $text_edit_address; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
		
		<br /><br />
		
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address">
		
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
			
			<?php echo $entry_company; ?><br />
			<input type="text" name="company" value="<?php echo $company; ?>" size="24" />
			
			<div class="separator_5px"></div><div class="separator_5px"></div>
			
			<span class="required">*</span> <?php echo $entry_address_1; ?><br />
			<input type="text" name="address_1" value="<?php echo $address_1; ?>" size="24" />		
			
			    <?php if ($error_address_1) { ?>
	            <span class="error"><?php echo $error_address_1; ?></span>
	            <?php } ?>
	
			<div class="separator_5px"></div><div class="separator_5px"></div>
			
			<?php echo $entry_address_2; ?><br />
	        <input type="text" name="address_2" value="<?php echo $address_2; ?>" size="24" />
        
		</div>
       
		<div class="contact_box_right">       
		
			<span class="required">*</span> <?php echo $entry_city; ?><br />
	        <input type="text" name="city" value="<?php echo $city; ?>" size="24" />
	              
	            <?php if ($error_city) { ?>
	            <span class="error"><?php echo $error_city; ?></span>
	            <?php } ?></td>
			
			<div class="separator_5px"></div><div class="separator_5px"></div>
			
			<?php echo $entry_postcode; ?><br />
	        <input type="text" name="postcode" value="<?php echo $postcode; ?>" size="24" />
	        <?php if ($error_postcode) { ?>
            	<br /><span class="error"><?php echo $error_postcode; ?></span>
            <?php } ?>
			
			<div class="separator_5px"></div><div class="separator_5px"></div>
			
			<span class="required">*</span> <?php echo $entry_country; ?><br />
			<select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>'); $('#postcode').load('index.php?route=account/address/postcode&country_id=' + this.value);">
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
	            
			<div class="separator_5px"></div><div class="separator_5px"></div>
			
			<span class="required">*</span> <?php echo $entry_zone; ?><br />
			<select name="zone_id"></select>
	              
	            <?php if ($error_zone) { ?>
	            <span class="error"><?php echo $error_zone; ?></span>
	            <?php } ?>
	            
	        <div class="separator_5px"></div><div class="separator_5px"></div>
	
			<?php echo $entry_default; ?><br />
			
			<?php if ($default) { ?>
			<input type="radio" name="default" value="1" checked="checked" />
			<?php echo $text_yes; ?>
			<input type="radio" name="default" value="0" />
			<?php echo $text_no; ?>
			<?php } else { ?>
			<input type="radio" name="default" value="1" />
			<?php echo $text_yes; ?>
			<input type="radio" name="default" value="0" checked="checked" />
			<?php echo $text_no; ?>
			<?php } ?>
		
		</div>

	</div>
	
	<br /><br />

	<div class="page_buttons">
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</form>
	</div>

</div>

<script type="text/javascript">
$('select[name=\'zone_id\']').load('index.php?route=account/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
$('#postcode').load('index.php?route=account/address/postcode&country_id=<?php echo $country_id; ?>');
</script>

<?php echo $footer; ?> 