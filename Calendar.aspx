<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Calendar.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            border-color: #D0DEB7;
            background-color: #d0deb7;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            font-weight: bold;
        }
        .auto-style13 {
            height: 54px;
            width: 213px;
        }
        .auto-style14 {
            width: 688px;
        }
        .auto-style15 {
            height: 54px;
            width: 688px;
        }
        .auto-style16 {
            width: 213px;
        }
        .auto-style18 {
            width: 227px;
            text-align: right;
        }
        .auto-style19 {
            width: 227px;
            text-align: right;
            height: 54px;
        }
        .auto-style20 {
            width: 227px;
        }
        .auto-style22 {
            width: 179px;
            text-align: right;
        }
        .auto-style23 {
            width: 179px;
            text-align: right;
            height: 54px;
        }
        .auto-style24 {
            width: 179px;
        }
        .auto-style25 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style24">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">
                <strong>
                <asp:TreeView ID="TreeView1" runat="server" Height="150px" Width="216px" CssClass="auto-style11" ImageSet="Simple" NodeIndent="10">
                    <DataBindings>
                        <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrl="~/Homepage.aspx" NavigateUrlField="Url" Text="Home" Value="Home" />
                        <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrl="~/Policies.aspx" NavigateUrlField="Url" Text="Policies" Value="Policies" />
                        <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrl="~/Mandiprices.aspx" NavigateUrlField="Url" Text="Mandi prices" Value="Mandi prices" />
                        <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrl="~/Calendar.aspx" NavigateUrlField="Url" Text="Agro-Calendar" Value="Agro-Calendar" />
                        <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrl="~/Helpline.aspx" NavigateUrlField="Url" Text="Helpline" Value="Helpline" />
                    </DataBindings>
                    <HoverNodeStyle Font-Underline="True" ForeColor="#DD5555" />
                    <Nodes>
                        <asp:TreeNode NavigateUrl="~/Homepage.aspx" Text="Home" Value="Home">
                            <asp:TreeNode NavigateUrl="~/Policies.aspx" Text="Policies" Value="Policies"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Mandiprices.aspx" Text="Mandi Prices" Value="Mandi Prices"></asp:TreeNode>
                            <asp:TreeNode NavigateUrl="~/Calendar.aspx" Text="Agro-Calendar" Value="Agro-Calendar"></asp:TreeNode>
                        </asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Helpline.aspx" Text="Helpline" Value="Helpline"></asp:TreeNode>
                    </Nodes>
                    <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" HorizontalPadding="0px" NodeSpacing="0px" VerticalPadding="0px" />
                    <ParentNodeStyle Font-Bold="False" />
                    <SelectedNodeStyle Font-Underline="True" ForeColor="#DD5555" HorizontalPadding="0px" VerticalPadding="0px" />
                </asp:TreeView>
                </strong>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Choose crop:"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Select a date:"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="250px" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="cropname" DataValueField="cropname">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kisaan_nitiConnectionString %>" SelectCommand="SELECT [cropname] FROM [crops]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="125px"></asp:TextBox>
&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Width="41px" Height="20px" ImageUrl="~/calendar.png" />
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style14">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="260px" NextPrevFormat="ShortMonth" Width="487px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                    <DayStyle BackColor="#CCCCCC" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                    <TodayDayStyle BackColor="#999999" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td class="auto-style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style14"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Text="Get data" Width="185px" Height="45px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style23"></td>
            <td class="auto-style15">
                <asp:Label ID="result" runat="server" CssClass="auto-style10"></asp:Label>
            </td>
            <td class="auto-style13">
                &nbsp;</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style25" colspan="2"><strong>
                <asp:Label ID="Label3" runat="server" Text="Send this information to your e-mail address"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Send" />
&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Sent!"></asp:Label>
            </td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

