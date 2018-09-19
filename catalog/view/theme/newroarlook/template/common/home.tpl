<?php echo $header; ?>

	<script type="text/javascript">
		$("#welcome").html("<?php echo $heading_title; ?>");
	</script>

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