<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ETest.aspx.cs" Inherits="Course.ETest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>English Test</title>
    <link href="styling.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{
            margin: auto;
            background-color: #c7f1f5;
            color: black;
            font-family: 'Montserrat', sans-serif;
        }

        .div1 {
            background-image: url("Ebg.jpg");
            background-size: cover;
            background-position: center top;
            width: 100%;
            height: 650px;
        }

        h1{
            font-size: 50px;
            text-align: center;
        }

        table, th, td {
            width: 500px;
            height: 75px;
            border: 1px solid black;
            border-collapse: collapse;
            background-color: whitesmoke;
        }
        
        .auto-style3 {
            width: 550px;
        }
        
        .auto-style1 {
            position: absolute;
            top: 550px;
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
            top: 650px;
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
    <h1>English Test</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. Which letter comes after B in the English alphabet?</td>
                    <td class="responsive">2. Which word means the opposite of &quot;hot&quot;?</td>
                    <td>3. Which word is a number?</td>
                    <td>4. Hello, (___________)?<br />&nbsp;My name is Lily.</td>
                    <td class="responsive" style="width: 762px">5. Which word spelled correctly?</td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="250px">
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="250px">
                            <asp:ListItem>cold</asp:ListItem>
                            <asp:ListItem>wet</asp:ListItem>
                            <asp:ListItem>sunny</asp:ListItem>
                            <asp:ListItem>warm</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="250px">
                            <asp:ListItem>Happy</asp:ListItem>
                            <asp:ListItem>Five</asp:ListItem>
                            <asp:ListItem>Cry</asp:ListItem>
                            <asp:ListItem>Fly</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="250px">
                            <asp:ListItem>what is your number</asp:ListItem>
                            <asp:ListItem>do you have candy</asp:ListItem>
                            <asp:ListItem>nice to meet you</asp:ListItem>
                            <asp:ListItem>what is your name</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive" style="width: 762px">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="250px">
                            <asp:ListItem>Kolo</asp:ListItem>
                            <asp:ListItem>Ookl</asp:ListItem>
                            <asp:ListItem>Look</asp:ListItem>
                            <asp:ListItem>Kool</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="submit" runat="server" Font-Size="Larger" Text="Submit" CssClass="auto-style1" OnClick="submit_Click" />
            <asp:Button ID="Back" runat="server" Font-Size="Larger" Text="Back" CssClass="auto-style2" OnClick="back_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PracticeTable]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
