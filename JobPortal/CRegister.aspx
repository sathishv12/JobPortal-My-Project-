
<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="CRegister.aspx.cs" Inherits="JobPortal.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%" style="padding: 0px 500px 0px 500px; margin: 0px; font-family: 'Microsoft Sans Serif'; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #003366; line-height: 38px; text-align: right; background-color: #00CCFF; vertical-align: middle;">
     <tr>
         <td colspan="2">
             <center><b>COMPANY REGISTRATION</b></center>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label1" runat="server" Text="Company Name:"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label2" runat="server" Text="UserName:"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label3" runat="server" Text="Password:"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label4" runat="server" Text="Confirm Password:"></asp:Label>
             <asp:TextBox ID="TextBox4" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label5" runat="server" Text="Contact Person:"></asp:Label>
             <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label6" runat="server" Text="Mobile:"></asp:Label>
             <asp:TextBox ID="TextBox6" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label7" runat="server" Text="Address:"></asp:Label>
             <asp:TextBox ID="TextBox7" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
      <tr>
         <td>
             <asp:Label ID="Label8" runat="server" Text="City:"></asp:Label>
             <asp:TextBox ID="TextBox8" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label9" runat="server" Text="Type:"></asp:Label>
             <asp:TextBox ID="TextBox9" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label10" runat="server" Text="Detail:"></asp:Label>
             <asp:TextBox ID="TextBox10" runat="server" Height="35px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td colspan="2" style="text-align: center; vertical-align: middle">
             <asp:Button ID="Button1" runat="server" Text="Button" BackColor="#00CCFF" Font-Names="Microsoft Sans Serif" Font-Size="XX-Large" ForeColor="#003366" Height="50px" Width="200px" BorderColor="#003366" BorderStyle="Outset" BorderWidth="2px" Font-Bold="False" OnClick="Button1_Click" />
         </td>
     </tr>
 </table>
</asp:Content>
