<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">

		<div class="aright">
			( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )
		</div>
		
		<br />
		
		<?php if ($success) { ?>
    		<div class="success"><?php echo $success; ?></div>
    		<br />
    	<?php } ?>

		<?php if ($error_warning) { ?>
    		<div class="error"><?php echo $error_warning; ?></div>
    		<br />
    	<?php } ?>
    	
    	<?php echo $text_payment_to; ?><br />
    	( <a href="<?php echo str_replace('&', '&amp;', $change_address); ?>"><?php echo $button_change_address; ?></a> )
    	
    	<br /><br />
    	
    	<strong><?php echo $text_payment_address; ?></strong><br />
    	<?php echo $address; ?>
    	
    	<br /><br />
    	
    	<?php if ($coupon_status) { ?>
	    
	    <strong><?php echo $entry_coupon; ?></strong><br />
	    
	    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
	    <p><?php echo $text_coupon; ?></p>
	    <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
	    &nbsp;
	    <input type="submit" class="input_button" value="<?php echo $button_coupon; ?>">
	    </form>
	      
	    <br /><br />
	    
	    <?php } ?>
    	
    	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="payment">
    	
    	<?php if ($payment_methods) { ?>
    	
    		<strong><?php echo $text_payment_method; ?></strong><br />
			<?php echo $text_payment_methods; ?>
			
			<br /><br />
			
			<?php foreach ($payment_methods as $payment_method) { ?>
			
				<div>
				<?php if ($payment_method['id'] == $payment) { ?>
				<input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" checked="checked" />
				<?php } else { ?>
				<input type="radio" name="payment_method" value="<?php echo $payment_method['id']; ?>" id="<?php echo $payment_method['id']; ?>" />
				<?php } ?>
				<label for="<?php echo $payment_method['id']; ?>" style="cursor: pointer;"><?php echo $payment_method['title']; ?></label>
				</div>
		
			<?php } ?>
		
		<?php } ?>
			
		<br />
		
		<strong><?php echo $text_comments; ?></strong><br />
		<textarea name="comment" rows="8"><?php echo $comment; ?></textarea>
			
	</div>
	
	<br />
	
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
	
		<div class="aright">
			<input type="submit" class="input_button" value="<?php echo $button_continue; ?>">
			</form>
		</div>
	
	</div>
	
	<div id="termsloader" class=""></div>

</div>
<?php echo $footer; ?>

<script type="text/javascript">
var url2load = $('#agree a').attr("href");
$('#termsloader').load(url2load);
</script>