<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="WAPP.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>AdminPage</title>

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
    <style type="text/css">
        .auto-style3 {
            height: 1050px;
            margin-top: 175px;
        }

        table.list {
            width: 90%;
            height: 50%;
            position: relative;
            top: 4%;
            margin-left: auto;
            margin-right: auto;
            border-collapse: collapse;
            border: 2px solid black;
            background-color: white;
        }

        table.user {
            width: 50%;
            height: 20%;
            position: relative;
            top: 10%;
            margin-left: auto;
            margin-right: auto;
        }

        th {
            background-color: lightgrey;
            width: fit-content;
            height: 10%;
            border-collapse: collapse;
            border: 2px solid black;
        }

        .deleteBtn {
            position: absolute;
            top: 1100px;
            left: 30%;
            cursor: pointer;
            border-radius: 15px;
            border-color: white;
            border-style: outset;
            width: 200px;
            height: 60px;
        }

        .saveBtn {
            position: absolute;
            top: 1100px;
            right: 30%;
            cursor: pointer;
            border-radius: 15px;
            border-color: white;
            border-style: outset;
            width: 200px;
            height: 60px;
        }
    </style>
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
    <form id="form1" runat="server">
       
        <div style="overflow-y:auto;background-image:url('https://i.pinimg.com/originals/d1/e4/00/d1e40078e2dc1907a177a623d6c6cb49.jpg');" class="auto-style3">
            <br />
              <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <div class="form-group">
                    <div class="table-responsive">
                        <asp:GridView ID="gv" Width="100%" AutoGenerateSelectButton="true" SelectedRowStyle-BackColor="Green" OnSelectedIndexChanged="gv_SelectedIndexChanged" runat="server"></asp:GridView>
                    </div>
                </div>
            </div>
        </div>
         
       
            <table class="user">
                <tr>
                <td>
                    <asp:Label ID="lblmessage" runat="server"></asp:Label>
            
                </td>
            </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Full name:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="full_name" runat="server" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Username:"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="username" runat="server" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Date of Birth:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox runat="server" type="date" id="dateOfBirth" name="Date" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="password" runat="server" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Contact Number:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="contact" runat="server" Width="500px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Email Address:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="email" runat="server" Width="500px"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="deleteBtn" OnClick="Delete_Click" />
            <asp:Button ID="Save" runat="server" Text="Save" CssClass="saveBtn" OnClick="Save_Click" />
        </div>
    </form>

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
            <br />
            <br />
            <img alt=""
                src="http://icons.iconarchive.com/icons/pelfusion/long-shadow-media/512/Mobile-Smartphone-icon.png"
                height="35" width="35" style="margin-left:125px" />&nbsp; +60 1161953814 &nbsp;
            <img alt="" src="https://jtechmelaka.com.my/media/material/Contact%20Us/ContactUs-05.png" height="35"
                width="35" style="margin-left:125px" />&nbsp; TP064029@mail.apu.edu.my
            <br />
            <br />
            <br />
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
        var role = '<%= Session["role"] %>';
        var email = '<%= Session["Email_Address"] %>';

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

</script>