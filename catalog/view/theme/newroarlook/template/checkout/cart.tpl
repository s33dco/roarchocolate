<?php
// Redirects to insert page if necessary
if (!empty($_GET['redirect'])){
	header("Location: index.php?route=checkout/shipping");
	exit;
}
?>
<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content" class="rounded">

	<div class="page_title">		
		<div class="aright">
			( <a href="<?php echo str_replace('&', '&amp;', $continue); ?>"><?php echo $button_shopping; ?></a> )
		</div>
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="cart">
	
	<div class="page_content">
		
	    <?php if ($error_warning) { ?>
	    <div class="error"><?php echo $error_warning; ?></div>
	    <br />
	    <?php } ?>
	    
	    <div class="cart_holder">
	    
	    	<div class="cart_title">
	    		<div class="cart_block_title"><?php echo $column_remove; ?></div>
	    		<div class="cart_block_img"><?php echo $column_image; ?></div>
	    		<div class="cart_block_title_name"><?php echo $column_name; ?></div>
	    		<div class="cart_block_title"><?php echo $column_model; ?></div>
	    		<div class="cart_block_title"><?php echo $column_quantity; ?></div>
          		<?php if ($display_price) { ?>
          			<div class="cart_block_title"><?php echo $column_price; ?></div>
	    			<div class="cart_block_title"><?php echo $column_total; ?></div>	  
	    		<?php } ?>  	    	
	    	</div>
	    	
		   	<?php $class = 'odd'; ?>
	        <?php foreach ($products as $product) { ?>
	        <?php $class = ($class == 'even' ? 'odd' : 'even'); ?>
	        <div class="cart_item_<?php echo $class; ?>">
	        
	        	<div class="cart_block">
	        		<input type="checkbox" name="remove[<?php echo $product['key']; ?>]" />
	        	</div>
	        	<div class="cart_block_img">
		        	<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>">
		        	<img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" />
		        	</a>
	        	</div>
	        	<div class="cart_block_name">
	        	<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a>
					
					<?php if ($product['option']) { ?>
					<br />
					<?php } ?>
					
	        		<?php foreach ($product['option'] as $option) { ?>
	              		<span class="light">(<?php echo $option['name']; ?> <?php echo $option['value']; ?>)</span> 
	              	<?php } ?>
		            	              	
	            </div>
	        	<div class="cart_block">
	        	
	        		<?php echo $product['model']; ?>
	        	
	        		<?php if (!$product['stock']) { ?>
		            	<br /><span class="error">***</span>
		            <?php } ?>
	        	
	        	</div>
	        	<div class="cart_block">
	        		<input type="text" name="quantity[<?php echo $product['key']; ?>]" value="<?php echo $product['quantity']; ?>" size="2" />
	        	</div>
	        	<?php if ($display_price) { ?>
	        	<div class="cart_block"><?php echo $product['price']; ?></div>
	        	<div class="cart_block"><?php echo $product['total']; ?></div>
	        	<?php } ?>
	        
	        </div>
	        <?php } ?>
	    
	    
	    </div>
	    
	    <div class="cart_weight">
			
			<?php if ($weight) { ?>
	        <strong><?php echo $text_weight; ?></strong> <?php echo $weight; ?>
	        <?php } ?>
	    
	    </div>
	    
	    <?php if ($display_price) { ?>
	    
	    <div class="cart_subtotal">
	    
	    	<?php foreach ($totals as $total) { ?>
				<strong><?php echo $total['title']; ?></strong> <?php echo $total['text']; ?><br />
          	<?php } ?>
	      
        </div>
        
        <?php } ?>
		
	</div>
	
	<div class="page_buttons">
	
		<div class="aleft">
			<input type="submit" class="input_button" value="<?php echo $button_update; ?>">
			</form>
		</div>
		
		<form action="index.php?route=checkout/cart&redirect=true" method="post" enctype="multipart/form-data" id="checkout">
		<input type="submit" class="input_button" value="<?php echo $button_checkout; ?>">	
		</form>
		
	</div>

</div>
<?php echo $footer; ?> 