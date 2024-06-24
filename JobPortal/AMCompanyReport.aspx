<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AMCompanyReport.aspx.cs" Inherits="JobPortal.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%">
    <tr>
        <td>
            <table border="1" width="100%" style="padding: 30px 200px 30px 200px; font-family: 'Cascadia Code'; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #663300; background-color: #FFFFCC; line-height: 40px;">
                <tr>
                    <td colspan="2">
                        <center><b>COMPANY REPORT</b></center>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Select Company"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Text="Select" BackColor="#FFCC00" Font-Names="Franklin Gothic Medium" Font-Size="X-Large" ForeColor="#663300" Height="50px" Width="275px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <table border="1" width="100%" style="padding: 30px 400px 30px 400px; font-family: 'cascadia Code'; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #663300; background-color: #FFFFCC; line-height: 30px;">
                <tr>
                     <td colspan="2">
                         <center><b>View Report</b></center>
                     </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Company Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Person:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Mobile:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Address:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Type:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Detail:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
