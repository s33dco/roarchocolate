<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
	
		<strong><?php echo $heading_title; ?></strong><br />
		( <a href="<?php echo str_replace('&', '&amp;', $continue); ?>"><?php echo $button_continue; ?></a> )
		<br />
	
		<?php foreach ($orders as $order) { ?>
	
		<div class="account_address">
		
			<div class="aleft">
			<strong><?php echo $text_order; ?></strong> #<?php echo $order['order_id']; ?> 
			( <a href="<?php echo str_replace('&', '&amp;', $order['href']); ?>"><?php echo $button_view; ?></a> ) <br />
			<strong><?php echo $text_customer; ?></strong> <?php echo $order['name']; ?><br />
            <strong><?php echo $text_products; ?></strong> <?php echo $order['products']; ?>			
			</div>
		
			<div class="aright">
			<strong><?php echo $text_status; ?></strong> <?php echo $order['status']; ?><br />
			<strong><?php echo $text_date_added; ?></strong> <?php echo $order['date_added']; ?><br />
			<strong><?php echo $text_total; ?></strong> <span class="price"><?php echo $order['total']; ?></span>
			</div>
		
		</div>
		
		<?php } ?>
    
    </div>
    
    <br />
    
    <div class="page_buttons">
    	<?php echo $pagination; ?>
    </div>

</div>
<?php echo $footer; ?> 