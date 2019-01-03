<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Policies.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 100%;
            border-color: #D0DEB7;
            background-color: #d0deb7;
        }
        .auto-style8 {
            width: 243px;
        }
        .auto-style9 {
            margin-left: 117px;
        }
        .auto-style10 {
            text-align: center;
        }
        .auto-style12 {
            width: 243px;
            height: 102px;
        }
        .auto-style13 {
            height: 102px;
        }
    .auto-style11 {
        font-size: xx-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style12">
                <strong>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Site-Navigation"></asp:Label>
                <br />
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
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                </strong>
            </td>
            <td class="auto-style13">
                <asp:Image ID="Image1" runat="server" CssClass="auto-style9" Height="117px" ImageUrl="~/policies.jpg" Width="428px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td>&nbsp;<div class="auto-style10">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="policy_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="223px" Width="624px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="S.No." SortExpression="policy_id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("policy_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="pid" runat="server" Text='<%# Bind("policy_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="policyname" HeaderText="policyname" SortExpression="policyname" />
                        <asp:ButtonField ButtonType="Image" ImageUrl="~/select.png" Text="Button" CommandName="select" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kisaan_nitiConnectionString %>" SelectCommand="SELECT * FROM [policy]"></asp:SqlDataSource>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
    </table>
</asp:Content>

