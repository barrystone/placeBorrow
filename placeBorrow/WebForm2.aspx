<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication8.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style30 {
            height: 92px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style30">
        <asp:Image ID="Image1" runat="server" Position="absolute" Right="0" Width="255px" Src="https://iplay.sa.gov.tw/Upload/photogym/20190225145040_N1TKDD5XZZC8FK55HZEB.jpg" Height="165px" BorderStyle="None" ImageAlign="Right"/>
        租借主場地:
        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="14pt" Text="屏東大學活動中心羽球場"></asp:Label>
            <br />
            <br />
        地址: 屏東縣屏東市民生東路 51 號</div>
        <br />
        <br />
        場地 :
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <p>
            時段 :
            <asp:Label ID="Label9" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="Label10" runat="server"></asp:Label>
&nbsp;
            <asp:Label ID="Label11" runat="server"></asp:Label>
        </p>
        日期 :
        <asp:Label ID="Label4" runat="server"></asp:Label>
        <br />
        <br />
        星期 :
        <asp:Label ID="Label12" runat="server"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        使用者姓名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="欄位不可為空" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <br />
        <br />
        連絡電話：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="欄位不可為空" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="確定預約" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label14" runat="server" Font-Overline="False" Font-Underline="True" Text="如要返回 請按上一頁"></asp:Label>
        <br />
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        </p>
    </form>
</body>
</html>
