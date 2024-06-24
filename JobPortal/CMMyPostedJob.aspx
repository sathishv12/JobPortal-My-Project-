<%@ Page Title="" Language="C#" MasterPageFile="~/CompaniesMaster.Master" AutoEventWireup="true" CodeBehind="CMMyPostedJob.aspx.cs" Inherits="JobPortal.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
