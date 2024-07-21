<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="Ecommerce2.User.AddToCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 373px;
        }
        .auto-style2 {
            width: 373px;
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
        }
        .auto-style4 {
            margin-left: 40px;
        }
        .auto-style5 {
            margin-top: 0px;
        }
        .auto-style6 {
            font-family: "Segoe UI";
            font-size: 15px;
            color: #000000;
            background-color: #F0F0F0;
        }
        .auto-style7 {
            width: 373px;
            height: 28px;
        }
        .auto-style8 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="900px" CssClass="auto-style5">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="Sr No" />
                        <asp:BoundField DataField="pid" HeaderText="Product Id" />
                        <asp:ImageField DataImageUrlField="pimage" HeaderText="Product_Image">
                            <ControlStyle Height="130px" Width="140px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="pname" HeaderText="Product Name" />
                        <asp:BoundField DataField="pprice" HeaderText="Price" />
                        <asp:BoundField DataField="pquantity" HeaderText="Quantity" />
                        <asp:BoundField DataField="ptotalprice" HeaderText="Total_Price" />
                    </Columns>
                </asp:GridView>
                <br />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Order" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
