<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">

	    <?php if ($success) { ?>
	    <div class="account_edit_info"><?php echo $success; ?></div>
	    <?php } ?>
	    
	    <strong><?php echo $text_my_account; ?></strong><br />
		<a href="<?php echo str_replace('&', '&amp;', $information); ?>"><?php echo $text_information; ?></a> | 
      	<a href="<?php echo str_replace('&', '&amp;', $password); ?>"><?php echo $text_password; ?></a> | 
		<a href="<?php echo str_replace('&', '&amp;', $address); ?>"><?php echo $text_address; ?></a>
		
		<br /><br />
		
		<strong><?php echo $text_my_orders; ?></strong><br />
		<a href="<?php echo str_replace('&', '&amp;', $history); ?>"><?php echo $text_history; ?></a> | 
      	<a href="<?php echo str_replace('&', '&amp;', $download); ?>"><?php echo $text_download; ?></a>
      	
		<br /><br />
		
		<strong><?php echo $text_my_newsletter; ?></strong><br />
		<a href="<?php echo str_replace('&', '&amp;', $newsletter); ?>"><?php echo $text_newsletter; ?></a>
		
		<br /><br />
		
	</div>

</div>
<?php echo $footer; ?> 