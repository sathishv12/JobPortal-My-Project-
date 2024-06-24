<%@ Page Title="" Language="C#" MasterPageFile="~/CompaniesMaster.Master" AutoEventWireup="true" CodeBehind="CMPostNewJob.aspx.cs" Inherits="JobPortal.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%" style="padding: 65px 420px 65px 420px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #660066; background-color: #FFCCFF; line-height: 40px;">
        <tr>
             <td colspan="2">
                 <center><b>POST NEW JOB</b></center>
             </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Company Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Job Title:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Degree:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="40px" Width="275px">
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
                <asp:Label ID="Label4" runat="server" Text="Skill:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="40px" Width="275px">
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
                <asp:Label ID="Label5" runat="server" Text="Salary:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Experience"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="40px" Width="275px">
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
                <asp:Label ID="Label7" runat="server" Text="No of Vacancy:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Detail:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="275px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Post Job" BackColor="#FFCCFF" Font-Names="Franklin Gothic Medium" Font-Size="X-Large" ForeColor="#660066" Height="50px" Width="275px" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="#FFCCFF" Font-Names="Franklin Gothic Medium" Font-Size="X-Large" ForeColor="#660066" Height="50px" Width="275px" />
            </td>
        </tr>
    </table>
</asp:Content>
