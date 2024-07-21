<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Edit_Product.aspx.cs" Inherits="Ecommerce2.Admin.Edit_Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                        <asp:BoundField DataField="Prod_desc" HeaderText="Prod_desc" SortExpression="Prod_desc" />
                        <asp:BoundField DataField="Prod_price" HeaderText="Prod_price" SortExpression="Prod_price" />
                        <asp:BoundField DataField="Prod_stock" HeaderText="Prod_stock" SortExpression="Prod_stock" />
                        <asp:BoundField DataField="Prod_status" HeaderText="Prod_status" SortExpression="Prod_status" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" DeleteCommand="DELETE FROM [Product_Tab2] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Product_Tab2] ([Name], [Image], [Prod_desc], [Prod_price], [Prod_stock], [Prod_status]) VALUES (@Name, @Image, @Prod_desc, @Prod_price, @Prod_stock, @Prod_status)" SelectCommand="SELECT * FROM [Product_Tab2]" UpdateCommand="UPDATE [Product_Tab2] SET [Name] = @Name, [Image] = @Image, [Prod_desc] = @Prod_desc, [Prod_price] = @Prod_price, [Prod_stock] = @Prod_stock, [Prod_status] = @Prod_status WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Prod_desc" Type="String" />
                        <asp:Parameter Name="Prod_price" Type="Int32" />
                        <asp:Parameter Name="Prod_stock" Type="String" />
                        <asp:Parameter Name="Prod_status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Image" Type="String" />
                        <asp:Parameter Name="Prod_desc" Type="String" />
                        <asp:Parameter Name="Prod_price" Type="Int32" />
                        <asp:Parameter Name="Prod_stock" Type="String" />
                        <asp:Parameter Name="Prod_status" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
