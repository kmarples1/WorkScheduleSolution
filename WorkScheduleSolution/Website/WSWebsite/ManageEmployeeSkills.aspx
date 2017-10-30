<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ManageEmployeeSkills.aspx.cs" Inherits="ManageEmployeeSkills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <div class="jumbotron">
        <h1>Manage Employee Skills</h1>
    </div>
<div class="row">
    <div class="col-md-6">
        <div class="row">
            <p>Select Manage a Skill: 

            </p>

            <%-- Manage the list view --%>
            <asp:ListView ID="EmployeeSkillLV" runat="server" DataSourceID="EmployeeSkillDS" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FFF8DC;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeSkillID") %>' runat="server" ID="EmployeeSkillIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeID") %>' runat="server" ID="EmployeeIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("SkillID") %>' runat="server" ID="SkillIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Level") %>' runat="server" ID="LevelLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("YearsOfExperience") %>' runat="server" ID="YearsOfExperienceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HourlyWage") %>' runat="server" ID="HourlyWageLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HomePhone") %>' runat="server" ID="HomePhoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Active") %>' runat="server" ID="ActiveLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #008A8C; color: #FFFFFF;">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("EmployeeSkillID") %>' runat="server" ID="EmployeeSkillIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("EmployeeID") %>' runat="server" ID="EmployeeIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("SkillID") %>' runat="server" ID="SkillIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Level") %>' runat="server" ID="LevelTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("YearsOfExperience") %>' runat="server" ID="YearsOfExperienceTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("HourlyWage") %>' runat="server" ID="HourlyWageTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("HomePhone") %>' runat="server" ID="HomePhoneTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Active") %>' runat="server" ID="ActiveTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("EmployeeSkillID") %>' runat="server" ID="EmployeeSkillIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("EmployeeID") %>' runat="server" ID="EmployeeIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("SkillID") %>' runat="server" ID="SkillIDTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Level") %>' runat="server" ID="LevelTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("YearsOfExperience") %>' runat="server" ID="YearsOfExperienceTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("HourlyWage") %>' runat="server" ID="HourlyWageTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("FirstName") %>' runat="server" ID="FirstNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("LastName") %>' runat="server" ID="LastNameTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("HomePhone") %>' runat="server" ID="HomePhoneTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("Active") %>' runat="server" ID="ActiveTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #DCDCDC; color: #000000;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeSkillID") %>' runat="server" ID="EmployeeSkillIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeID") %>' runat="server" ID="EmployeeIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("SkillID") %>' runat="server" ID="SkillIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Level") %>' runat="server" ID="LevelLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("YearsOfExperience") %>' runat="server" ID="YearsOfExperienceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HourlyWage") %>' runat="server" ID="HourlyWageLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HomePhone") %>' runat="server" ID="HomePhoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Active") %>' runat="server" ID="ActiveLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">EmployeeSkillID</th>
                                        <th runat="server">EmployeeID</th>
                                        <th runat="server">SkillID</th>
                                        <th runat="server">Level</th>
                                        <th runat="server">YearsOfExperience</th>
                                        <th runat="server">HourlyWage</th>
                                        <th runat="server">FirstName</th>
                                        <th runat="server">LastName</th>
                                        <th runat="server">HomePhone</th>
                                        <th runat="server">Active</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                                <asp:DataPager runat="server" ID="DataPager1">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                        <asp:NumericPagerField></asp:NumericPagerField>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False"></asp:NextPreviousPagerField>
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">
                        <td>
                            <asp:Button runat="server" CommandName="Delete" Text="Delete" ID="DeleteButton" />
                            <asp:Button runat="server" CommandName="Edit" Text="Edit" ID="EditButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeSkillID") %>' runat="server" ID="EmployeeSkillIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("EmployeeID") %>' runat="server" ID="EmployeeIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("SkillID") %>' runat="server" ID="SkillIDLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Level") %>' runat="server" ID="LevelLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("YearsOfExperience") %>' runat="server" ID="YearsOfExperienceLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HourlyWage") %>' runat="server" ID="HourlyWageLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("FirstName") %>' runat="server" ID="FirstNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("LastName") %>' runat="server" ID="LastNameLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("HomePhone") %>' runat="server" ID="HomePhoneLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("Active") %>' runat="server" ID="ActiveLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>

            <asp:ObjectDataSource ID="EmployeeSkillDS" runat="server" DataObjectTypeName="WorkSchedule.Data.Entities.EmployeeSkill" DeleteMethod="DeleteEmployeeSkill" InsertMethod="AddEmployeeSkill" OldValuesParameterFormatString="original_{0}" SelectMethod="ListAllEmployeeSkills" TypeName="WorkScheduleSystem.BLL.EmployeeSkillController" UpdateMethod="UpdateEmployeeSkill"></asp:ObjectDataSource>
        </div>
    </div>
</div>

</asp:Content>

