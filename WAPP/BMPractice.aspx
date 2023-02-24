<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMPractice.aspx.cs" Inherits="Course.BMPractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BM Latihan</title>
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
    <h1>Bahasa Melayu Latihan</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. (_)y(_)h, (_)b(_)ng<br />
                        Pilih huruf awal yang betul.</td>
                    <td class="responsive">2. (__)ri, bi(__), bo(__)<br />
                        Pilih suku kata yang betul.</td>
                    <td>3. (__)pa, (__)ca, (__)tu<br />
                        Pilih suku kata yang betul.</td>
                    <td>4. Ramai (_____) di padang sekolah.</td>
                    <td class="responsive" style="width: 762px">5. Sekarang ialah (_____) 1.25 tengah hari.<br />
                    </td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="250px">
                            <asp:ListItem>e</asp:ListItem>
                            <asp:ListItem>i</asp:ListItem>
                            <asp:ListItem>u</asp:ListItem>
                            <asp:ListItem>a</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="250px">
                            <asp:ListItem>la</asp:ListItem>
                            <asp:ListItem>ja</asp:ListItem>
                            <asp:ListItem>pa</asp:ListItem>
                            <asp:ListItem>ma</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="250px">
                            <asp:ListItem>ci</asp:ListItem>
                            <asp:ListItem>da</asp:ListItem>
                            <asp:ListItem>ba</asp:ListItem>
                            <asp:ListItem>li</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="250px">
                            <asp:ListItem>arang</asp:ListItem>
                            <asp:ListItem>orang</asp:ListItem>
                            <asp:ListItem>udang</asp:ListItem>
                            <asp:ListItem>ulang</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive" style="width: 762px">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="250px">
                            <asp:ListItem>pukul</asp:ListItem>
                            <asp:ListItem>pergi</asp:ListItem>
                            <asp:ListItem>petang</asp:ListItem>
                            <asp:ListItem>padang</asp:ListItem>
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
