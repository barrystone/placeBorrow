<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 347px;
        }
        .auto-style3 {
            width: 143px;
            height: 165px;
        }
        .auto-style4 {
            height: 165px;
        }
        .auto-style6 {
            height: 165px;
            width: 144px;
        }
        .auto-style13 {
            width: 143px;
            height: 2px;
        }
        .auto-style14 {
            height: 2px;
            width: 144px;
        }
        .auto-style18 {
            width: 13px;
            height: 2px;
        }
        .auto-style20 {
            width: 13px;
            height: 165px;
        }
        .auto-style22 {
            width: 13px;
            height: 160px;
        }
        .auto-style23 {
            width: 143px;
            height: 160px;
        }
        .auto-style24 {
            height: 160px;
        }
        .auto-style25 {
            height: 160px;
            width: 144px;
        }
        .auto-style26 {
            width: 13px;
            height: 102px;
        }
        .auto-style27 {
            width: 143px;
            height: 102px;
        }
        .auto-style28 {
            height: 102px;
        }
        .auto-style29 {
            height: 102px;
            width: 144px;
        }
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
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Text="屏東大學活動中心羽球場"></asp:Label>
            <br />
            <br />
        地址: 屏東縣屏東市民生東路 51 號</div>
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="重新選擇主場地" Width="142px" />
        <br />
        <br />
        租借情況查詢:<br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="19px">
            <asp:ListItem Value="0">本週</asp:ListItem>
            <asp:ListItem Value="1">下週</asp:ListItem>
            <asp:ListItem Value="2">下下週</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp; 今日日期:&nbsp;
        <asp:Label ID="Label2" runat="server" Text="null"></asp:Label>
        <br />
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [week] FROM [Table]"></asp:SqlDataSource>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style13">星期一</td>
                <td class="auto-style13">星期二</td>
                <td class="auto-style13">星期三</td>
                <td class="auto-style14">星期四</td>
                <td class="auto-style13">星期五</td>
            </tr>
            <tr>
                <td class="auto-style22">
                    9:00~12:00</td>
                <td class="auto-style23">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="1" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="1" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="125px" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style24">
                    <asp:DetailsView ID="DetailsView3" runat="server" DataSourceID="SqlDataSource4" Height="51px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="2" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="2" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView4" runat="server" DataSourceID="SqlDataSource5" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style24">
                    <asp:DetailsView ID="DetailsView5" runat="server" DataSourceID="SqlDataSource6" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="3" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="3" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView6" runat="server" DataSourceID="SqlDataSource7" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style25">
                    <asp:DetailsView ID="DetailsView7" runat="server" DataSourceID="SqlDataSource8" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="4" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="4" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView8" runat="server" DataSourceID="SqlDataSource9" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style24">
                    <asp:DetailsView ID="DetailsView9" runat="server" DataSourceID="SqlDataSource10" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="5" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="5" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="0" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView10" runat="server" DataSourceID="SqlDataSource11" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">
                    12:00~15:00</td>
                <td class="auto-style3">
                    <asp:DetailsView ID="DetailsView11" runat="server" DataSourceID="SqlDataSource12" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="1" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="1" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView12" runat="server" DataSourceID="SqlDataSource13" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style4">
                    <asp:DetailsView ID="DetailsView13" runat="server" DataSourceID="SqlDataSource14" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="2" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource15" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="2" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView14" runat="server" DataSourceID="SqlDataSource15" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style4">
                    <asp:DetailsView ID="DetailsView15" runat="server" DataSourceID="SqlDataSource16" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource16" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="3" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource17" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="3" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView16" runat="server" DataSourceID="SqlDataSource17" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style6">
                    <asp:DetailsView ID="DetailsView17" runat="server" DataSourceID="SqlDataSource18" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource18" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="4" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource19" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="4" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView18" runat="server" DataSourceID="SqlDataSource19" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style4">
                    <asp:DetailsView ID="DetailsView19" runat="server" DataSourceID="SqlDataSource20" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="5" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter Name="time" DefaultValue="1" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource21" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="5" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="1" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView20" runat="server" DataSourceID="SqlDataSource21" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
            </tr>
            <tr>
                <td class="auto-style26">
                    15:00~18:00</td>
                <td class="auto-style27">
                    <asp:DetailsView ID="DetailsView21" runat="server" DataSourceID="SqlDataSource22" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource22" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="1" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource23" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="1" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView22" runat="server" DataSourceID="SqlDataSource23" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style28">
                    <asp:DetailsView ID="DetailsView23" runat="server" DataSourceID="SqlDataSource24" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource24" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="2" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource25" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="2" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView24" runat="server" DataSourceID="SqlDataSource25" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style28">
                    <asp:DetailsView ID="DetailsView25" runat="server" DataSourceID="SqlDataSource26" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource26" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="3" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource27" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="3" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView26" runat="server" DataSourceID="SqlDataSource27" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style29">
                    <asp:DetailsView ID="DetailsView27" runat="server" DataSourceID="SqlDataSource28" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource28" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="4" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource29" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="4" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView28" runat="server" DataSourceID="SqlDataSource29" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
                <td class="auto-style28">
                    <asp:DetailsView ID="DetailsView29" runat="server" DataSourceID="SqlDataSource30" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource30" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" />
                            <asp:Parameter DefaultValue="5" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource31" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [region], [username], [phone] FROM [TEST] WHERE ([region] = @region) AND ([day] = @day) AND ([week] = @week) AND ([time] = @time)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="B" Name="region" />
                            <asp:Parameter DefaultValue="5" Name="day" />
                            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="week" PropertyName="SelectedValue" />
                            <asp:Parameter DefaultValue="2" Name="time" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView30" runat="server" DataSourceID="SqlDataSource31" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <Fields>
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                        </Fields>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    </asp:DetailsView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <div>
            週: <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem Value="0">本週</asp:ListItem>
            <asp:ListItem Value="1">下週</asp:ListItem>
            <asp:ListItem Value="2">下下週</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp; 星期幾:
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem Value="1">星期一</asp:ListItem>
            <asp:ListItem Value="2">星期二</asp:ListItem>
            <asp:ListItem Value="3">星期三</asp:ListItem>
            <asp:ListItem Value="4">星期四</asp:ListItem>
            <asp:ListItem Value="5">星期五</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 場地:
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="region" Text="A" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="region" Text="B" />
        </div>
        <br />
        <br />
        請選取時段:<br />
        <br />
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="9:00~12:00" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="12:00~15:00" />
        <asp:CheckBox ID="CheckBox3" runat="server" BorderStyle="None" Text="15:00~18:00" />
        </div>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="null"></asp:Label>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="下一步" BorderColor="#CCCC00" />
        </p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
