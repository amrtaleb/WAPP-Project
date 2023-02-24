<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WAPP.Register" %>

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
    <div class="bg">
          
 <form runat="server"  class="form-content1" id="signUpForm" style="width:890px;">
  <div id="signUp2">
      <div style="position:relative; margin:auto;">
        <!--close button-->
        <span onclick="window.location.href='HomePage.aspx'" class="close" title="Close Form">&times;</span>
      </div>

      <h2>Sign Up</h2>
      <span style="font-weight:normal;">Please fill in this form to create a new account.</span>
      <br />
      <hr style="box-shadow: 0px 1px 3px #888888;background-color: #E0E0E0; border:0;height:1px" />

      <table>
        <tr>
          <td style=" width: 15%">Full Name</td>
          <td>：</td>
          <td style="width: 274px"><asp:TextBox runat="server" type="text" id="name" size="65" maxlength="60" pattern="[A-Za-z\s]{1,60}"
              required /></td>
        </tr>
        <tr>
          <td>Username</td>
          <td>:</td>
          <td style="width: 274px"><asp:TextBox runat="server" type="text" id="username2" size="65" maxlength="30"
              pattern="[A-Za-z0-9_]{1,30}" required /><br>
            <asp:label runat="server" id="msgU" style="color:red;font-size:x-small;font-weight:lighter"></asp:label>

        </tr>
        <tr>
          <td>Date of Birth</td>
          <td style="width: 9px" size="30" maxlength="30">:</td>
          <td>
            <asp:TextBox runat="server" type="date" id="dob" style="height:auto;" required />
          </td>
        </tr>
        <tr>
          <td>Password</td>
          <td>:</td>
          <td style="width: 274px"><asp:TextBox runat="server" type="password" id="password2" size="65" maxlength="30"
              pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
              title="Must contain at least one number, one uppercase and lowercase letter, and at least 8 or more characters"
              required /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>Confirm Password</td>
          <td style="width: 9px">:</td>
          <td><input type="password" id="confirmPw" size="65" maxlength="30" required /></td>
          <td>&nbsp;</td>
        </tr>
        <tr style="height:25px;color:red;font-size:x-small;font-weight:lighter">
          <td colspan="6"></td>
          <td><span id="validityMsg"></span></td>
        </tr>
        <tr>
          <td>Contact No</td>
          <td>:</td>
          <td style="width: 274px"><asp:TextBox runat="server" type="tel" id="contactNo" size="65" maxlength="15" pattern="0[0-9]{4,15}"
              placeholder="0xxxxxxxxx" required /></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>Email Address</td>
          <td style="width: 9px">:</td>
          <td><asp:TextBox runat="server" type="email" id="email" size="65" maxlength="60" placeholder="xxx@xxx.xxx"
              pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required /><br>
            <span id="msg" style="color:red;font-size:x-small;font-weight:lighter"></span>
          </td>
        </tr>
        <br>
        <br>
        <tr>
          <td colspan="6">&nbsp;</td>
            <td style="float: left">
                <asp:Button runat="server"  OnClick="create_Click" ID="create" type="submit" Style="width: 140px; font-size: medium" Text="Create Account"></asp:Button>
            </td>
          </br>
        </tr>
      </table>

      <hr style="box-shadow: 0px 1px 3px #888888;background-color: #E0E0E0; border:0;height:1px" />
      <p>Already a member? <a href="Login.aspx" onclick="Login.aspx">Login</a>
      </p>
      </div>
     
    </form>
  
    </div>
</body>
</html>
<script>
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
