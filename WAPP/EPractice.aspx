<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EPractice.aspx.cs" Inherits="Course.EPractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>English Practice</title>
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

        .auto-style4 {
            position: absolute;
            top: 650px;
            right: 15%;
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
    <h1>English Practice</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. What is the first letter of the word &quot;Apple&quot;?</td>
                    <td class="responsive">2. Which one of them is not write in a uppercase letter?</td>
                    <td>3. Which is the fruits?</td>
                    <td>4. How are you? (___________.)</td>
                    <td class="responsive" style="width: 762px">5. Fill in the blank.<br />&nbsp;(___) you a student?<br />
                    </td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="220px">
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                            <asp:ListItem>L</asp:ListItem>
                            <asp:ListItem>P</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="220px">
                            <asp:ListItem>V</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>g</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="220px">
                            <asp:ListItem>Tree</asp:ListItem>
                            <asp:ListItem>Banana</asp:ListItem>
                            <asp:ListItem>Chicken</asp:ListItem>
                            <asp:ListItem>Potato</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="220px">
                            <asp:ListItem>Hello</asp:ListItem>
                            <asp:ListItem>I am a student</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>I am fine</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive" style="width: 762px">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="220px">
                            <asp:ListItem>Is</asp:ListItem>
                            <asp:ListItem>Are</asp:ListItem>
                            <asp:ListItem>Do</asp:ListItem>
                            <asp:ListItem>Have</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <asp:Button ID="submit" runat="server" Font-Size="Larger" Text="Submit" CssClass="auto-style1" OnClick="submit_Click" />
            <asp:Button ID="test" runat="server" Font-Size="Larger" Text="Test" CssClass="auto-style2" OnClick="test_Click" />
            <asp:Button ID="Back" runat="server" Font-Size="Larger" Text="Back" CssClass="auto-style4" OnClick="back_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PracticeTable]"></asp:SqlDataSource>
        </div>        
    </form>
</body>
</html>
