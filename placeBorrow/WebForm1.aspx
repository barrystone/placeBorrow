<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication8.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 143px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="week" DataValueField="week" Height="19px">
        </asp:DropDownList>
        &nbsp;&nbsp; 今日日期:&nbsp;
        <asp:Label ID="Label2" runat="server" Text="null"></asp:Label>
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [week] FROM [Table]"></asp:SqlDataSource>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">星期一</td>
                <td class="auto-style2">星期二</td>
                <td class="auto-style2">星期三</td>
                <td class="auto-style2">星期四</td>
                <td class="auto-style2">星期五</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [phone], [username], [region], [time] FROM [Table] WHERE (([region] = @region) AND ([week] = @week) AND ([time] = @time) AND ([week] = @week2))">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="A" Name="region" Type="String" />
                            <asp:Parameter DefaultValue="本週" Name="week" Type="String" />
                            <asp:Parameter DefaultValue="9:00~12:00" Name="time" Type="String" />
                            <asp:ControlParameter ControlID="DropDownList1" Name="week2" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
                        <Fields>
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                            <asp:BoundField DataField="region" HeaderText="region" SortExpression="region" />
                        </Fields>
                    </asp:DetailsView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [phone], [username], [region] FROM [Table] WHERE ([week] = @week) AND ([region]='B') AND ([day]='星期一') AND ([time]='9:00~12:00')">
                        <SelectParameters>
                            <asp:Parameter Name="week" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            <asp:ListItem>本週</asp:ListItem>
            <asp:ListItem>下週</asp:ListItem>
            <asp:ListItem>下下週</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
            <asp:ListItem>星期一</asp:ListItem>
            <asp:ListItem>星期二</asp:ListItem>
            <asp:ListItem>星期三</asp:ListItem>
            <asp:ListItem>星期四</asp:ListItem>
            <asp:ListItem>星期五</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 場地:
        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="region" Text="A" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="region" Text="B" />
        <br />
        <br />
&nbsp;<asp:CheckBox ID="CheckBox1" runat="server" Text="9:00~12:00" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="12:00~15:00" />
        <asp:CheckBox ID="CheckBox3" runat="server" BorderStyle="None" Text="15:00~18:00" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="null"></asp:Label>
        <br />
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
        </p>
    </form>
</body>
</html>
