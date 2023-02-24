<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chinese.aspx.cs" Inherits="Course.Chinese" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chinese</title>
    <link href="styling.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{
            margin: auto;
            background-color: #c7f1f5;
            color: black;
            font-family: 'Montserrat', sans-serif;
        }

        .div1 {
            background-image: url("Cbg.jpg");
            background-size: cover;
            background-position: center top;
            width: 100%;
            height: 650px;
        }

        h1{
            font-size: 50px;
            text-align: center;
        }

        h2 {
            font-size: 25px;
            text-align: center;
        }

        table, th, td {
            width: 100px;
            height: 100px;
            border: 5px solid black;
            border-collapse: collapse;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: none;
            background-color: rgba(0, 0, 0, 0.5);
        }

        .video-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

        video{
            width: 845px;
            height: 480px;
        }

        .button-style1{
            text-align: center;
            width: 50px;
            height: 35px;
            cursor: pointer;
            background-color: #f5f5f5;
            position: relative;
            top: 0;
            left: 100%;
        }

        .button-style2{
            width: 450px;
            height: 350px;
        }

        .auto-style1 {
            position: absolute;
            top: 600px;
            left: 43%;
            cursor: pointer;
            border-radius: 15px;
            border-color: white;
            border-style: outset;
            width: 200px;
            height: 60px;
        }

        .auto-style2 {
            position: absolute;
            top: 700px;
            left: 43%;
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
    <h1>Chinese</h1>
    <h2>Have fun to learn Chinese easily with SpeakEase!</h2>
    <form id="form1" runat="server">
        <asp:Button ID="Test" runat="server" Text="Test" CssClass="auto-style2" Font-Size="X-Large" OnClick="Test_Click" />
            <asp:Button ID="Practice" runat="server" Text="Practice" CssClass="auto-style1" Font-Size="X-Large" OnClick="Practice_Click" />
        <div class="div1">
            <table align="center">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="C1.png" OnClientClick="showVideo()" OnClick="ImageButton1_Click" CssClass="button-style2" />
                        <div class="overlay" id="overlay1" runat="server">
                            <div class="video-container">
                                <asp:Button ID="Button1" runat="server" Text="X" OnClick="Button1_Click" CssClass="button-style1" />
                                <video id="video1" controls="controls" runat="server">
                                    <source src="ChineseB.mp4" type="video/mp4" />
                                </video>
                            </div>
                        </div>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="C2.png" OnClientClick="showVideo()" OnClick="ImageButton2_Click" CssClass="button-style2" />
                        <div class="overlay" id="overlay2" runat="server">
                            <div class="video-container">
                                <asp:Button ID="Button2" runat="server" Text="X" OnClick="Button2_Click" CssClass="button-style1" />
                                <video id="video2" controls="controls" runat="server">
                                    <source src="ChineseI.mp4" type="video/mp4" />
                                </video>
                            </div>
                        </div>
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="C3.png" OnClientClick="showVideo()" OnClick="ImageButton3_Click" CssClass="button-style2" />
                        <div class="overlay" id="overlay3" runat="server">
                            <div class="video-container">
                                <asp:Button ID="Button3" runat="server" Text="X" OnClick="Button3_Click" CssClass="button-style1" />
                                <video id="video3" controls="controls" runat="server">
                                    <source src="ChineseE.mp4" type="video/mp4" />
                                </video>
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
            <p align="center">Practice and test are only available after finish all the classes!</p>
            <br />
        </div> 
    </form>
</body>
</html>
