<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">

    	<?php if ($success) { ?>
   	 	<div class="login_success"><?php echo $success; ?></div>
   	 	<br />
    	<?php } ?>
    	
    	<?php if ($error_warning) { ?>
    	<div class="error"><?php echo $error_warning; ?></div>
    	<br />
    	<?php } ?>
    	
		<div class="account_invoice_block_3">
		
			<?php if ($shipping_method) { ?>
            <strong><?php echo $text_shipping_method; ?></strong><br />
            <?php echo $shipping_method; ?><br />
            ( <a href="<?php echo str_replace('&', '&amp;', $checkout_shipping); ?>"><?php echo $text_change; ?></a> )
            <br />
            <br />
            <?php } ?>
            <strong><?php echo $text_payment_method; ?></strong><br />
            <?php echo $payment_method; ?><br />
            ( <a href="<?php echo str_replace('&', '&amp;', $checkout_payment); ?>"><?php echo $text_change; ?></a> )
		
		
		</div>
		
		<div class="account_invoice_block_3">
			<?php if ($shipping_address) { ?>
			<strong><?php echo $text_shipping_address; ?></strong><br />
			<?php echo $shipping_address; ?><br />
            ( <a href="<?php echo str_replace('&', '&amp;', $checkout_shipping_address); ?>"><?php echo $text_change; ?></a> )
			<?php } ?>&nbsp;
		</div>
		
		<div class="account_invoice_block_3">
			<strong><?php echo $text_payment_address; ?></strong><br />
			<?php echo $payment_address; ?><br />
            ( <a href="<?php echo str_replace('&', '&amp;', $checkout_payment_address); ?>"><?php echo $text_change; ?></a> )
		</div>
	
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	
	<div class="holder">
		<strong>
		<div class="account_invoice_block_5_first"><?php echo $column_product; ?></div>
		<div class="account_invoice_block_5"><?php echo $column_model; ?></div>
		<div class="account_invoice_block_5"><?php echo $column_quantity; ?></div>
		<div class="account_invoice_block_5"><?php echo $column_price; ?></div>
		<div class="account_invoice_block_5"><?php echo $column_total; ?></div>
		</strong>
	</div>
	
	<?php foreach ($products as $product) { ?>
		<div class="holder">
			<div class="account_invoice_block_5_first">
				<a href="<?php echo str_replace('&', '&amp;', $product['href']); ?>"><?php echo $product['name']; ?></a>
				<?php foreach ($product['option'] as $option) { ?>
				<br />
				<span class="light">- <?php echo $option['name']; ?> <?php echo $option['value']; ?></span>
				<?php } ?>	
			</div>
			<div class="account_invoice_block_5"><?php echo $product['model']; ?></div>
			<div class="account_invoice_block_5"><?php echo $product['quantity']; ?></div>
			<div class="account_invoice_block_5"><?php echo $product['price']; ?></div>
			<div class="account_invoice_block_5"><?php echo $product['total']; ?></div>
		</div>
	<?php } ?>
	
	<div class="account_invoice_total">
	<?php foreach ($totals as $total) { ?>		
		<strong><?php echo $total['title']; ?></strong>
		<?php echo $total['text']; ?><br />		
	<?php } ?>
	</div>
	
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	
	<?php if ($coupon_status) { ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="coupon">
        <strong><?php echo $text_coupon; ?></strong>
        <div style="text-align: right;"><?php echo $entry_coupon; ?>&nbsp;
        <input type="text" name="coupon" value="<?php echo $coupon; ?>" />
        &nbsp;<a onclick="$('#coupon').submit();" class="button"><span><?php echo $button_coupon; ?></span></a></div>
      </form>
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
	<div class="separator_5px"></div>
    <?php } ?>
	
	<?php if ($comment) { ?>
    <strong><?php echo $text_comment; ?></strong><br />
    <?php echo $comment; ?>
    <?php } ?>
	
	<br /><br />
	
	</div>
	
	<div class="page_buttons">
		<div id="payment"><?php echo $payment; ?></div>
	</div>

</div>
<?php echo $footer; ?> 