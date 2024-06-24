<%@ Page Title="" Language="C#" MasterPageFile="~/JobsMaster.Master" AutoEventWireup="true" CodeBehind="JMJobMatch.aspx.cs" Inherits="JobPortal.WebForm20" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="Company" />
            <asp:BoundField DataField="JobTitle" HeaderText="Job Title" />
            <asp:BoundField DataField="Degree" HeaderText="Degree" />
            <asp:BoundField DataField="Skill" HeaderText="Skill" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" />
            <asp:BoundField DataField="Detail" HeaderText="Detail" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" />
        </Columns>
    </asp:GridView>

</asp:Content>
