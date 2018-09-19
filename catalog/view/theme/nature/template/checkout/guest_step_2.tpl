<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		
		<div class="aright">
			( <a href="<?php echo str_replace('&', '&amp;', $back); ?>"><?php echo $button_back; ?></a> )	
		</div>
	
		<h1><?php echo $heading_title; ?></h1>
		
	</div>
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="guest">
	
	<div class="page_content">
	
		<?php if ($error_warning) { ?>
    	<div class="error"><?php echo $error_warning; ?></div>
    	<br />
    	<?php } ?>
    	
    	
		<?php if ($shipping_methods) { ?>
		
			<strong><?php echo $text_shipping_method; ?></strong><br />
			<?php echo $text_shipping_methods; ?>
			<br /><br />
			
			<?php foreach ($shipping_methods as $shipping_method) { ?>
	    	
	    		<?php if (!$shipping_method['error']) { ?>
		        
		        <?php foreach ($shipping_method['quote'] as $quote) { ?>
		          	
		          	<div>
			        <label for="<?php echo $quote['id']; ?>">
			        <?php if ($quote['id'] == $shipping) { ?>
			        <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" checked="checked" />
			        <?php } else { ?>
			        <input type="radio" name="shipping_method" value="<?php echo $quote['id']; ?>" id="<?php echo $quote['id']; ?>" />
			        <?php } ?>
			        
			        
			        <strong><?php echo $shipping_method['title']; ?>:</strong> 
			        <?php echo $quote['text']; ?>
			        
					- <?php echo $quote['title']; ?>
					</label>
					</div>
					
					<?php } ?>
		        
		        <?php } else { ?>

				<div class="error">
				<?php echo $shipping_method['error']; ?></div>
				<?php } ?>
		        
		        <?php } ?>
      
		<?php } ?>
		
		<br />
		
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
		
		<a onclick="$('#guest').submit();" class="button"><span><?php echo $button_continue; ?></span></a>	
	
	</div>
	
	</form>
	
	<div id="termsloader" class=""></div>

</div>
<?php echo $footer; ?> 

<script type="text/javascript">
var url2load = $('#agree a').attr("href");
$('#termsloader').load(url2load);
</script>