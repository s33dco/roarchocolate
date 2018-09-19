<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
		
		<div class="holder">
		
			<div class="aleft" id="sitemap_left">			

				<strong><?php echo $text_information; ?></strong>
				<br />
				<?php foreach ($informations as $information) { ?>
                <a href="<?php echo str_replace('&', '&amp;', $information['href']); ?>"><?php echo $information['title']; ?></a><br />
                <?php } ?>
                <br />
                <a href="<?php echo str_replace('&', '&amp;', $contact); ?>"><?php echo $text_contact; ?></a><br />
                <a href="<?php echo str_replace('&', '&amp;', $special); ?>"><?php echo $text_special; ?></a><br />
            	<a href="<?php echo str_replace('&', '&amp;', $search); ?>"><?php echo $text_search; ?></a><br />
				<br />
				<a href="<?php echo str_replace('&', '&amp;', $account); ?>"><?php echo $text_account; ?></a><br />
				<a href="<?php echo str_replace('&', '&amp;', $edit); ?>"><?php echo $text_edit; ?></a><br />
                <a href="<?php echo str_replace('&', '&amp;', $password); ?>"><?php echo $text_password; ?></a><br />
                <a href="<?php echo str_replace('&', '&amp;', $address); ?>"><?php echo $text_address; ?></a><br />
                <a href="<?php echo str_replace('&', '&amp;', $history); ?>"><?php echo $text_history; ?></a><br />
                <a href="<?php echo str_replace('&', '&amp;', $download); ?>"><?php echo $text_download; ?></a><br />
                <a href="<?php echo str_replace('&', '&amp;', $cart); ?>"><?php echo $text_cart; ?></a><br />
            	<a href="<?php echo str_replace('&', '&amp;', $checkout); ?>"><?php echo $text_checkout; ?></a>
			
			</div>
		
			<div class="aright" id="sitemap_right">			
				
				<?php echo str_replace('y&p', 'y&amp;p', $category); ?>
			
			</div>
		
		</div>	
	
	<br />	
	
	</div>
 
</div>
<?php echo $footer; ?> 