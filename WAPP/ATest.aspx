<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ATest.aspx.cs" Inherits="Course.ATest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>إمتحان اللغة العربية</title>
    <link href="styling.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        body{
            margin: auto;
            background-color: #c7f1f5;
            color: black;
            font-family: 'Montserrat', sans-serif;
        }

        .div1 {
            background-image: url("Abg.jpg");
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
    <h1>إمتحان اللغة العربية</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. ما هو الحرف الذي يأتي بعد حرف الألف(أ) في الأحرف العربية؟</td>
                    <td class="responsive">2. أي كلمة تعني عكس &quot;ساخن&quot;؟</td>
                    <td>3. أي كلمة هي رقم؟</td>
                    <td>4. مرحبًا، (_____)؟
                        <br />
                        اسمي ليلى.</td>
                    <td class="responsive" style="width: 762px">5. ما هي الكلمة التي تم تهجئتها بشكل صحيح؟</td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="250px">
                            <asp:ListItem>ص</asp:ListItem>
                            <asp:ListItem>ح</asp:ListItem>
                            <asp:ListItem>ب</asp:ListItem>
                            <asp:ListItem>و</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="250px">
                            <asp:ListItem>بارد</asp:ListItem>
                            <asp:ListItem>مبتل</asp:ListItem>
                            <asp:ListItem>مشمس</asp:ListItem>
                            <asp:ListItem>دافيء</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="250px">
                            <asp:ListItem>سعيد</asp:ListItem>
                            <asp:ListItem>خمسه</asp:ListItem>
                            <asp:ListItem>يبكي</asp:ListItem>
                            <asp:ListItem>يطير</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="250px">
                            <asp:ListItem>ماهو رقمك</asp:ListItem>
                            <asp:ListItem>هل عندك حلوى</asp:ListItem>
                            <asp:ListItem>سعيد بلقائك</asp:ListItem>
                            <asp:ListItem>ما هو اسمك</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive" style="width: 762px">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="250px">
                            <asp:ListItem>أنر</asp:ListItem>
                            <asp:ListItem>انطر</asp:ListItem>
                            <asp:ListItem>أنظر</asp:ListItem>
                            <asp:ListItem>نر</asp:ListItem>
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
