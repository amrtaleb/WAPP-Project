<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Personal_Information.aspx.cs" Inherits="WAPP.Personal_Information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Personal Information</title>
    <link rel="icon"
        href="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
        type="image/png">

    <!--link to css-->
    <link href="css/styling.css" rel="stylesheet" type="text/css" />
    <link href="css/forms.css" rel="stylesheet" type="text/css" />
    <link href="css/login.css" rel="stylesheet" type="text/css" />
    <link href="css/Personal_Info.css" rel="stylesheet" type="text/css" />
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
      <a id="registerLink" href="HomePage.aspx" onload="$('#signUp').show();">Register</a>
      <a href="Help_and_support.aspx">Help and support</a>
      <a id="infoLink" hidden="hidden" href="Personal_Information.aspx">Personal Information</a>
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



    <!-- Page content -->
    <div class="row" >
        <div class="col-12" >
            <h1>Personal Information</h1>
        </div>
    </div>
    <div class="row" style="background-image:url('https://i.pinimg.com/originals/d1/e4/00/d1e40078e2dc1907a177a623d6c6cb49.jpg');height:100vh;">
        <div class="col-4" >
            <h2>Profile Picture</h2>
            <img src="https://mindoverlearning.com/media/shutterstock_127674785.jpg?x69101" style= height:10vh alt="Profile Picture" class="profile-pic">
            <input type="file" accept="image/*" class="upload-button">
        </div>
        <div class="col-8">
            <h2>Basic Information</h2>
            <form runat="server">
                <label for="Full_Name">Full_Name:</label>
                <asp:TextBox runat="server" type="text" id="Full_Name" name="Full_Name" ></asp:TextBox>

                <label for="Username">Username:</label>
                <asp:TextBox runat="server" type="text" id="Username" name="Username" ></asp:TextBox>
                
            <asp:label runat="server" id="msgU" style="color:red;font-size:x-small;font-weight:lighter"></asp:label>

                <label for="Email_Address">Email_Address:</label>
                <asp:TextBox runat="server" type="Email_Address" id="Email_Address" name="Email_Address" ></asp:TextBox>

                <label for="Contact_No">Contact_No:</label>
                <asp:TextBox runat="server" type="Contact_No" id="Contact_No" name="Contact_No" ></asp:TextBox>

                <label for="Date_of_Birth">Date_of_Birth:</label>
                <asp:TextBox runat="server" type="date" id="Date_of_Birth" name="Date_of_Birth"></asp:TextBox>

                <label for="gender">Gender:</label>
                <select id="gender" name="gender">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select><br>

                <asp:button runat="server" Text="Save" OnClick="Save_Click" name="save" type="submit"></asp:button>
            </form>
        </div>
    </div>

    <div class="row">
        <div class="col-12" style="background-image:url('https://i.pinimg.com/originals/81/c1/29/81c129614c279b5a8c070c1fca6038ef.jpg');height:50vh;">
            <h2>Check Result</h2>
                <p>Result</p>
        </div>
    </div>


    <!--footer -->
    <footer>
        <div id="footericons">
            <a href="https://www.facebook.com/apuniversity/"><img
                    src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png"
                    width=60px height=55px title="Facebook" /></a>
            <a href="https://www.instagram.com/asiapacificuniversity/?hl=en"><img src="img/Insta.gif" width=60px
                    height=55px title="Instagram" /></a>
            <a href="https://twitter.com/AsiaPacificU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><img
                    src="img/Twitter.gif" width=60px height=55px title="Twitter" /></a>
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
        });
    </script>
