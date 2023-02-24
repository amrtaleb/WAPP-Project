<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fgtPassword.aspx.cs" Inherits="WAPP.fgtPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	<title>Reset Password</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">

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
		<!--scroll to top button-->
		<button id="scrollUp" title="Go To Top">^</button>

</head>

<body>
	<div class="bg" >
		<form class="content" runat="server" style="width:350px" >
			<div>
				<h2>Reset Password</h2>
				<hr>
				<br />

				User Role<br />
				<select id="role">
					<option value="Member" selected>Member</option>
					<option value="Admin">Admin</option>
				</select><br /><br />

				<label>Username</label><br />
				<asp:TextBox runat="server" type="text" id="usrname" size="38" maxlength="30" required /><br /><br />
				<asp:label runat="server" id="msgU" style="color:red;font-size:x-small;font-weight:lighter"></asp:label>

				<label>New Password</label><br />
				<asp:TextBox runat="server" type="password" id="newpassword" size="38" maxlength="30" required /><br />
				<br /><br />

				<asp:button runat="server" Text="RESET" OnClick="resetbtn_Click" id="resetbtn" type="button"></asp:button>
				<p>
					<a href="HomePage.aspx">Back to Home Page</a>
				</p>
			</div>
		</form>
	</div>

	<script>
		$('#resetbtn').click(function () {
			var check = 0;
			$("input").each(function () {
				if ($(this).val()) {
					return;
				} else {
					check = 1;
				}
			});

			if (check == 0) {
				$.ajax({
					url: 'register.html',
					type: 'post',
					data: {
						'usrname': $('#usrname').val(),
						'newpw': $('#newpassword').val(),
						'role': $('#role').val(),
					},
					success: function (response) {
						alert(response);
					}
				})
			}
		});

    </script>
</body>

</html>
