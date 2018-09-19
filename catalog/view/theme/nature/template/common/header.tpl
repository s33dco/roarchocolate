<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" xml:lang="<?php echo $lang; ?>">

<head>
<title><?php echo $title; ?></title>
<meta http-equiv="Content-Type" content="text /html; charset=UTF-8" />	
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<base href="<?php echo $base; ?>" />
<link rel="alternate" type="application/rss+xml" title="RSS" href="index.php?route=feed/google_base" />
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>

<?php foreach ($links as $link) { ?>
<link href="<?php echo str_replace('&', '&amp;', $link['href']); ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/nature/stylesheet/stylesheet.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/nature/stylesheet/jquery.fancybox-1.3.1.css" />
<link href='http://fonts.googleapis.com/css?family=Irish+Growler' rel='stylesheet' type='text/css'>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<!--[if lt IE 7]>

	<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
	<script>
	DD_belatedPNG.fix('img, #content .left, #content .right, .box .top');
	</script>
	
<![endif]-->

<script type="text/javascript" src="catalog/view/theme/nature/lib/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="catalog/view/theme/nature/lib/jquery.easySlider1.7.js"></script>
<script type="text/javascript" src="catalog/view/theme/nature/lib/jquery.fancybox-1.3.1.pack.js"></script>
<script type="text/javascript" src="catalog/view/theme/nature/lib/jquery.easing-1.3.pack.js"></script>
<script type="text/javascript" src="catalog/view/theme/nature/lib/jquery-custom.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
</head>

<body>

<div id="container">

	<div id="header">
		<div id="fact">
        <h2>blah blah blah</h2>
        </div>
		<div class="holder">
			
			<div class="aleft">
				<div class="logo">			
					<?php if ($logo) { ?>
	      			<a href="<?php echo str_replace('&', '&amp;', $home); ?>">
	      			<img src="<?php echo $logo; ?>" title="<?php echo $store; ?>" alt="<?php echo $store; ?>" />
	      			</a>
	      			<?php } else { ?>
	      			<a href="<?php echo str_replace('&', '&amp;', $home); ?>">
	      			<img src="<?php echo 'catalog/view/theme/nature/images/logo.png'; ?>" alt="<?php echo $store; ?>" />
	      			</a>
	      			<?php } ?>
      			</div>
			</div>
			
			
			<div class="aright">
			
				<div class="aright aclear">
				
					<ul>
						<li>
						<a class="rounded" href="<?php echo str_replace('&', '&amp;', $home); ?>" title="Home of ROAR Chocolate" id="tab_home">
						<?php echo $text_home; ?></a>
						</li>     		
			      		<?php if (!$logged) { ?>
			      		<li>
			     		<a class="rounded" href="<?php echo str_replace('&', '&amp;', $login); ?>" title="log in to your ROAR Chocolate account" id="tab_login">
			     		<?php echo $text_login; ?></a>
			     		</li>
			      		<?php } else { ?>
			      		<li>     		
			      		<a class="rounded" href="<?php echo str_replace('&', '&amp;', $logout); title ?>" title="log out and see you soon" id="tab_logout">
			      		<?php echo $text_logout; ?></a>
			      		</li>
			      		<?php } ?>
			      		<li>     		
			      		<a class="rounded" href="<?php echo str_replace('&', '&amp;', $account); ?>" id="tab_account">
			      		<?php echo $text_account; ?></a>
			      		</li>
			      		<li>
			      		<a class="rounded" href="<?php echo str_replace('&', '&amp;', $cart); ?>" id="tab_cart">
			      		<?php echo $text_cart; ?></a>
			      		</li>
			      		<li>
			      		<a class="rounded" href="<?php echo str_replace('&', '&amp;', $checkout); ?>" id="tab_checkout">
			      		<?php echo $text_checkout; ?></a>
						</li>
					</ul>
				
				</div>
				
				<div class="aright" id="tools">
				
					<a href="<?php echo str_replace('&', '&amp;', $contact); ?>" title="<?php echo $text_contact; ?>">
					<?php echo $text_contact; ?></a> &nbsp;|&nbsp; 
					<a href="#" onclick="bookmark(document.location, '<?php echo addslashes($title); ?>'); return false;" title="<?php echo $text_bookmark; ?>">
					<?php echo $text_bookmark; ?></a> &nbsp;|&nbsp; 
					<a href="<?php echo str_replace('&', '&amp;', $special); ?>" title="<?php echo $text_special; ?>">
					<?php echo $text_special; ?></a>
					
					<?php if (($currencies) or ($languages)) { ?>
					
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						
						[ 
						
						<?php if ($currencies) { ?>
						
							<?php foreach ($currencies as $currency) { ?>
								<a href="#" onclick="show_tools('currency'); return false;">
					       		<?php if ($currency['code'] == $currency_code) { echo $currency['title']; } ?>
					       		</a>
					    	<?php } ?>					
						
						<?php } ?>
						
						<?php if (($currencies) && ($languages)) { ?>
						
							&nbsp;-&nbsp;
							
						<?php } ?>
						
						<?php if ($languages) { ?>
						
							<?php foreach ($languages as $language) { ?>
								<a href="#" onclick="show_tools('language'); return false;">
					        	<?php if ($language['code'] == $language_code) { echo $language['name']; } ?>
					        	</a>
		              		<?php } ?>
	              		
	              		<?php } ?>
	              		
	              		 ]
              		 
              		 <?php } ?>
					
				</div>
				
			</div>
		
		</div>
		
		<div class="header_tools">
		
				<div id="currency" class="rounded aright">
				
					<?php if ($currencies) { ?>
					
				        <form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="currency_form" class="aleft">			
				        
				        <fieldset>
				        
					        <select name="currency_code" onchange="$('#currency_form').submit();">
					        <?php foreach ($currencies as $currency) { ?>
					        	<option value="<?php echo $currency['code']; ?>" <?php if ($currency['code'] == $currency_code) { echo 'selected="selected"'; } ?>><?php echo $currency['title']; ?></option>
					        <?php } ?>
					        </select>
					        <input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />
				        
				        </fieldset>
				        
				        </form>
				        
	        		<?php } ?>
        		
	        		<div class="aright topaded">
	        		
	        			<a href="#" onclick="show_tools('hideit'); return false;">[x]</a>
	        		
	        		</div>
        		
        		</div>
        		
        		<div id="language" class="rounded aright">
        
	        		<?php if ($languages) { ?>
	        		
	        			<form action="<?php echo str_replace('&', '&amp;', $action); ?>" method="post" enctype="multipart/form-data" id="language_form" class="aleft">
	        			<fieldset>
	        			
		            		<select name="language_code" onchange="$('#language_form').submit();">
		            		<?php foreach ($languages as $language) { ?>
					        	<option value="<?php echo $language['code']; ?>" <?php if ($language['code'] == $language_code) { echo 'selected="selected"'; } ?>><?php echo $language['name']; ?></option>
		              		<?php } ?>
							</select>						
		            		<input type="hidden" name="redirect" value="<?php echo str_replace('&', '&amp;', $redirect); ?>" />
	        			
	        			</fieldset>
	        			
	        			</form>
	        		<?php } ?>
        		
	        		<div class="aright topaded">
	        		
	        			<a href="#" onclick="show_tools('hideit'); return false;">[x]</a>
	        		
	        		</div>
        		
        		</div>
		
		</div>
		
		
