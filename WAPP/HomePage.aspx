<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WAPP.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <title>SpeakEase for Kids</title>
  <link rel="icon"
    href="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
    type="image/png"/>

  <!--link to css-->
  <link href="css/styling.css" rel="stylesheet" type="text/css" />
  <link href="css/forms.css" rel="stylesheet" type="text/css" />
  <link href="css/homepage.css" rel="stylesheet" type="text/css" />
  <link href="css/common.css" rel="stylesheet" type="text/css" />

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


  <!--page content-->
  <section style="margin:auto; padding-top:85px">
    <div style="background-image:url('img/bg.jpg')" class="main bg_img">
      <span style="color:rgb(23, 1, 1)">
        <h1><br>Welcome to <br>
      </span><span style="color:Orange">SpeakEase for Kids</span> </h1>
      <span style="color:rgb(23, 1, 1)"><span style="font-family:'Times New Roman', Times, serif">
          <p>Welcome to SpeakEase, the perfect place for kids to start learning English, Arabic, Chinese,<br> and Bahasa Meleyu languages!.<br><br>Our website is designed to provide an engaging and effective learning experience for kids<br> who are looking to improve their language skills.</p>
        </span></span>
    </div>


    <video id="Video" preload="" autoplay="" playsinline="" controls runat="server" loop="" width="1215" height="500">
      <source src="Hello%Song%for%Kids%-%Greeting%Song%for%Kids.mp4" type="Video/mp4"/>
      Your browser does not support the video tag.
    </video>

    </div>
    <br><br>
    <div class="content1 bg_img"
      style="background-image:url('https://i.pinimg.com/originals/83/66/72/836672cfc5b85cbbf33ba6f1a82b9bf0.jpg');">
      <h2> <span style="color: orange">SpeakEase Learning Language for Kids</span> </h2>
      <div class="slideshow-container">
        <div class="mySlides">
          <span style="color: #14738f"><q> Assisting children to develop an "ear" for their mother tongue and second
              language to improve their pronunciation and fluency later in life.</q>
        </div>

        <div class="mySlides">
          <span style="color: #14738f"><q>Learn and adopt new languages in a fun and easy way.</q>
        </div>

        <div class="mySlides">
          <span style="color: #14738f"><q>Children's creativity and awareness will developed through this learning
              system. </q>
        </div>

        <div class="mySlides">
          <span style="color: #14738f"><q>Improve a child's ability to develop and explore their understanding of the
              language and what they hear is essential.</q>
        </div></span>

        <a class="prev" onclick="plusSlides(-1)">&#10094; </a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
      </div>

      <div class="dot-container">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        <span class="dot" onclick="currentSlide(4)"></span>
        <span class="dot" onclick="currentSlide(5)"></span>
      </div>
      <button class="btnFree" onclick="$('#signUp').show();">Register for free</button>
      <h3></h3>
    </div>

    <div style="background-color:white;color:#14738f;text-align:center;height:auto;padding:30px;margin:auto">
      <h2>Course</h2>
      <p>Learn and have fun ^^</p>
      <div class="container">
        <div class="card">
          <span style="color: rgb(42, 96, 110)">
            <div class="face face1">
          </span>
          <div class="content">
            <img src="https://www.nrheg.k12.mn.us/cms/lib/MN02205306/Centricity/Domain/696/children.gif">
            <h3>Let's move</h3>
          </div>
        </div>
        <div class="face face2">
          <div class="content">
            <p><video id="Video1" preload="" playsinline="" loop="" controls runat="server" width="290" height="190">
                <source
                  src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\Video\Move! - Dance Song for Kids.mp4"
                  type="Video/mp4">
                Your browser does not support the video tag.
              </video></p>

          </div>
        </div>
      </div>
      <div class="card">
        <div class="face face1">
          <div class="content">
            <img
              src="https://www.verywellfamily.com/thmb/RhIBi8S4qnbuf0H4ETmLklHCp1U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/online-learning-activities-for-kids-during-coronavirus-closures-4800553_final4-8b1c058fd1264a1490ae14a31a69d7c2.gif">
            <h3>Can you sing?</h3>
          </div>
        </div>
        <div class="face face2">
          <div class="content">
            <p><video id="Video2" preload="" playsinline="" loop="" controls runat="server" width="290" height="190">
                <source
                  src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\Video\Action Songs for kids.mp4"
                  type="Video/mp4"></source>
                Your browser does not support the video tag.
              </video></p>
          </div>
        </div>
      </div>
      <div class="card">
        <div class="face face1">
          <div class="content">
            <img
              src="https://cdnb.artstation.com/p/assets/images/images/010/149/495/original/nirmala-dsouza-facial-expressions.gif?1522839479">
            <h3>Face expressions</h3>
          </div>
        </div>
        <div class="face face2">
          <div class="content">
            <video id="Video3" preload="" playsinline="" loop="" controls runat="server" width="290" height="190">
                <source src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\Video\This$Is$A$Happy$Face.mp4" type="Video/mp4"/>
                Your browser does not support the video tag.
              </video>
          </div>
        </div>
      </div>
    </div>
    <p>Let's learn</p>
    <button class="btnView" onclick="window.location.href='Course.php'">Course</button>
    </div>
  </section>

  
  <video id="Video4" preload="" autoplay="" playsinline="" controls runat="server" loop="" width="1215" height="500">
    <source src="C:\Users\DELL\OneDrive - Asia Pacific University\Desktop\HomePage\Video\Healthy Minds.mp4" type="Video/mp4"/>
    Your browser does not support the video tag.
  </video>


<!-- Logged in Form -->

  <!-- Admin Form -->
  <div id="adminSignIn" class="form">
    <form class="form-content1" id="aloginForm" style="width:435px">
      <div style="margin:auto; position:relative;">
        <!--close button-->
        <span onclick="$('#adminSignIn').hide()" class="close" title="Close Form">&times;</span>

        <div style="text-align:center; padding-top:35px;">
          <img style=" border-radius:50%" alt="" src="https://www.mycapacious.com/cap/assets/images/login-icon.png"
            width="120px" height="120px" />
        </div><br><br>

        Password<br>
        <input type="password" id="adminPass" size="41" maxlength="30" required /><br><br><br>

        <p id="incorrectpass" style="color:red;display:none;">INCORRECT PASSWORD</p>

        <button id="adminloginbtn" onclick="adminlogin()" type="button">LOGIN</button>
      </div>
    </form>
  </div>

  <!-- Sign Up Form -->
    
 <form runat="server"  class="form-content2" id="signUpForm" style="width:890px;">
    <div id="userData" class="form">
      
    <div  class="form-content1" id="dataForm" style="width:435px">
      <div style="margin:auto; position:relative;">
        <!--close button-->
        <span onclick="$('#userData').hide()" class="close" title="Close Form">&times;</span>
<%--          <span id="logoutbtn" onclick="$('#userData').hide()" class="logout" title="Logout">Logout</span>--%>

        <div style="text-align:center; padding-top:35px;">
          <img style=" border-radius:50%" alt="" src="https://www.mycapacious.com/cap/assets/images/login-icon.png"
            width="120px" height="120px" />
        </div>

        <br />Username<br />
        <h3  type="text" id="usernameVal" size="41" maxlength="30" />
        <br />Full Name<br />
        <h3  type="text" id="fullnameVal" size="41" maxlength="20" />
        <br />Email Address<br />
        <h3  type="text" id="emailVal" size="41" maxlength="10" />
        
        
  </div>
                <asp:linkButton runat="server" CausesValidation="false" OnClick="Unnamed_Click" type="button" Text="Logout" ></asp:linkButton>  
        
        </div>
           </div>

    </form>
  

  <!--footer -->
  <footer runat="server">
    <div id="footericons">
      <a href="https://www.facebook.com/apuniversity/"><img
          src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png"
          width=60px height=55px title="Facebook" /></a>
      <a href="https://www.instagram.com/asiapacificuniversity/?hl=en"><img src="img/Insta.gif" width=60px height=55px
          title="Instagram" /></a>
      <a href="https://twitter.com/AsiaPacificU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><img
          src="img/Twitter.gif" width=60px height=55px title="Twitter" /></a>
      <br>
      <br>
      <img alt="" src="http://icons.iconarchive.com/icons/pelfusion/long-shadow-media/512/Mobile-Smartphone-icon.png"
        height="35" width="35" style="margin-left:125px" />&nbsp; +60 1161953814 &nbsp;
      <img alt="" src="https://jtechmelaka.com.my/media/material/Contact%20Us/ContactUs-05.png" height="35" width="35"
        style="margin-left:125px" />&nbsp; TP064029@mail.apu.edu.my
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
        var role = '<%= Session["role"] %>';
        if (sessionValue === '') {
            
        }
        else {
            $('#registerLink').prop("hidden", true);
            $('#courseLink').prop("hidden", false);
            $('#infoLink').prop("hidden", false);
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
                $("#usernameVal").text(username);
                $("#fullnameVal").text(fullname);
                $("#emailVal").text(email);
                $('#userData').show();
            }
            
        });
        
    });


    $('#create').click(function () {
        if ($('#msgU').val()) {
            $('#signUp').show();
        }
    });


    //check matching password
    $("#confirmPw, #password2").keyup(function matchPw() {
        var pw1 = $("#password2").val();
        var pw2 = $("#confirmPw").val();
        var btn = $("#create");

        if (pw1 != pw2) {
            $("#validityMsg").text("! Password not matched");
            btn.prop("disabled", true);
        } else {
            $("#validityMsg").text("");
            btn.prop("disabled", false);

        }
    });


</script>
