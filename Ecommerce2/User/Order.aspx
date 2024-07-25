<%@ Page Title="" Language="C#" MasterPageFile="~/User/User1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Ecommerce2.User.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            width: 488px;
        }
        .auto-style3 {
            height: 27px;
            width: 488px;
        }
        .auto-style4 {
            width: 317px;
        }
        .auto-style5 {
            height: 27px;
            width: 317px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">First Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Last Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td class="auto-style2">Card Number</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]{16}"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>TOTAL PRICE</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5"></td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Text="Order" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#333399" NavigateUrl="~/User/AddToCart.aspx">Previous Page</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
