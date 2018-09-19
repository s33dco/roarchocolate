<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<strong><?php echo $heading_title; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $continue); ?>"><?php echo $button_continue; ?></a> )
		<br />
		
		
		<div class="account_address">
		
			<div class="account_invoice_block_3">
			<?php if ($invoice_id) { ?><strong><?php echo $text_invoice_id; ?></strong><br /> <?php echo $invoice_id; ?><br /><?php } ?> 
			<strong><?php echo $text_order_id; ?></strong><br /> #<?php echo $order_id; ?><br />
			<strong><?php echo $text_email; ?></strong><br /> <?php echo $email; ?><br />
			<strong><?php echo $text_telephone; ?></strong><br /> <?php echo $telephone; ?><br />
			<?php if ($fax) { ?>
			<strong><?php echo $text_fax; ?>:</strong><br /> <?php echo $fax; ?><br />
			<?php } ?>
			<?php if ($shipping_method) { ?>
			<strong><?php echo $text_shipping_method; ?></strong><br /> <?php echo $shipping_method; ?><br />
			<?php } ?>		
			<strong><?php echo $text_payment_method; ?></strong><br /> <?php echo $payment_method; ?>
			</div>
			
			<div class="account_invoice_block_3">
			<?php if ($shipping_address) { ?>
	        <strong><?php echo $text_shipping_address; ?></strong><br />
	        <?php echo $shipping_address; ?>
	        <?php } ?>&nbsp;
			</div>
		
			<div class="account_invoice_block_3">
			<strong><?php echo $text_payment_address; ?></strong><br />
	        <?php echo $payment_address; ?>			
			</div>	

		</div>
		
		
		<div class="account_address">
		
			<div class="account_invoice_block_5_first">
			<strong><?php echo $text_product; ?></strong>
			</div>
			
			<div class="account_invoice_block_5">
			<strong><?php echo $text_model; ?></strong>
			</div>

			<div class="account_invoice_block_5">
			<strong><?php echo $text_quantity; ?></strong>
			</div>
			
			<div class="account_invoice_block_5">
			<strong><?php echo $text_price; ?></strong>
			</div>
			
			<div class="account_invoice_block_5" style="text-align:right;">
			<strong><?php echo $text_total; ?></strong>
			</div>
			
			<?php foreach ($products as $product) { ?>			
			
			<div class="account_invoice_block_5_first">
			<?php echo $product['name']; ?>
			<?php foreach ($product['option'] as $option) { ?>
			<br />- <?php echo $option['name']; ?> <?php echo $option['value']; ?><br />
            <?php } ?>
			</div>		
			
			<div class="account_invoice_block_5">
			<?php echo $product['model']; ?>
			</div>

			<div class="account_invoice_block_5">
			<?php echo $product['quantity']; ?>
			</div>
			
			<div class="account_invoice_block_5">
			<?php echo $product['price']; ?>
			</div>
			
			<div class="account_invoice_block_5" style="text-align:right;">
			<?php echo $product['total']; ?>
			</div>
			
			<?php } ?>
			
			<div class="account_invoice_total">
			<?php foreach ($totals as $total) { ?>
          	<strong><?php echo $total['title']; ?></strong> <?php echo $total['text']; ?><br />
            <?php } ?>
			</div>
		
		</div>
		
		<?php if ($comment) { ?>
		<div class="account_address">
			<strong><?php echo $text_comment; ?></strong><br />
			<?php echo $comment; ?>
		</div>
		<?php } ?>
		
		<?php if ($historys) { ?>		
		<div class="account_address">
			<strong><?php echo $text_order_history; ?></strong><br /><br />			
			
			<div class="account_invoice_block_3">
			<strong><?php echo $column_date_added; ?></strong>
			</div>
	
			<div class="account_invoice_block_3">
			<strong><?php echo $column_status; ?></strong>
			</div>
	
			<div class="account_invoice_block_3">
			<strong><?php echo $column_comment; ?></strong>
			</div>
			
			<?php foreach ($historys as $history) { ?>
			
			<div class="account_invoice_block_3">
			<?php echo $history['date_added']; ?>
			</div>
	
			<div class="account_invoice_block_3">
			<?php echo $history['status']; ?>
			</div>
	
			<div class="account_invoice_block_3">
			<?php echo $history['comment']; ?>
			</div>
			
			<?php } ?>
		
		</div>
		<?php } ?>
	
	<br />
	
	</div>

</div>
<?php echo $footer; ?> 