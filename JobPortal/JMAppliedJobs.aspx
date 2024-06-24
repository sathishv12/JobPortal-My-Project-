<%@ Page Title="" Language="C#" MasterPageFile="~/JobsMaster.Master" AutoEventWireup="true" CodeBehind="JMAppliedJobs.aspx.cs" Inherits="JobPortal.WebForm29" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table border="1" width="100%" style="padding: 0px; margin: 0px; font-family: 'franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #660066; line-height: 25px; text-align: right; background-color: #FFCCFF; vertical-align: middle;">
    <tr>
        <td colspan="2">
            <h2><center><b>APPLY JOB</b></center></h2>
        </td>
    </tr>
                        <tr>
                        <td>
                            Company Name</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" Height="40px" Width="200px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                <asp:ListItem>ASP.NET</asp:ListItem>
                                <asp:ListItem>ADO.NET</asp:ListItem>
                                <asp:ListItem>SQL</asp:ListItem>
                                <asp:ListItem>PHP</asp:ListItem>
                                <asp:ListItem>PHYTON</asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="Button1" runat="server" Text="Select" BackColor="#FFCCFF" Font-Names="Franklin Gothic Medium" Font-Size="X-Large" ForeColor="#660066" Height="50px" Width="275px" OnClick="Button1_Click" />
                        </td>
                    </tr>
    <tr>
        <td>
            <table border="1" width="50%" style="border-width: 4px; border-top-color: #660066; ">
                 <tr>
                     <td>
                         <asp:Label ID="Label1" runat="server" Text="Job Title:"></asp:Label>
                         <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="200px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label2" runat="server" Text="Degree:"></asp:Label>
                         <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="200px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label3" runat="server" Text="Skill:"></asp:Label>
                         <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="200px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label4" runat="server" Text="Salary:"></asp:Label>
                         <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="200px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label5" runat="server" Text="Detail:"></asp:Label>
                         <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="200px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
                     </td>
                 </tr>
                 <tr>
                     <td>
                         <asp:Label ID="Label7" runat="server" Text="Experience:"></asp:Label>
                         <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="200px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
                     </td>
                 </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                    </td>
                    <td>

                    </td>
                </tr>
            </table>
     </td>
 </tr>
</table>
</asp:Content>
