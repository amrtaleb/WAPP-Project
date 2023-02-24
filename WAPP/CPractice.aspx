<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CPractice.aspx.cs" Inherits="Course.CPractice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>华语练习</title>
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
}
    </style>
</head>
<body>
    <h1>华语练习</h1>
    <form id="form1" runat="server">
        <div class="div1">            
            <table class="responsive" align="center">
                <tr>
                    <td class="responsive">1. 以下哪个不是拼音里的所学的？</td>
                    <td class="responsive">2. 以下哪个是“六”的汉语拼音？</td>
                    <td>3. 拼音的“ye zi”指的是以下哪一个词语？</td>
                    <td>4. 弟弟去学校 (____)。<br />
                        选择正确的词语填空。</td>
                    <td>5. 小丽去 (____) 读书。<br />
                        选择正确的词语填空。</td>
                </tr>
                <tr>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ1" runat="server" Width="250px" >
                            <asp:ListItem>韵母</asp:ListItem>
                            <asp:ListItem>声母</asp:ListItem>
                            <asp:ListItem>五声</asp:ListItem>
                            <asp:ListItem>整体认读音节</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="responsive">
                        <asp:RadioButtonList ID="PQ2" runat="server" Width="250px">
                            <asp:ListItem>san</asp:ListItem>
                            <asp:ListItem>liu</asp:ListItem>
                            <asp:ListItem>shi</asp:ListItem>
                            <asp:ListItem>qi</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="PQ3" runat="server" Width="250px">
                            <asp:ListItem>苹果</asp:ListItem>
                            <asp:ListItem>花</asp:ListItem>
                            <asp:ListItem>树</asp:ListItem>
                            <asp:ListItem>叶子</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ4" runat="server" Width="250px">
                            <asp:ListItem>上课</asp:ListItem>
                            <asp:ListItem>吃饭</asp:ListItem>
                            <asp:ListItem>打架</asp:ListItem>
                            <asp:ListItem>睡觉</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style3">
                        <asp:RadioButtonList ID="PQ5" runat="server" Width="250px">
                            <asp:ListItem>礼堂</asp:ListItem>
                            <asp:ListItem>房间</asp:ListItem>
                            <asp:ListItem>图书馆</asp:ListItem>
                            <asp:ListItem>食堂</asp:ListItem>
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
