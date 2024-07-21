<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Ecommerce2.User.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 25px;
    }
        .auto-style2 {
            margin-right: 0px;
        }
        .auto-style6 {
            height: 27px;
        }
        .auto-style7 {
            width: 794px;
        }
        .auto-style8 {
            height: 25px;
            width: 794px;
        }
        .auto-style9 {
            height: 27px;
            width: 794px;
        }
        .auto-style10 {
            width: 53px;
        }
        .auto-style11 {
            width: 366px;
        }
        .auto-style12 {
            height: 25px;
            width: 366px;
        }
        .auto-style13 {
            height: 27px;
            width: 366px;
        }
        .auto-style14 {
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style12">
            &nbsp;</td>
        <td class="auto-style8">
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="ALL Products"></asp:Label>
        </td>
        <td class="auto-style1"></td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style7">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style9"></td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style7">
            <asp:TextBox ID="TextBox1" runat="server" Width="283px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" BackColor="#009900" ForeColor="White" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [Name], [Id] FROM [Cat_tab]"></asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="filter" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style7">
            <asp:DataList ID="DataList1" runat="server" CssClass="auto-style2" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>

                    <table>
                        <tr>
                            <td class="auto-style10">
                                &nbsp;</td>
                            <td class="auto-style10">&nbsp;</td>
                            <td class="auto-style10">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </td>
                            <td class="auto-style14">&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                             <td class="auto-style10" style="text-align:center">&nbsp;</td>
                             <td class="auto-style10" style="text-align:center">
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                             </td>
                             <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                            <td class="auto-style10" style="text-align:center">&nbsp;</td>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                            <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                            <td class="auto-style10" style="text-align:center">&nbsp;</td>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                            <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                         <tr>
                             <td class="auto-style10" style="text-align:center">&nbsp;</td>
                             <td class="auto-style10" style="text-align:center">&nbsp;</td>
                             <td class="auto-style10" style="text-align:center">
                                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("Image") %>' Width="360px" CommandArgument='<%# Eval("Id") %>' Height="240px" CommandName="ViewPrdDetails" CommandDetails='<%# Eval("Id") %>'  />
                             </td>
                             <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" style="text-align:center">&nbsp;</td>
                            <td class="auto-style10" style="text-align:center">&nbsp;</td>
                            <td class="auto-style10" style="text-align:center">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Prod_desc") %>'></asp:Label>
                            </td>
                            <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                         <tr>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                             <td class="auto-style10" style="text-align:center">&nbsp;</td>
                             <td class="auto-style10" style="text-align:center">
                                 <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Small" Text='<%# Eval("Prod_price") %>'></asp:Label>
                             </td>
                             <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" style="text-align:center">
                                &nbsp;</td>
                            <td class="auto-style10" style="text-align:center">&nbsp;</td>
                            <td class="auto-style10" style="text-align:center">
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="AddToCart" Height="20px" ImageUrl="~/User/images/images_cart.png" Width="38px" />
                            </td>
                            <td class="auto-style14" style="text-align:center">&nbsp;</td>
                        </tr>
                    </table>
                  <%--  Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    Name:
                    <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                    <br />
                    Image:
                    <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                    <br />
                    Prod_desc:
                    <asp:Label ID="Prod_descLabel" runat="server" Text='<%# Eval("Prod_desc") %>' />
                    <br />
                    Prod_price:
                    <asp:Label ID="Prod_priceLabel" runat="server" Text='<%# Eval("Prod_price") %>' />
                    <br />--%>
<br />
                </ItemTemplate>
            </asp:DataList>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">
            &nbsp;</td>
        <td class="auto-style7">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PROJECTConnectionString %>" SelectCommand="SELECT [Id], [Image], [Name], [Prod_desc], [Prod_price], [Category] FROM [Product_Tab3]"></asp:SqlDataSource>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td class="auto-style7">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
