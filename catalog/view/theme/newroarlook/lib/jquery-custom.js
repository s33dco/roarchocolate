$(document).ready(function(){

	// Shows Product Order Select Box only if JS is enabled - Otherwise it would not work anyway
	$("#products_order").css('display','block');
	// Shows Send Review Box only if JS is enabled - Otherwise it would not work correctly anyway
	$("#review_holder").css('display','block');
	$("#review_buttons").css('display','block');

	// Show & Start Homepage Slider
	$("#slider").css('display','block');
	$("#slider").easySlider();
	
	// Main menu active url change styles
	var active_color = '#370c0f';
	var link_color = '#ffd500';
	var anitime = 2000;
	route = getURLVar('route');
	if (!route) {
		$('#tab_home').addClass("header_active", anitime);
		$('#tab_home').css("background-color", active_color);
		$('#tab_home').css("color", link_color);
	} else {
		part = route.split('/');
		
		if (route == 'common/home') {
			$('#tab_home').addClass("header_active", anitime);
			$('#tab_home').css("background-color", active_color);
			$('#tab_home').css("color", link_color);
		} else if (route == 'account/login') {
			$('#tab_login').addClass("header_active", anitime);
			$('#tab_login').css("background-color", active_color);
			$('#tab_login').css("color", link_color);
		} else if (part[0] == 'account') {
			$('#tab_account').addClass("header_active", anitime);
			$('#tab_account').css("background-color", active_color);
			$('#tab_account').css("color", link_color);
		} else if (route == 'checkout/cart') {
			$('#tab_cart').addClass("header_active", anitime);
			$('#tab_cart').css("background-color", active_color);
			$('#tab_cart').css("color", link_color);
		} else if (part[0] == 'checkout') {
			$('#tab_checkout').addClass("header_active", anitime);
			$('#tab_checkout').css("background-color", active_color);
			$('#tab_checkout').css("color", link_color);
		} else {
			// For exceptions
		}
	}

	// Fancybox window style
	$("a#fancybox").fancybox({
		'titleShow'		: false,
		'transitionIn'	: 'elastic',
		'transitionOut'	: 'elastic',
		'titleShow'		: 'true',
		'hideOnContentClick' : 'true',
		'overlayColor'	: '#FFF',
		'overlayOpacity' : '0.8',
		'titlePosition'	: 'outside'
	});
	
	// Add to cart functions
	route = document.location;
	$replaced_text = $('#add_to_cart').val();
	$('#add_to_cart').click(function () {
		$.ajax({
			type: 'post',
			url: 'index.php?route=module/cart/callback',
			dataType: 'html',
			data: $('#product :input'),
			success: function (html) {
				$('#module_cart .module_content').html(html);
			},	
			complete: function () {
				var image = $('#image').offset();
				var cart  = $('#module_cart').offset();
	
				$('#image').before('<img src="' + $('#image').attr('src') + '" id="temp" style="position: absolute; top: ' + image.top + 'px; left: ' + image.left + 'px;" />');
	
				params = {
					top : cart.top + 'px',
					left : cart.left + 'px',
					opacity : 0.0,
					width : $('#module_cart').width(),  
					heigth : $('#module_cart').height()
				};		
	
				$('#temp').animate(params, 'slow', false, function () {
					$('#temp').remove();
				});		
			}			
		});			
	});			
	
});

// Shows terms and conditions
function termsloader(){
	$('#termsloader').slideToggle();
	$('html, body').animate({scrollTop: $("#anchorpal").offset().top}, 'slow');
}
// Shows terms and conditions END

// Shows Tools on Main Bar
function show_tools(action){
	if (action == 'currency'){
		$("#language").hide();
		$("#currency").toggle();
	}
	if (action == 'language'){
		$("#currency").hide();
		$("#language").toggle();
	}
	if (action == 'hideit'){
		$("#currency").hide();
		$("#language").hide();
	}
}
// Shows Tools on Main Bar END

// Shows Categories on Search Bar
function search_cats(keyword){
	$("#categories").css('display','inline');
	if (keyword == 'removeit'){
	$("#keyword").val('');
	}
}
// Shows Categories on Search Bar END
	
// Scrolls smoothly to the top of the page
function scroll_up(){
	$('html, body').animate({scrollTop:0}, 'slow');
}
// Scrolls smoothly to the top of the page END

// Shows Welcome Message on Header_path bar
function show_welcome(wmessage){
	$('#welcome').html(wmessage);
}
// Shows Welcome Message on Header_path bar END

//// Default JS

// URL Bookmarking Function
function bookmark(url, title) {
	if (window.sidebar) { // firefox
    window.sidebar.addPanel(title, url, "");
	} else if(window.opera && window.print) { // opera
		var elem = document.createElement('a');
		elem.setAttribute('href',url);
		elem.setAttribute('title',title);
		elem.setAttribute('rel','sidebar');
		elem.click();
	} else if(document.all) {// ie
   		window.external.AddFavorite(url, title);
	}
}
// URL Bookmarking Function END

// Gets current Url
function getURLVar(urlVarName) {
	var urlHalves = String(document.location).toLowerCase().split('?');
	var urlVarValue = '';
	
	if (urlHalves[1]) {
		var urlVars = urlHalves[1].split('&');

		for (var i = 0; i <= (urlVars.length); i++) {
			if (urlVars[i]) {
				var urlVarPair = urlVars[i].split('=');
				
				if (urlVarPair[0] && urlVarPair[0] == urlVarName.toLowerCase()) {
					urlVarValue = urlVarPair[1];
				}
			}
		}
	}
	
	return urlVarValue;
}
// Gets current Url END