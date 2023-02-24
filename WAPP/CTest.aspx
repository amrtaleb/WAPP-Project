<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CTest.aspx.cs" Inherits="Course.CTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>华语试卷</title>
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
    <h1>华语试卷</h1>
    <form id="form1" runat="server">
        <div class="div1">
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. 以下哪个是拼音里的卷舌音？</td>
                    <td class="responsive">2. 以下哪个是“红色”的汉语拼音？</td>
                    <td>3. 拼音的&quot;lao shi”指的是以下哪一个词语？</td>
                    <td>4. 多吃有 (____) 的蔬果。<br />
                        选择正确的词语填空。</td>
                    <td>5. 打羽毛球要到 (____)。</td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="250px">
                            <asp:ListItem>s</asp:ListItem>
                            <asp:ListItem>zh</asp:ListItem>
                            <asp:ListItem>x</asp:ListItem>
                            <asp:ListItem>b</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="250px">
                            <asp:ListItem>qing se</asp:ListItem>
                            <asp:ListItem>lan se</asp:ListItem>
                            <asp:ListItem>huang se</asp:ListItem>
                            <asp:ListItem>hong se</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="250px">
                            <asp:ListItem>老师</asp:ListItem>
                            <asp:ListItem>老板</asp:ListItem>
                            <asp:ListItem>师父</asp:ListItem>
                            <asp:ListItem>狮子</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="250px">
                            <asp:ListItem>农药</asp:ListItem>
                            <asp:ListItem>色素</asp:ListItem>
                            <asp:ListItem>营养</asp:ListItem>
                            <asp:ListItem>漂亮</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="250px">
                            <asp:ListItem>篮球场</asp:ListItem>
                            <asp:ListItem>羽毛球场</asp:ListItem>
                            <asp:ListItem>草场</asp:ListItem>
                            <asp:ListItem>课室</asp:ListItem>
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
