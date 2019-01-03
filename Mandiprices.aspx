<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Mandiprices.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style6 {
        width: 100%;
        border-color: #D0DEB7;
        background-color: #d0deb7;
    }
        .auto-style7 {
            width: 100%;
            height: 521px;
            border-color: #D0DEB7;
            background-color: #d0deb7;
        }
        .auto-style8 {
            width: 235px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 235px;
            height: 33px;
        }
        .auto-style16 {
            height: 33px;
        }
        .auto-style17 {
            width: 235px;
            height: 189px;
        }
        .auto-style18 {
            height: 189px;
        }
        .auto-style19 {
            width: 235px;
            height: 67px;
        }
        .auto-style20 {
            height: 67px;
        }
        .auto-style21 {
            width: 235px;
            height: 20px;
        }
        .auto-style22 {
            height: 20px;
        }
        .auto-style23 {
            width: 235px;
            height: 19px;
        }
        .auto-style24 {
            height: 19px;
        }
        .auto-style25 {
            width: 235px;
            height: 69px;
        }
        .auto-style26 {
            height: 69px;
        }
        .auto-style11 {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style25"><strong>
                <asp:Label ID="Label4" runat="server" Text="Site-Navigation"></asp:Label>
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
            <td class="auto-style26">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Choose crop:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="cropdown" runat="server" Height="23px" Width="257px" DataSourceID="SqlDataSource2" DataTextField="cropname" DataValueField="cropname" AutoPostBack="True" AppendDataBoundItems="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kisaan_nitiConnectionString %>" SelectCommand="SELECT [cropname] FROM [crops]"></asp:SqlDataSource>
                <asp:Label ID="croplabel" runat="server" Text="Please select crop"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Choose district:"></asp:Label>
&nbsp;&nbsp;
                <asp:DropDownList ID="distdown" runat="server" Height="23px" Width="257px" DataSourceID="SqlDataSource1" DataTextField="locname" DataValueField="locname" AutoPostBack="True" AppendDataBoundItems="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kisaan_nitiConnectionString %>" SelectCommand="districts" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="crop" SessionField="cropid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="distlabel" runat="server" Text="Please select district"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text="Choose market:"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="mandidown" runat="server" Height="23px" Width="257px" DataSourceID="SqlDataSource3" DataTextField="mandiname" DataValueField="mandiname" AutoPostBack="True" AppendDataBoundItems="True">
                    <asp:ListItem Value="0">--Select--</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:kisaan_nitiConnectionString %>" SelectCommand="mandireturn" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter Name="crop_id" SessionField="cropid" Type="Int32" DefaultValue="0" />
                        <asp:SessionParameter Name="dist_id" SessionField="distid" Type="Int32" DefaultValue="0" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="marketlabel" runat="server" Text="Please select market"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="submit" runat="server" Height="34px" Text="Submit" Width="113px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style17"></td>
            <td class="auto-style18">
                <div class="auto-style14">
                <asp:GridView ID="GridView1" runat="server" Height="131px" Width="746px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="mandiname" HeaderText="Mandi" SortExpression="mandiname" />
                        <asp:BoundField DataField="prices(2018)" HeaderText="prices(2018)" SortExpression="prices(2018)" />
                        <asp:BoundField DataField="prices(2017)" HeaderText="prices(2017)" SortExpression="prices(2017)" />
                        <asp:BoundField DataField="prices(2016)" HeaderText="prices(2016)" SortExpression="prices(2016)" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:kisaan_nitiConnectionString %>" SelectCommand="prices" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="0" Name="crop" SessionField="cropid" Type="Int32" />
                        <asp:SessionParameter DefaultValue="0" Name="dist" SessionField="distid" Type="Int32" />
                        <asp:SessionParameter DefaultValue="0" Name="mandi" SessionField="mandiid" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style15"></td>
            <td class="auto-style16">
            </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">
            </td>
        </tr>
    </table>
</asp:Content>

