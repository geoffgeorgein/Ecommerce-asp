<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="PDetails.aspx.cs" Inherits="Ecommerce2.User.PDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            width: 332px;
        }
        .auto-style3 {
            height: 27px;
            width: 332px;
        }
        .auto-style4 {
            margin-right: 105px;
        }
        .auto-style5 {
            width: 226px;
        }
        .auto-style6 {
            height: 27px;
            width: 226px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:DataList ID="DataList1" runat="server" CssClass="auto-style4" DataKeyField="Id" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        
                        <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="X-Large" />
                        <br />
                       
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Width="360px" />
                        <br />
                        Prod_desc:
                        <asp:Label ID="Prod_descLabel" runat="server" Text='<%# Eval("Prod_desc") %>' Font-Italic="True" />
                        <br />
                        Price:

                   
                        <asp:Label ID="Prod_priceLabel" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text='<%# Eval("Prod_price") %>'></asp:Label>
                        <br />
                        Stock:
                        <asp:Label ID="Prod_stockLabel" runat="server" Text='<%# Eval("Prod_stock") %>' Font-Bold="True" />
                        <br />
<br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [Id], [Name], [Image], [Prod_desc], [Prod_price], [Prod_stock] FROM [Product_Tab3] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
