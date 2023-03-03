<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WAPP.Login" %>

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
    <style>
		body {
			margin: 100px;
			background-color: #c7f1f5;
			font-family: 'Montserrat', sans-serif;
		}

		button {
			background-color: #14738f;
			color: white;
			border: none;
			cursor: pointer;
			width: 90%;
			font-weight: bold;
			font-size: large;
			height: 35px;
			padding: 10px;
			border-radius: 10px;
		}

		button:hover {
			background-color: #c7f1f5;
		}

		input {
			background-color: #cdf3f7;
			border: 0;
			width: 100%;
			height: 35px;
			font-family: 'Montserrat', sans-serif;
			font-size: medium;
			border-radius: 10px;
		}

		input:focus {
			background-color: #c7f1f5;
			outline: none;
		}

		select,
		option {
			height: 35px;
			width: 100%;
			font-family: 'Montserrat', sans-serif;
			background: #FFF2F9;
			border: 0;
			padding: 4px;
			border-radius: 10px;
			font-size: medium;
		}

		a {
			text-decoration: none;
			font-size: medium;
			font-weight: normal;
		}

		a:hover {
			color: #14738f;
		}

		.bg {
			top: 0;
			left: 0;
			width: 90%;
			/* Full width */
			;
			height: 10%;
			/* Full height */
			;
			margin: auto;
			color: #14738f;
		}

		.content {
			text-align: center;
			margin: auto;
			font-size: large;
			width: 100%;
			border-radius: 15px;
			background-color: #FFFFFF;
			padding: 30px 25px 40px 25px;
			box-shadow: 5px 5px 15px #393939;
			font-weight: bold;
			margin-top: 50px;
		}
	</style>
</head>

<body>
      <!-- Login Form -->
  <div id="signIn2" class="bg">
    <form runat="server"  class="content" id="loginForm" style="width:435px">
      <div style="margin:auto; position:relative;">
        <!--close button-->
        <span onclick="window.location.href='HomePage.aspx'" class="close" title="Close Form">&times;</span>

        <div style="text-align:center; padding-top:35px;">
          <img style=" border-radius:50%" alt="" src="https://www.mycapacious.com/cap/assets/images/login-icon.png"
            width="120px" height="120px" />
        </div>

        <br />Username<br />
        <asp:TextBox runat="server" type="text" id="username" size="41" maxlength="30" required /><br /><br />

        Password<br />
        <asp:TextBox runat="server" type="password" id="password1" size="41" maxlength="30" required /><br />
        <span id="fgtPw"><a href="fgtPassword.aspx">Forgot Password?</a></span><br /><br />

        User Role<br />
        <select id="role" runat="server">
          <option value="Member" selected>Member</option>
          <option value="Admin">Admin</option>
        </select><br /><br />

        <asp:button runat="server" Text="LOGIN" OnClick="loginbtn_Click" id="loginbtn" type="button"></asp:button>
        <p>Don't have an account?
          <a href="Register.aspx" onclick="">
            Register!</a>
        </p>
      </div>
    </form>
  </div>

</body>
</html>
