<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Help_and_support.aspx.cs" Inherits="WAPP.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Help and support</title>
	<link rel="icon"
		href="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
		type="image/png">

	<!--link to hamburger icon-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<!--link to font-->
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@700&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat" rel="stylesheet">

	<!--link to css -->
	<link href="css/styling.css" rel="stylesheet" type="text/css" />
	<link href="css/Help&support.css" rel="stylesheet" type="text/css" />
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/homepage.css" rel="stylesheet" type="text/css" />
	<link href="css/forms.css" rel="stylesheet" type="text/css" />

	<!--link to jquery-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
	<script src="js/jQeury.js"></script>
	<script src="js/homepage.js"></script>
</head>

<body>
	<!--scroll to top button-->
	<button id="scrollUp" title="Go To Top">^</button>

	<!--navbar -->
	<section id="navbar">
    <div id="navbarlogo">
      <a href="HomePage.aspx">
          <img
              src="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
              width=150px height=80px /> </a>
    </div><br />

    <nav class="" id="navbar-right">
      <a href="HomePage.aspx">Home</a>
      <a href="Aboutus.aspx">About Us</a>
      <a id="courseLink" hidden="hidden" href="Course.aspx">Course</a>
      <a id="registerLink" href="Register.aspx">Register</a>
      <a href="Help_and_support.aspx">Help and support</a>
      <a id="infoLink" hidden="hidden" href="Personal_Information.aspx">Personal Information</a>
		<a id="admin" hidden="hidden" href="AdminHomePage.html">Admin</a>
      <a href="javascript:void(0);" class="icon" onclick="burgerNav()">
        <i class="fa fa-bars"></i></a>
    </nav>

    <div id="navbar-user">
      <a href="javascript:void(0);" onclick="check_user()"/>
        <a id="ss" onclick=""><img src="https://www.mycapacious.com/cap/assets/images/login-icon.png"
            width=50px height="50px" title="View Profile" /></a>
        <span id="login"><a href="javascript:void(0);" onclick="login_form()">
          </a></span>
    </div>
  </section>


	<!--write ur page content here -->

	<section style="margin:auto; padding-top:55px;text-align:center">
		<!--Title-->
		<div style="background-image:url('https://i.pinimg.com/originals/e0/51/b9/e051b92e92f7ff63ec83678a655c8b41.jpg');height:70vh;"
			class="bg_img">
			<h1 style="color:#14738f;"><br>Frequently Asked<br> Questions</h1>
		</div>
		<br>
		<!--Q&A -->
		<span style="font-family:'Times New Roman', Times, serif">
			<h2 style="color:#ffa500;">Common Questions about SpeakEase for Kids</h2>
		</span>
		<br><br>
		<div>
			<button class="accordion">Who can join? <i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;"> We welcome all Kids! Regardless of your race, religion, age.</p>
				</span>
			</div>
			<br><br>
			<button class="accordion">What is SpeakEase?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">	SpeakEase is a language learning website designed specifically for kids. It offers a fun and interactive platform for children to learn and practice various languages, including English, Arabic, Chinese, and Bahasa Melayu.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">How does SpeakEase work?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">SpeakEase uses a variety of tools and techniques to help children learn a new language. These include interactive games, videos, quizzes, and exercises that are designed to be engaging and entertaining while also teaching important language skills.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">What ages is SpeakEase appropriate for?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">SpeakEase is designed for kids aged 6-12 years old. However, children of all ages can benefit from the website's interactive and engaging language learning tools.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">How to be a member?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">Go to 'Login' form then click on 'Register Now!'</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">Have you got any apps?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">	No, we currently do not provide any mobile apps</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">Is SpeakEase safe for children to use?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;"> Yes, SpeakEase is a safe and secure website that is designed specifically for children. The site's content is age-appropriate and free from any harmful or inappropriate material.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">How can parents track their child's progress on SpeakEase?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">SpeakEase provides parents with a dashboard that allows them to monitor their child's progress and track their language learning achievements. Parents can view their child's quiz scores, game progress, and other learning metrics to see how their child is progressing in their language learning journey.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">How can I download the songs, stories and games?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">	It is not possible to download the animated songs, stories and games for copyright reasons.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion">I want to comment on the site but I don't know how.<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">	You must be a member to comment. Only parants can comment on the content on the kids' site.</p>
				</span>
			</div>
			<br><br>

			<button class="accordion"> Is SpeakEase a free website?<i class="fa fa-plus"></i></button>
			<div class="panel">
				<span style="font-family:'Times New Roman', Times, serif">
					<p style="color:#000607;">	Yes, SpeakEase offers free membership option. The free membership gives users access to all of the site's features and content.</p>
				</span>
			</div>
			<br><br>
		</div>
		<br><br><br>

	</section>
			
	<div hidden="hidden" id="feedback" style="background-image:url('http://www.acvv.co.za/pesuid/wpimages/wp59ab8fe1_05_06.jpg');height:90vh;"
		class="bg_img">
			<form runat="server" method="post" class="form-content2" id="signUpForm" style="width:890px;" >

		<h1 style="color:#14738f;"><br>SpeakEase<br> Feedback Form</h1>
		<span style="color:rgb(23, 1, 1)"><span style="font-family:'Times New Roman', Times, serif">
				<p>We value your feedback! Let us know how we're doing and how we can improve <br><br> our SpeakEase
					program for kids.</p>
			</span></span>
		<span style="color:rgb(23, 1, 1)"><span style="font-family:'Times New Roman', Times, serif"><label
						for="name">User Name:</label></span></span>
			<input type="text" id="name" name="name"/><br />

			<span style="color:rgb(23, 1, 1)"><span style="font-family:'Times New Roman', Times, serif"><label
						for="email">Email:</label></span></span>
			<input type="email" id="email" name="email"/><br />
			<span style="color:rgb(23, 1, 1)"><span style="font-family:'Times New Roman', Times, serif"><label
						for="rating">Overall Rating:</label></span></span>
			<select id="rating" runat="server" name="rating">
				<option value="5">5 - Excellent</option>
				<option value="4">4 - Good</option>
				<option value="3">3 - Average</option>
				<option value="2">2 - Poor</option>
				<option value="1">1 - Very Poor</option>
			</select><br />

			<span style="color:rgb(23, 1, 1)"><span style="font-family:'Times New Roman', Times, serif"><label
						for="comments">Comments:</label></span></span>
			<textarea id="comments" runat="server" name="comments" rows="5" cols="40" required></textarea><br/><br/>

			<asp:Button runat="server" Text="Submit Feedback" OnClick="Send_Click" type="submit" value="Submit Feedback"></asp:Button>
			 

			<div id="userData" class="form">
                    <div class="form-content1" id="dataForm" style="width: 435px">
                        <div style="margin: auto; position: relative;">
                            <!--close button-->
                            <span onclick="$('#userData').hide()" class="close" title="Close Form">&times;</span>
                            <%--          <span id="logoutbtn" onclick="$('#userData').hide()" class="logout" title="Logout">Logout</span>--%>

                            <div style="text-align: center; padding-top: 35px;">
                                <img style="border-radius: 50%" alt="" src="https://www.mycapacious.com/cap/assets/images/login-icon.png"
                                    width="120px" height="120px" />
                            </div>

                            <br />
                            Username<br />
                            <h3 type="text" id="usernameVal" size="41" maxlength="30" />
                            <br />
                            Full Name<br />
                            <h3 type="text" id="fullnameVal" size="41" maxlength="20" />
                            <br />
                            Email Address<br />
                            <h3 type="text" id="emailVal" size="41" maxlength="10" />


                        </div>
                <asp:linkButton runat="server" CausesValidation="false" OnClick="Unnamed_Click" type="button" Text="Logout" ></asp:linkButton>  
        
        </div>
           </div>
		
	</form>
	</div>
		


	<!--footer -->
	<footer>
		<div id="footericons">
			<a href="https://www.facebook.com/apuniversity/"><img
					src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png"
					width=60px height=60px title="Facebook" /></a>
			<a href="https://www.instagram.com/asiapacificuniversity/?hl=en"><img src="img/Insta.gif" width=60px
					height=60px title="Instagram" /></a>
			<a href="https://twitter.com/AsiaPacificU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><img
					src="img/Twitter.gif" width=60px height=60px title="Twitter" /></a>
			<br>
			<br>
			<img alt=""
				src="http://icons.iconarchive.com/icons/pelfusion/long-shadow-media/512/Mobile-Smartphone-icon.png"
				height="35" width="35" style="margin-left:125px" />&nbsp; +60 1161953814 &nbsp;
			<img alt="" src="https://jtechmelaka.com.my/media/material/Contact%20Us/ContactUs-05.png" height="35"
				width="35" style="margin-left:125px" />&nbsp; TP064029@mail.apu.edu.my
			<br>
			<br>
			<br>
			Copyright © 2023 SpeakEase kids education. All Rights Reserved.
		</div>
	</footer>


	<script>
		$('document').ready(function () {

			//AJAX form submission
			var sessionValue = '<%= Session["user_id"] %>';
            var username = '<%= Session["username"] %>';
            var fullname = '<%= Session["Full_Name"] %>';
			var email = '<%= Session["Email_Address"] %>';
            var role = '<%= Session["role"] %>';
			if (sessionValue === '') {

			}
			else {
				$('#registerLink').prop("hidden", true);
				$('#courseLink').prop("hidden", false);
				$('#infoLink').prop("hidden", false);
				$('#feedback').prop("hidden", false);
				$('#name').prop("value", username);
				$('#email').prop("value", email);
                if (role === 'Admin') {

                    $('#admin').prop("hidden", false);
                }
			}
            $('#ss').click(function () {
                var username = '<%= Session["username"] %>';
                        var fullname = '<%= Session["Full_Name"] %>';
                        var email = '<%= Session["Email_Address"] %>';
                        if (sessionValue === '') {
                            window.location.href = 'Register.aspx';

                        }
                        else {
                            $('#registerLink').prop("hidden", true);
                            $("#usernameVal").text(username);
                            $("#fullnameVal").text(fullname);
                            $("#emailVal").text(email);
                            $('#userData').show();
                        }

                    });

		});

        var acc = document.getElementsByClassName("accordion");
        var i;
        var sign = document.getElementsByTagName("i");

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                /* Toggle between adding and removing the "active" class,
                to highlight the button that controls the panel */
                this.classList.toggle("active");

                /* Toggle between hiding and showing the active panel */
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }

    </script>

</body>
</html>
