$(document).ready(function(){
	// When the user scrolls down 50px from the top of the document, 
	//resize the navbar's padding and the logo's font size
	$(window).scroll(function(){
		if($(document).scrollTop() > 50 ) {
			$("#navbar").css("padding", "0.5px 0.5px");
			$("#login").hide();
		} else {
			$("#navbar").css("padding", "20px 3px");
			$("#login").show();
		}
		
		// When the user clicks on the button, scroll to the top of the document
		$("#scrollUp").click(function(){
			window.scrollTo({ top: 0, behavior: 'smooth' });
		});
	});
});

//create burger navigation bar by adding the class "responsive"
function burgerNav() {
	var x = $("#navbar-right");
	var y = $("#navbarlogo");
	
	if (x.attr("class") == "") {
		x.addClass("responsive");
		y.hide();
	} else {
    	x.removeClass("responsive");
    	y.show();
	}
}

//redirect user to home page
function toHome() {
	var text = $("#login").text().substring(4);
	if (text == 'Log In'){
		var ask = window.confirm('Please login from the homepage. \n\nRedirecting to Homepage...');
	    if (ask) {
	       window.location.href = "homepage.php";
	    }	
	}else {
		check_user();
	}
}

function login_form(){
	var text = $("#login").text().substring(4);
	if (text == 'Log In'){
		$('#signIn').show();
	}else {
		check_user();
	}
}