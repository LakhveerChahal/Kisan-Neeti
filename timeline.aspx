<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="timeline.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            border-color: #D0DEB7;
            background-color: #d0deb7;
        }
        .auto-style8 {
            width: 356px;
        }
        .auto-style9 {
            width: 356px;
            text-align: right;
        }
        .auto-style10 {
            font-size: x-large;
        }
        .auto-style11 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style10" Text="Crop selected:"></asp:Label>
            </td>
            <td>
                <asp:Label ID="crop" runat="server" CssClass="auto-style10"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Change" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style10" Text="Sowing date"></asp:Label>
            </td>
            <td>
                <asp:Label ID="sowdate" runat="server" CssClass="auto-style10"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Change" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:GridView ID="GridView1" runat="server" CssClass="auto-style10" Height="368px" Width="392px">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

