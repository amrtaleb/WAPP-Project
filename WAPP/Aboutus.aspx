<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="WAPP.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	<title>About Us</title>
	<link rel="icon"
		  href="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
		  type="image/png">

	<!--link to css -->
	<link href="css/styling.css" rel="stylesheet" type="text/css" />
	<link href="css/common.css" rel="stylesheet" type="text/css" />
	<link href="css/Aboutus.css" rel="stylesheet" type="text/css" />
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
                <img src="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
                     width=150px height=80px />
            </a>
        </div><br />

        <nav class="" id="navbar-right">
            <a href="HomePage.aspx">Home</a>
            <a href="Aboutus.aspx">About Us</a>
            <a id="courseLink" hidden="hidden" href="Course.aspx">Course</a>
            <a id="registerLink" href="Register.aspx">Register</a>
            <a href="Help_and_support.aspx">Help and support</a>
            <a id="infoLink" hidden="hidden" href="Personal_Information.aspx">Personal Information</a>
            <a href="javascript:void(0);" class="icon" onclick="burgerNav()">
                <i class="fa fa-bars"></i>
            </a>
        </nav>

        <div id="navbar-user">
            <a href="javascript:void(0);" onclick="check_user()" />
            <a id="ss" onclick="">
                <img src="https://www.mycapacious.com/cap/assets/images/login-icon.png"
                     width=50px height="50px" title="View Profile" />
            </a>
            <span id="login">
                <a href="javascript:void(0);" onclick="login_form()">
                </a>
            </span>
        </div>
    </section>


	<!--page content-->
	<section style="margin:auto; padding-top:80px">
		<div style="background-image:url('https://img.freepik.com/premium-vector/digital-classroom-online-education-kindergarten-backto-school-concept-learning-phone-mobile-website-background-decor-by-blackboard-kid-children-student-desk-table-chair-3d-illustration_255625-30.jpg?w=2000')"
			 class="main bg_img">
			<h1><br><br><span style="color:Orange">SpeakEase</span></h1>
			<p>
				<span style="color:rgb(5, 0, 0)">
					<span style="font-family:'Times New Roman', Times, serif">
						At SpeakEase,
						we believe that every child has the potential to be a world traveler. <br> That's why we created
						our website to make it easier for kids to learn new <br> languages and connect with the world.
			</p></br></span>
		</div>

		<div class="Levels">
			<div class="col-4 col-s-6">
				<div class="card">
					<img src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\img\Level 1.png"
						 alt="Ramesh" style="width:100%">
					<h2>BEGINNER</h2>
					<p class="position">In this level kids will explore:</p>
					<p> [Letters] </p>
				</div>
			</div>

			<div class="col-4 col-s-6">
				<div class="card">
					<img src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\img\Level 2.png"
						 alt="Max" style="width:100%">
					<h2>INTERMEDIATE</h2>
					<p class="position">In this level kids will learn:</p>
					<p> [Basic Vocabulary] </p>
				</div>
			</div>

			<div class="col-4 col-s-6">
				<div class="card">
					<img src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\img\Level 3.png"
						 alt="Yareesha" style="width:100%">
					<h2>EXPERT</h2>
					<p class="position">In this level kids will learn: </p>
					<p> [Sentence and Basic Conversation] </p>
				</div>
			</div>

	</section>


	<div class="col-12" style="padding:0px 20px;background-color:white ;margin:0 auto;overflow:auto;min-height:300px">
		<br><br>
		<div class="col-3 col-s-6">
			<div class="card1">
				<span style="font-family:'Times New Roman', Times, serif">
					<h3>Fun, interactive, and engaging courses.</h3>
				</span>
				<span style="font-family:'Times New Roman', Times, serif">
					<p>
						We understand that learning a new language can be challenging, especially for kids. That's why
						we've made our courses fun, interactive, and engaging.
					</p>
				</span>
			</div>
		</div>

		<div class="col-3 col-s-6">
			<div class="card1">
				<span style="font-family:'Times New Roman', Times, serif">
					<h3>Experienced educators</h3>
				</span>
				<span style="font-family:'Times New Roman', Times, serif">
					<p>
						Our team is made up of experienced educators and language enthusiasts who are dedicated to
						helping kids discover the world through language. With SpeakEase, your child can learn a new
						language at their own pace, with personalized attention and support from their tutor.
					</p>
				</span>
			</div>
		</div>

		<div class="col-3 col-s-6">
			<div class="card1">
				<span style="font-family:'Times New Roman', Times, serif">
					<h3>Native speaker tutors</h3>
				</span>
				<span style="font-family:'Times New Roman', Times, serif">
					<p>
						Our native speaker tutors use a variety of games, songs, and stories to help kids learn a new
						language in a way that's both effective and enjoyable.
					</p>
				</span>
			</div>
		</div>

		<div class="col-3 col-s-6">
			<div class="card1">
				<span style="font-family:'Times New Roman', Times, serif">
					<h3>Join us at SpeakEase</h3>
				</span>
				<span style="font-family:'Times New Roman', Times, serif">
					<p>
						If you're looking for a way to help your child expand their horizons, join us at SpeakEase. We
						can't wait to help your child connect with the world and unleash their full potential.
					</p>
				</span>
			</div>
		</div>
	</div>
	    <!-- Sign Up Form -->
    <div id="signUp" class="form">
        <form class="form-content2" runat="server" id="signUpForm" style="width:890px;">

            <div id="userData" class="form">
                <div class="form-content1" id="dataForm" style="width: 435px">
                    <div style="margin: auto; position: relative;">
                        <!--close button-->
                        <span onclick="" class="close" title="Close Form">&times;</span>
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
                    <asp:linkButton runat="server" CausesValidation="false" OnClick="Unnamed_Click" type="button" Text="Logout"></asp:linkButton>

                </div>
            </div>

        </form>
    </div>

	<!--footer -->
	<footer>
		<div id="footericons">
			<a href="https://www.facebook.com/apuniversity/">
				<img src="img/Facebook.gif" width=60px height=60px
					 title="Facebook" />
			</a>
			<a href="https://www.instagram.com/asiapacificuniversity/?hl=en">
				<img src="img/Insta.gif" width=60px
					 height=60px title="Instagram" />
			</a>
			<a href="https://twitter.com/AsiaPacificU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor">
				<img src="img/Twitter.gif" width=60px height=60px title="Twitter" />
			</a>
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
		<br />
	</footer>
</body>

</html>
<script>
	$('document').ready(function () {

		//AJAX form submission
		var sessionValue = '<%= Session["user_id"] %>';
		if (sessionValue === '') {

		}
		else {
			$('#registerLink').prop("hidden", true);
			$('#courseLink').prop("hidden", false);
			$('#infoLink').prop("hidden", false);
		}

        $('#ss').click(function () {
            var username = '<%= Session["username"] %>';
             var fullname = '<%= Session["Full_Name"] %>';
             var email = '<%= Session["Email_Address"] %>';
             if (sessionValue === '') {
                 window.location.href = 'Register.aspx';

             }
             else {
                 $("#usernameVal").text(username);
                 $("#fullnameVal").text(fullname);
                 $("#emailVal").text(email);
                 $('#userData').show();
             }

         });

	});
</script>
