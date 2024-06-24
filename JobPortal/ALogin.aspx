<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="ALogin.aspx.cs" Inherits="JobPortal.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%">
      <tr>
          <td colspan="2" style="font-family: 'Microsoft Sans Serif'; font-size: xx-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #003366; vertical-align: middle; text-align: center; background-color: #00CCFF;">
              ADMIN
          </td>
      </tr>
      <tr>
          <td style="padding: 95px 200px 95px 200px; font-family: 'Microsoft Sans Serif'; font-size: 45px; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; background-color:  #00CCFF; vertical-align: middle; text-align: left; line-height: 65px; color: #003366; ">
              <table border="1" width="100%" style="font-family: 'Microsoft Sans Serif'">
                  <tr>
                      <td colspan="2">
                          <b>Login</b>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                          &nbsp; </td>
                      <td>
                          <asp:TextBox ID="TextBox1" runat="server" Height="45px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large"></asp:TextBox>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                      </td>
                      <td>
                          <asp:TextBox ID="TextBox2" runat="server" Height="45px" Width="300px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large"></asp:TextBox>
                      </td>
                  </tr>
                 <tr>
                     <td>
                         <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="XX-Large" Width="250px" BackColor="#00CCFF" BorderColor="#003366" BorderStyle="Outset" ForeColor="#003366" Height="55px" BorderWidth="2px" OnClick="Button1_Click" />
                     </td>
                     <td>
                         <asp:Button ID="Button2" runat="server" Text="Reset" Font-Bold="True" Font-Names="Microsoft Sans Serif" Font-Size="XX-Large" Width="250px" BackColor="#00CCFF" BorderColor="#003366" BorderStyle="Outset" ForeColor="#003366" Height="55px" BorderWidth="2px" />
                     </td>
                 </tr>
                  <tr>
                      <td colspan="2" style="font-family: 'Microsoft Sans Serif'; font-size: large; text-align: right; line-height: 30px;" rowspan="1">
                          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ARegister.aspx">Create account ?</asp:HyperLink>
                      </td>
                  </tr>
                  <tr>
                      <td colspan="2" style="font-family: 'Microsoft Sans Serif'; font-size: large; text-align: right; line-height: 30px;">
                          <asp:HyperLink ID="HyperLink2" runat="server">Forgot Password ?</asp:HyperLink>
                      </td>
                  </tr>
              </table>
          </td>
          <td width="40%" style="padding: 75px 70px 75px 70px; font-family: 'Microsoft Sans Serif'; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #003366; text-align: center; background-color: #F5F5F5;"><br />
              <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Logo.png" Height="300px" Width="300px" /><br />
              <asp:Label ID="Label1" runat="server" Text="Welcome back!"></asp:Label><br />
          </td>
      </tr>
  </table>
</asp:Content>
