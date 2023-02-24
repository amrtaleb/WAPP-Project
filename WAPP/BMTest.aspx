<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMTest.aspx.cs" Inherits="Course.BMTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BM Ujian</title>
    <link href="styling.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{
            margin: auto;
            background-color: #c7f1f5;
            color: black;
            font-family: 'Montserrat', sans-serif;
        }

        .div1 {
            background-image: url("BMbg.jpg");
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
            width: 600px;
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
    <h1>Bahasa Melayu Ujian</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. (_)dang, (_)lat, (_)bi<br />
                        Pilih suku kata yang betul.</td>
                    <td class="responsive">2. (__)ri, (__)gung, me(__)<br />
                        Pilih suku kata yang betul.</td>
                    <td>3. (__)li, ma(__), a(__)s<br />
                        Pilih suku kata yang betul.</td>
                    <td>4. Ibu (_____) pasar membeli sayur.</td>
                    <td class="responsive" style="width: 762px">5. Baju ini berwarna (____).<br />
                    </td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="250px">
                            <asp:ListItem>o</asp:ListItem>
                            <asp:ListItem>u</asp:ListItem>
                            <asp:ListItem>a</asp:ListItem>
                            <asp:ListItem Value="e">e</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="250px">
                            <asp:ListItem>hu</asp:ListItem>
                            <asp:ListItem>la</asp:ListItem>
                            <asp:ListItem>ka</asp:ListItem>
                            <asp:ListItem>ja</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="250px">
                            <asp:ListItem>ta</asp:ListItem>
                            <asp:ListItem>ju</asp:ListItem>
                            <asp:ListItem>me</asp:ListItem>
                            <asp:ListItem>di</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="250px">
                            <asp:ListItem>jalan</asp:ListItem>
                            <asp:ListItem>lari</asp:ListItem>
                            <asp:ListItem>lompat</asp:ListItem>
                            <asp:ListItem>pergi</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive" style="width: 762px">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="250px">
                            <asp:ListItem>cantik</asp:ListItem>
                            <asp:ListItem>bodoh</asp:ListItem>
                            <asp:ListItem>biru</asp:ListItem>
                            <asp:ListItem>kering</asp:ListItem>
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
