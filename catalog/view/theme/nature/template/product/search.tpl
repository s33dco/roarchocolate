<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content">

	<div class="page_title">
		<h1><?php echo $heading_title; ?></h1>
	</div>
	
	<div class="page_content">
		
		<form id="ad_search" action="index.php?=" method="get" enctype="multipart/form-data">
		
		<fieldset>
		
			<input type="hidden" value="product/search" name="route" />
		
			<strong ><?php echo $text_critea; ?></strong>
			<br />
			<?php if ($keyword) { ?>
	        <input type="text" value="<?php echo $keyword; ?>" name="keyword" id="keywordsearch" />
	        <?php } else { ?>
	        <input type="text" value="<?php echo $text_keyword; ?>" name="keyword" id="keywordsearch" onclick="this.value = '';" />
	        <?php } ?>
	        
	        <select id="category_id" name="category_id">
	        	<option value="0"><?php echo $text_category; ?></option>
	            <?php foreach ($categories as $category) { ?>
	            <?php if ($category['category_id'] == $category_id) { ?>
	            <option value="<?php echo $category['category_id']; ?>" selected="selected"><?php echo $category['name']; ?></option>
	            <?php } else { ?>
	            <option value="<?php echo $category['category_id']; ?>"><?php echo $category['name']; ?></option>
	            <?php } ?>
	            <?php } ?>
	        </select>
	        
	        <input type="submit" value="<?php echo $button_search; ?>" class="input_button" />
	        
	        <br />
	        
			<?php if ($description) { ?>
	        <input type="checkbox" name="description" id="description" checked="checked" />
	        <?php } else { ?>
	        <input type="checkbox" name="description" id="description" />
	        <?php } ?>
	        <?php echo $entry_description; ?>
	         
	        <br />
	        
	        <?php if ($model) { ?>
	        <input type="checkbox" name="model" id="model" checked="checked" />
	        <?php } else { ?>
	        <input type="checkbox" name="model" id="model" />
	        <?php } ?>
	        <?php echo $entry_model; ?>
        
        </fieldset>

		</form>
        
        <br />
               
        <h1><?php echo $text_search; ?></h1>
        
		<div class="pagination">
		
			<?php if (isset($products)) { ?>
			
				<div class="aright" id="products_order">
				<?php echo $text_sort; ?>			
				<select name="sort" onchange="location = this.value">
				<?php foreach ($sorts as $sorts) { ?>
				<?php if (($sort . '-' . $order) == $sorts['value']) { ?>
				<option value="<?php echo str_replace('&', '&amp;', $sorts['href']); ?>" selected="selected"><?php echo $sorts['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo str_replace('&', '&amp;', $sorts['href']); ?>"><?php echo $sorts['text']; ?></option>
				<?php } ?>
				<?php } ?>
				</select>
				</div>
			
			<?php } ?>
			
		</div>
		
		<?php if (isset($products)) { ?>
		
		<br />
	    

	      <?php for ($i = 0; $i < sizeof($products); $i = $i + 4) { ?>

	        <?php for ($j = $i; $j < ($i + 4); $j++) { ?>
	          <div class="home_block">
	          <?php if (isset($products[$j])) { ?>
	          <a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>">
	          <img src="<?php echo $products[$j]['thumb']; ?>" alt="<?php echo $products[$j]['name']; ?>" /></a>
	          <br />
	          <a href="<?php echo str_replace('&', '&amp;', $products[$j]['href']); ?>" title="<?php echo $products[$j]['name']; ?>">
	          <?php echo $products[$j]['name']; ?></a>
	          <br />
	          <span class="price_option"><?php echo $products[$j]['model']; ?></span><br />
	          <?php if ($display_price) { ?>
	          <?php if (!$products[$j]['special']) { ?>
	          <span class="price"><?php echo $products[$j]['price']; ?></span><br />
	          <?php } else { ?>
	          <span class="price_crossed"><?php echo $products[$j]['price']; ?></span>
	          <span class="price_special"><?php echo $products[$j]['special']; ?></span>
	          <?php } ?>
	          <?php } ?>
	          
	          <?php } ?>
	          </div>
	          
	        <?php } ?>

	      <?php } ?>

      
            
	</div>
	
	<div class="pagination">
		
		<?php echo $pagination; ?>
		<?php } else { ?>
	    <br /><strong><?php echo $text_empty; ?></strong>
	    <br /><br />
	    <?php }?>
			
	</div>  

</div>

<?php echo $footer; ?> 