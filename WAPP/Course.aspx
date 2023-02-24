<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Course.aspx.cs" Inherits="WAPP.Course" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Course</title>
    <link rel="icon"
          href="https://marketplace.canva.com/EAFDHYDiMAM/4/0/1600w/canva-colorful-cute-kids-playground-%26-kindergarten-logo-n9HJdV3E-q4.jpg"
          type="image/png">

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
            <a id="ss">
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
    <h1>Course</h1>
    <h2>Let's have fun to learn 4 languages, Arabic, Bahasa Melayu, Chinese and English with SpeakEase!</h2>
    <h3>Choose a language to start your learning journey!</h3>

    <table class="center">
        <tr>
            <td>
                <a href="Arabic.aspx">
                    <img src="Arabic.jpg" alt="Arabic">
                </a>
            </td>
            <td>
                <a href="Arabic.aspx">Arabic</a>
                <br />
                <p>
                    Arabic language is common use in North Africa, most of the Arabian Peninsula, and other parts of the
                    Middle East, also known as a Semitic language.
                </p>
            </td>
        </tr>

        <tr>
            <td>
                <a href="BM.aspx">Bahasa Melayu</a>
                <br />
                <p>
                    Bahasa Melayu is an austronesian language as the official language of Brunei, Indonesia, Malaysia, and
                    Singapore, and that is also spoken in East Timor and parts of the Philippines and Thailand.
                </p>
            </td>
            <td>
                <a href="BM.aspx">
                    <img src="Malay.jpg" alt="Arabic">
                </a>
            </td>
        </tr>
        <tr>
            <td>
                <a href="Chinese.aspx">
                    <img src="Chinese.jpg" alt="Chinese">
                </a>
            </td>
            <td>
                <a href="Chinese.aspx">Chinese</a>
                <br />
                <p>
                    Chinese language is one of the six official languages used by UN (United Nations) and now has
                    earned itself greater status in the World, which also known as Mandarin and in Chinese called as
                    'Hanyu' or 'Putonghua'.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <a href="English.aspx">English</a>
                <br />
                <p>
                    English language is an Indo-European language in the West Germanic language group which is widely
                    considered to be the lingua franca of the world and is the standard language in a wide variety of fields,
                    including computer coding, international business, and higher education.
                </p>
            </td>
            <td>
                <a href="English.aspx">
                    <img src="English.jpg" alt="Arabic">
                </a>
            </td>
        </tr>
    </table>
    <br />
    <!-- Login Form -->
   
    <!-- Admin Form -->
    <div id="adminSignIn" class="form">
        <form  class="form-content1" id="aloginForm" style="width:435px">
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
    <footer>
        <div id="footericons">
            <a href="https://www.facebook.com/apuniversity/">
                <img src="https://cdn4.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-facebook-circle-512.png"
                     width=60px height=55px title="Facebook" />
            </a>
            <a href="https://www.instagram.com/asiapacificuniversity/?hl=en">
                <img src="img/Insta.gif" width=60px height=55px
                     title="Instagram" />
            </a>
            <a href="https://twitter.com/AsiaPacificU?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor">
                <img src="img/Twitter.gif" width=60px height=55px title="Twitter" />
            </a>
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
            var username = '<%= Session["username"] %>';
            var fullname = '<%= Session["Full_Name"] %>';
            var email = '<%= Session["Email_Address"] %>';
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