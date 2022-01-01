<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication8.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-bottom: 19px;
        }
        .auto-style2 {
            margin-top: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server" style="text-align: center">
        <p>
            &nbsp;</p>
        <p>
            &nbsp;<asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="18pt" ForeColor="#663300" Text="  方便且快速的及時場地租借系統      "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Src="https://png.pngtree.com/png-clipart/20190617/original/pngtree-cartoon-map-green-map-map-illustration-location-map-png-image_3897971.jpg" CssClass="no" Height="97px" Width="109px"/>
        </p>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            &#39;<asp:Label ID="Label1" runat="server" HorizontalAlign="Center"  Font-Bold="True" Font-Size="40pt" Text="場替租借系統"></asp:Label>
        </p>
        <p class="auto-style1">
            &nbsp;</p>
        <p class="auto-style1">
            選擇場地:</p>
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style2" Height="80px" Width="211px">
            <asp:ListItem>屏東大學活動中心羽球場</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <p class="auto-style1">
            選擇主場地 &gt; 查看與選擇時段及場地位置 &gt; 輸入個人資訊預約</p>
        <br />
        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="下一步" Width="104px" />
        <br />
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
