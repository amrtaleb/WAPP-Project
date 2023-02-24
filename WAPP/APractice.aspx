<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="APractice.aspx.cs" Inherits="Course.APractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>تمرين اللغه العربية</title>
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
    <h1>تمرين اللغه العربية</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. ما هو اول حرف من كلمة تفاحة</td>
                    <td class="responsive">2. أي من التالي يعد من الثمار؟</td>
                    <td>3. كيف حالك؟</td>
                    <td>4. املأ الفراغ<br />
                        طالب؟ (_______)</td>
                    <td class="responsive" style="width: 762px">5. ما هي وجبتك المفضلة؟</td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="220px">
                            <asp:ListItem>ت</asp:ListItem>
                            <asp:ListItem>ح</asp:ListItem>
                            <asp:ListItem>ه</asp:ListItem>
                            <asp:ListItem>ر</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="220px">
                            <asp:ListItem>شجره</asp:ListItem>
                            <asp:ListItem>موزه</asp:ListItem>
                            <asp:ListItem>دجاج</asp:ListItem>
                            <asp:ListItem>بطاطس</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="220px">
                            <asp:ListItem>مرحبا</asp:ListItem>
                            <asp:ListItem>انا طالب</asp:ListItem>
                            <asp:ListItem>نعم</asp:ListItem>
                            <asp:ListItem>انا بخير</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="220px">
                            <asp:ListItem>نعم</asp:ListItem>
                            <asp:ListItem>انت</asp:ListItem>
                            <asp:ListItem>لا</asp:ListItem>
                            <asp:ListItem>حسنا</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive" style="width: 762px">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="220px">
                            <asp:ListItem>دراجة</asp:ListItem>
                            <asp:ListItem>كرسي</asp:ListItem>
                            <asp:ListItem>أرز مع الدجاج</asp:ListItem>
                            <asp:ListItem>قلم</asp:ListItem>
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
