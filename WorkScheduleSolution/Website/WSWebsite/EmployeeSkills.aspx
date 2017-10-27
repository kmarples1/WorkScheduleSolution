<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="EmployeeSkills.aspx.cs" Inherits="EmployeeSkills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <h1>Employee Skills</h1>
    </div>
<div class="row">
    <div class="col-md-6">
        <div class="row">
            <p>Select a Skill: 
                <asp:DropDownList ID="SkillDDL" runat="server" DataSourceID="SkillDataSource" DataValueField="SkillID" DataTextField="Description"></asp:DropDownList>
                <asp:Button ID="Search" runat="server" Text="Search" />
            </p>

            <%-- Manage the list view --%>
            <asp:ObjectDataSource ID="SkillDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllSkills" TypeName="WorkScheduleSystem.BLL.SkillController"></asp:ObjectDataSource>
            <asp:ObjectDataSource runat="server" ID="EmployeeSkillDataSource" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllEmployeeSkills" TypeName="WorkScheduleSystem.BLL.EmployeeSkillController"></asp:ObjectDataSource>
        </div>
    </div>
</div>


</asp:Content>

