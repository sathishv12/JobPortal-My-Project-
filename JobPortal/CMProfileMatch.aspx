<%@ Page Title="" Language="C#" MasterPageFile="~/CompaniesMaster.Master" AutoEventWireup="true" CodeBehind="CMProfileMatch.aspx.cs" Inherits="JobPortal.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%">
    <tr>
        <td>
            <table border="1" width="100%" style="padding: 10px 200px 10px 200px; font-family: 'Cascadia Code'; font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #663300; background-color: #FFFFCC; line-height: 40px;">
                <tr>
                    <td colspan="2">
                        <center><b>Search JobSeeker</b></center>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Select JobSeeker"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="200px"></asp:DropDownList>
                        <asp:Button ID="Button1" runat="server" Text="Select" BackColor="#FFCC00" Font-Names="Franklin Gothic Medium" Font-Size="X-Large" ForeColor="#663300" Height="50px" Width="275px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <table border="1" width="100%" style="padding: 10px 400px 10px 400px; font-family: 'cascadia Code'; font-size: x-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #663300; background-color: #FFFFCC; line-height: 30px;">
                <tr>
                     <td colspan="2">
                         <center><b>View Details</b></center>
                     </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Last Name:"></asp:Label>
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
                        <asp:Label ID="Label7" runat="server" Text="Degree:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Skill:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Pass Year:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Experience:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Height="30px" Width="275px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="Detail:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Height="30px" Width="275px" OnTextChanged="TextBox10_TextChanged"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>
