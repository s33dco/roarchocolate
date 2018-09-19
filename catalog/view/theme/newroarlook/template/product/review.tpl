<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>
<div class="review"><strong><?php echo $review['author']; ?></strong> | <img src="catalog/view/theme/nature/images/stars/stars_<?php echo $review['rating'] . '.png'; ?>" alt="<?php echo $review['stars']; ?>" /><br />
  <?php echo $review['date_added']; ?><br />
  <?php echo $review['text']; ?>
</div>
<?php } ?>
<div class="pagination"><?php echo $pagination; ?></div>
<?php } else { ?>
<div class="content"><?php echo $text_no_reviews; ?></div>
<?php } ?>
