<%@ Page Title="" Language="C#" MasterPageFile="~/CompaniesMaster.Master" AutoEventWireup="true" CodeBehind="CMChangePassword.aspx.cs" Inherits="JobPortal.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%">
    <tr>
        <td style="padding: 150px 400px 150px 400px; font-family: verdana; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; background-color: #FFCCFF; vertical-align: middle; text-align: left; line-height: 40px; color: #660066; ">
            <table border="1" width="100%" style="font-family: 'franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; color: #660066; background-color: #FFCCFF;">
                <tr>
                    <td colspan="2">
                        <center><b>CHANGE PASSWORD</b></center>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="New Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Confirm Password:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="45px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large"></asp:TextBox>
                    </td>
                </tr>
             <tr>
                 <td>
                     <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" Width="350px" BackColor="#FF66CC" BorderColor="#FF66CC" BorderStyle="Outset" ForeColor="#660066" Height="55px" BorderWidth="2px" OnClick="Button1_Click" />
                 </td>
                 <td>
                     <asp:Button ID="Button2" runat="server" Text="Reset" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" Width="250px" BackColor="#FF66CC" BorderColor="#FF66CC" BorderStyle="Outset" ForeColor="#660066" Height="55px" BorderWidth="2px" />
                 </td>
             </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
