<%@ Page Title="" Language="C#" MasterPageFile="~/JobsMaster.Master" AutoEventWireup="true" CodeBehind="JMChangePassword.aspx.cs" Inherits="JobPortal.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%">
    <tr>
        <td style="padding: 150px 300px 150px 300px; font-family: verdana; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; background-color: #FFFFCC; vertical-align: middle; text-align: left; line-height: 40px; color: #800000; ">
            <table border="1" width="100%" style="font-family: 'Microsoft Sans Serif'">
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
                     <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" Width="350px" BackColor="#FFCC99" BorderColor="#003366" BorderStyle="Outset" ForeColor="#800000" Height="55px" BorderWidth="2px" OnClick="Button1_Click" />
                 </td>
                 <td>
                     <asp:Button ID="Button2" runat="server" Text="Reset" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" Width="250px" BackColor="#FFCC99" BorderColor="#003366" BorderStyle="Outset" ForeColor="#800000" Height="55px" BorderWidth="2px" />
                 </td>
             </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
