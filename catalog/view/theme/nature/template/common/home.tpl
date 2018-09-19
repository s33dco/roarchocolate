<?php echo $header; ?>

	<script type="text/javascript">
		$("#welcome").html("<?php echo $heading_title; ?>");
	</script>

	<!--<div id="slider">
		<ul>				
			<li><a href="#">
			<img src="catalog/view/theme/nature/images/slides/slide-1.jpg" alt="OpenCart Template" />
			</a>
			</li>
			<li><a href="#">
			<img src="catalog/view/theme/nature/images/slides/slide-2.jpg" alt="OpenCart Template" />
			</a>
			</li>
			<li><a href="#">
			<img src="catalog/view/theme/nature/images/slides/slide-3.jpg" alt="OpenCart Template" />
			</a>
			</li>		
		</ul>
	</div>

	<div class="welcome_message">
		Homepage sliders bottom text. Customize it by simply editing the file: 'template/common/home.tpl'
	</div>-->


<?php echo $column_left; ?><?php echo $column_right; ?>

<div>

	<?php if ($welcome) { ?>
	
		<div id="welcome_content">
		
			<?php echo $welcome; ?>
		
		</div>
	
	<?php } ?>

	<?php foreach ($modules as $module) { ?>
	
  		<?php echo ${$module['code']}; ?>
	
	<?php } ?>

</div>
  	
<?php echo $footer; ?> 