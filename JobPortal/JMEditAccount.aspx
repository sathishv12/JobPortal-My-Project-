<%@ Page Title="" Language="C#" MasterPageFile="~/JobsMaster.Master" AutoEventWireup="true" CodeBehind="JMEditAccount.aspx.cs" Inherits="JobPortal.WebForm21" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table border="1" width="100%" style="padding: 40px 200px 40px 200px; margin: 0px; font-family: Verdana; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #800000; line-height: 60px; text-align: right; background-color: #FFFFCC; vertical-align: middle;">
     <tr>
         <td colspan="2">
             <center><b>MY ACCOUNT</b></center>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
             <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>

        <td>
            <asp:Label ID="Label7" runat="server" Text="Degree"></asp:Label>
            <asp:DropDownList ID="DropDownList4" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px" Width="275px">
                   <asp:ListItem>12th</asp:ListItem>
                   <asp:ListItem>B.Sc</asp:ListItem>
                   <asp:ListItem>M.Sc</asp:ListItem>
                   <asp:ListItem>BCA</asp:ListItem>
                   <asp:ListItem>MCA</asp:ListItem>
                   <asp:ListItem>B.E</asp:ListItem>
                   <asp:ListItem>M.E</asp:ListItem>
            </asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>

         <td>
             <asp:Label ID="Label8" runat="server" Text="Skill"></asp:Label>
             <asp:DropDownList ID="DropDownList5" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px" Width="275px">
                    <asp:ListItem>ASP.NET</asp:ListItem>
                    <asp:ListItem>ASP.NET</asp:ListItem>
                    <asp:ListItem>SQL</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>PHYTON</asp:ListItem>
             </asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label3" runat="server" Text="UserName:"></asp:Label>
             <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366" ReadOnly="True"></asp:TextBox>
         </td>

         <td>
             <asp:Label ID="Label9" runat="server" Text="Pass Year:"></asp:Label>
             <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label4" runat="server" Text="Mobile:"></asp:Label>
             <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>

         <td>
             <asp:Label ID="Label10" runat="server" Text="Experience:"></asp:Label>
             <asp:DropDownList ID="DropDownList6" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px" Width="275px">
                    <asp:ListItem>1 Year</asp:ListItem>
                    <asp:ListItem>2 Year</asp:ListItem>
                    <asp:ListItem>3 Year</asp:ListItem>
                    <asp:ListItem>4 Year</asp:ListItem>
                    <asp:ListItem>5 Year</asp:ListItem>
                    <asp:ListItem>6 Year</asp:ListItem>
                    <asp:ListItem>7 Year</asp:ListItem>
                    <asp:ListItem>8 Year</asp:ListItem>
                    <asp:ListItem>9 Year</asp:ListItem>
                    <asp:ListItem>10 Year</asp:ListItem>
             </asp:DropDownList>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
             <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>

         <td>
             <asp:Label ID="Label11" runat="server" Text="Detail:"></asp:Label>
             <asp:TextBox ID="TextBox8" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td>
             <asp:Label ID="Label6" runat="server" Text="City:"></asp:Label>
             <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
         </td>
     </tr>
     <tr>
         <td colspan="2" style="text-align: center; vertical-align: middle">
             <asp:Button ID="Button1" runat="server" Text="Button" BackColor="#FFCC99" Font-Names="Microsoft Sans Serif" Font-Size="XX-Large" ForeColor="#800000" Height="50px" Width="200px" BorderColor="#FFCC99" BorderStyle="Outset" BorderWidth="2px" Font-Bold="False" OnClick="Button1_Click" />
         </td>
     </tr>
 </table>
</asp:Content>
