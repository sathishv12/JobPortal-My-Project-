<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="ARegister.aspx.cs" Inherits="JobPortal.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%" style="padding: 45px 300px 45px 300px; margin: 0px; font-family: 'Microsoft Sans Serif'; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #003366; line-height: 50px; text-align: right; background-color: #00CCFF; vertical-align: middle;">
    <tr>
        <td colspan="2">
            <center><b>ADMIN REGISTRATION</b></center>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
        </td>

    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
        </td>
    </tr>
</table>
</asp:Content>
