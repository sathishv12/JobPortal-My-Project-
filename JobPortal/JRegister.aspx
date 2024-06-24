<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="JRegister.aspx.cs" Inherits="JobPortal.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="1" width="100%" style="padding: 0px 300px 0px 300px; margin: 0px; font-family: 'Microsoft Sans Serif'; font-size: xx-large; font-weight: normal; font-style: normal; font-variant: normal; text-transform: none; color: #003366; line-height: 50px; text-align: right; background-color: #00CCFF; vertical-align: middle;">
        <tr>
            <td colspan="2">
                <center><b>JOBSEEKER REGISTRATION</b></center>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="First Name:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>

           <td>
                <asp:Label ID="Label9" runat="server" Text="Address:"></asp:Label>
                <asp:TextBox ID="TextBox7" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Last Name:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>

            <td>
                <asp:Label ID="Label10" runat="server" Text="City:"></asp:Label>
                <asp:TextBox ID="TextBox8" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>

            <td>
                <asp:Label ID="Label11" runat="server" Text="Degree:"></asp:Label>
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
                <asp:Label ID="Label4" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>

            <td>
                <asp:Label ID="Label12" runat="server" Text="Skill:"></asp:Label>
                <asp:DropDownList ID="DropDownList5" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px" Width="275px">
                    <asp:ListItem>ASP.NET</asp:ListItem>
                    <asp:ListItem>ADO.NET</asp:ListItem>
                    <asp:ListItem>SQL</asp:ListItem>
                    <asp:ListItem>PHP</asp:ListItem>
                    <asp:ListItem>PHYTON</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Confirm Password:"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>

            <td>
                <asp:Label ID="Label13" runat="server" Text="Pass Year:"></asp:Label>
                <asp:TextBox ID="TextBox9" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Mobile:"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Experience:"></asp:Label>
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
                <asp:Label ID="Label7" runat="server" Text="Gender:"></asp:Label>
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366" OnCheckedChanged="RadioButton1_CheckedChanged" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366" OnCheckedChanged="RadioButton2_CheckedChanged" />
            </td>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Detail:"></asp:Label>
                <asp:TextBox ID="TextBox10" runat="server" Height="40px" Width="275px" Font-Names="Microsoft Sans Serif" Font-Size="X-Large" ForeColor="#003366"></asp:TextBox>
            </td>
        </tr>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label8" runat="server" Text="Birth Date:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem>31</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList2" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px">
                    <asp:ListItem>January</asp:ListItem>
                    <asp:ListItem>February</asp:ListItem>
                    <asp:ListItem>March</asp:ListItem>
                    <asp:ListItem>April</asp:ListItem>
                    <asp:ListItem>May</asp:ListItem>
                    <asp:ListItem>June</asp:ListItem>
                    <asp:ListItem>July</asp:ListItem>
                    <asp:ListItem>August</asp:ListItem>
                    <asp:ListItem>September</asp:ListItem>
                    <asp:ListItem>October</asp:ListItem>
                    <asp:ListItem>November</asp:ListItem>
                    <asp:ListItem>December</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server" Font-Names="Microsoft Sans Serif" Font-Size="Large" ForeColor="#003366" Height="45px">
                    <asp:ListItem>1970</asp:ListItem>
                    <asp:ListItem>1971</asp:ListItem>
                    <asp:ListItem>1972</asp:ListItem>
                    <asp:ListItem>1973</asp:ListItem>
                    <asp:ListItem>1974</asp:ListItem>
                    <asp:ListItem>1975</asp:ListItem>
                    <asp:ListItem>1976</asp:ListItem>
                    <asp:ListItem>1977</asp:ListItem>
                    <asp:ListItem>1978</asp:ListItem>
                    <asp:ListItem>1979</asp:ListItem>
                    <asp:ListItem>1980</asp:ListItem>
                    <asp:ListItem>1981</asp:ListItem>
                    <asp:ListItem>1982</asp:ListItem>
                    <asp:ListItem>1983</asp:ListItem>
                    <asp:ListItem>1984</asp:ListItem>
                    <asp:ListItem>1985</asp:ListItem>
                    <asp:ListItem>1986</asp:ListItem>
                    <asp:ListItem>1987</asp:ListItem>
                    <asp:ListItem>1988</asp:ListItem>
                    <asp:ListItem>1989</asp:ListItem>
                    <asp:ListItem>1990</asp:ListItem>
                    <asp:ListItem>1991</asp:ListItem>
                    <asp:ListItem>1992</asp:ListItem>
                    <asp:ListItem>1993</asp:ListItem>
                    <asp:ListItem>1994</asp:ListItem>
                    <asp:ListItem>1995</asp:ListItem>
                    <asp:ListItem>1996</asp:ListItem>
                    <asp:ListItem>1997</asp:ListItem>
                    <asp:ListItem>1998</asp:ListItem>
                    <asp:ListItem>1999</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center; vertical-align: middle">
                <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#00CCFF" Font-Names="Microsoft Sans Serif" Font-Size="XX-Large" ForeColor="#003366" Height="50px" Width="300px" BorderColor="#003366" BorderStyle="Outset" BorderWidth="2px" Font-Bold="False" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
