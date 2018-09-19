<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="shipping">
	
	<div class="page_content">
	
		<div class="aright">
			( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
		</div>
		
		<br />
	
		<?php if ($error_warning) { ?>
    	<div class="error"><?php echo $error_warning; ?></div>
    	<br />
    	<?php } ?>
    	
    	<?php echo $text_shipping_to; ?><br />
    	( <a href="<?php echo str_replace('&', '&amp;', $change_address); ?>"><?php echo $button_change_address; ?></a> )
    	<br /><br />
    	<strong><?php echo $text_shipping_address; ?></strong><br />
    	<?php echo $address; ?>
    	
    	<br /><br />
    	
	    <?php if ($shipping_methods) { ?>
	    
	    	<strong><?php echo $text_shipping_method; ?></strong>
	   		<br />
	    	<?php echo $text_shipping_methods; ?>
	    	<br /><br />
		      
			<?php foreach ($shipping_methods as $shipping_method) { ?>
			
				<?php if (!$shipping_method['error']) { ?>
				<?php foreach ($shipping_method['quote'] as $quote) { ?>
				
				<div>
				
					<label for="<?php echo $quote['id']; ?>" style="cursor: pointer;">
					<?php if ($quote['id'] == $shipping) { ?>
					<input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" checked="checked" />
					<?php } else { ?>
					<input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" />
					<?php } ?>
					<strong><?php echo $shipping_method['title']; ?>:</strong>                
					<?php echo $quote['text']; ?> - <?php echo $quote['title']; ?>
					</label> 
				
				</div>
				
				<?php } ?>
				<?php } else { ?>
				
				<div class="error"><?php echo $shipping_method['error']; ?></div>
				
				<?php } ?>
			
			<?php } ?>
			
		<?php } ?>

	    <br />
	      
	    <strong><?php echo $text_comments; ?></strong><br />
		<textarea name="comment" rows="8"><?php echo $comment; ?></textarea>
    	
    </div>
    
    <br />
  
  	<div class="page_buttons">
  		<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
  		</form>
 	</div>

</div>
<?php echo $footer; ?> 