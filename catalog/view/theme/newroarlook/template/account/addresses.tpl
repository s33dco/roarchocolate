<?php
// Redirects to insert page if necessary
if (isset($_GET['redirect'])){
	header("Location: index.php?route=account/address/insert");
	exit;
}
?>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">

	    <?php if ($success) { ?>
	    <div class="account_edit_info"><?php echo $success; ?></div>
	    <?php } ?>
	    <?php if ($error_warning) { ?>
	    <div class="error"><?php echo $error_warning; ?></div>
	    <?php } ?>
	    
	    <strong><?php echo $text_address_book; ?></strong><br />
	    ( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
	    <br />

	    <?php foreach ($addresses as $result) { ?>
	    
	    <div class="account_address">
	    
	    	<div class="aleft">
	    	<?php echo $result['address']; ?>
	    	</div>
	    	
	    	<div class="aright">
	    	<a href="<?php echo str_replace('&', '&amp;', $result['update']); ?>"><?php echo $button_edit; ?></a> | 
	    	<a href="<?php echo str_replace('&', '&amp;', $result['delete']); ?>"><?php echo $button_delete; ?></a>
	    	</div>	    	
	    	
	    </div>
    	<?php } ?>

	</div>
	
	<div class="page_buttons">
	<form action="index.php?route=account/address&redirect=true" method="post">
	<input type="hidden" name="redirect">		
	<input type="submit" class="input_button" value="<?php echo $button_new_address; ?>">
	</form>
	</div>

</div>
<?php echo $footer; ?> 