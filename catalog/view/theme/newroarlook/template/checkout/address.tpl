<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">		
		
		<?php if ($addresses) { ?>
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address_1">
		
		<strong><?php echo $text_entries; ?></strong><br />
		
		<div class="separator_5px"></div>
		
		<?php foreach ($addresses as $address) { ?>
        <?php if ($address['address_id'] == $default) { ?>
		<input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" checked="checked" />
		<label for="address_id[<?php echo $address['address_id']; ?>]"><?php echo $address['address']; ?></label><br />
        <?php } else { ?>
		<input type="radio" name="address_id" value="<?php echo $address['address_id']; ?>" id="address_id[<?php echo $address['address_id']; ?>]" />
		<label for="address_id[<?php echo $address['address_id']; ?>]"><?php echo $address['address']; ?></label><br />
        <?php } ?>
        <?php } ?>
        
        <br />
		<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">		
		</form>
		
		<?php } ?>
		
		<br />
		
		<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="address_2">

		<strong><?php echo $text_new_address; ?></strong><br />
		
		<div class="separator_5px"></div>
		
		<div class="contact_box_left">
		
			<span class="required">*</span> <?php echo $entry_firstname; ?><br />
			<input type="text" name="firstname" value="<?php echo $firstname; ?>" />
			  
			  	<?php if ($error_firstname) { ?>
              	<span class="error"><?php echo $error_firstname; ?></span>
              	<?php } ?>
              	
            <div class="separator_5px"></div>
              
            <span class="required">*</span> <?php echo $entry_lastname; ?><br />
            <input type="text" name="lastname" value="<?php echo $lastname; ?>" />
            	
            	<?php if ($error_lastname) { ?>
              	<span class="error"><?php echo $error_lastname; ?></span>
              	<?php } ?>
              	
            <div class="separator_5px"></div>
            
            <?php echo $entry_company; ?><br />
            <input type="text" name="company" value="<?php echo $company; ?>" />
            
            <div class="separator_5px"></div>
            
            <span class="required">*</span> <?php echo $entry_address_1; ?><br />
            <input type="text" name="address_1" value="<?php echo $address_1; ?>" />
            
           		<?php if ($error_address_1) { ?>
              	<span class="error"><?php echo $error_address_1; ?></span>
              	<?php } ?>
              	
            <div class="separator_5px"></div>
            
            <?php echo $entry_address_2; ?><br />
            <input type="text" name="address_2" value="<?php echo $address_2; ?>" />          
			
		</div>
		
		<div class="contact_box_right">
		
			<span class="required">*</span> <?php echo $entry_city; ?><br />
			<input type="text" name="city" value="<?php echo $city; ?>" />
			
				<?php if ($error_city) { ?>
              	<span class="error"><?php echo $error_city; ?></span>
              	<?php } ?>
              	
            <div class="separator_5px"></div>  
            
            <?php echo $entry_postcode; ?><br />
            <input type="text" name="postcode" value="<?php echo $postcode; ?>" />
            <?php if ($error_postcode) { ?>
            <br /><span class="error"><?php echo $error_postcode; ?></span>
            <?php } ?>
                        
            <div class="separator_5px"></div>
            
            <span class="required">*</span> <?php echo $entry_country; ?><br />
			<select name="country_id" id="country_id" onchange="$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=' + this.value + '&zone_id=<?php echo $zone_id; ?>'); $('#postcode').load('index.php?route=checkout/address/postcode&country_id=' + this.value);">
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
            
            <div class="separator_5px"></div>
            
            <span class="required">*</span> <?php echo $entry_zone; ?><br />
            <select name="zone_id"></select>
            
            	<?php if ($error_zone) { ?>
              	<span class="error"><?php echo $error_zone; ?></span>
              	<?php } ?>
		
		</div>

	</div>
	
	<br />
	
	<div class="page_buttons">
	<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
	</div>
	
</div>

<?php echo $footer; ?>

<script type="text/javascript"><!--
$('select[name=\'zone_id\']').load('index.php?route=checkout/address/zone&country_id=<?php echo $country_id; ?>&zone_id=<?php echo $zone_id; ?>');
$('#postcode').load('index.php?route=checkout/create/postcode&country_id=<?php echo $country_id; ?>');
//--></script>