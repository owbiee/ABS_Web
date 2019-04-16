<%@ Page Language="C#" MasterPageFile="~/UI/html/ltr/Settings_Master.Master" AutoEventWireup="true" CodeBehind="User_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.User_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content runat="server" ContentPlaceHolderID="Head">
    <%--<title>ABS | User Setup</title>--%>
    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../../Content/Site.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        .body{
            text-align: center;
            background-color: white;
            margin: 0 auto;
            height: 100%;
            width: 800px;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }

        td{
            padding-bottom: 10px;
        }

        body{
            /*background: url(Graphics.jpg);*/
            background-size: cover;
            background-color: cornflowerblue;
        }

        .center{
            margin: 0 auto;
            /*padding-left: 10px;*/
        }

        .tab-center{
            margin: 0 auto;
        }

        .header{
            width: 800px;
            margin: 0 auto;
        }

        a{
            text-decoration: none;
        }
       
    </style>
</asp:Content>

<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="header">
            <br />
            <h1 class="icon-cogs"> ABS Settings</h1>
            <hr />
            </div>
            <div class="body">
                <br />
                <h4><i class="icon-user-tie"></i>User Setup</h4>
                <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server" ActiveTabIndex="1">
                    <TabPages>
                        <%--Tab1--%>
                        <dx:BootstrapTabPage Text="Register User">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <br />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h6>Username:</h6></td>
                                            <td>
                                                <dx:BootstrapTextBox ID="txtUserName" runat="server" style="padding-right: 15px;"></dx:BootstrapTextBox>
                                            </td>
                                            <td><h6>Email Address:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtEmail" runat="server">
                                                <ValidationSettings ValidationGroup="Validation">
                                        <RequiredField IsRequired="true" ErrorText="E-mail is required"/>
                                     <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                                </ValidationSettings>
                                                </dx:BootstrapTextBox></td>
                                        </tr>
                                        <tr>
                                            <td><h6>Password:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtPassword" runat="server" PasswordChar="*" Password="true" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                            <td><h6>Created By:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtCreatedBy" runat="server"></dx:BootstrapTextBox></td>
                                        </tr>
                                        <tr>
                                            <td><h6>Date:</h6></td>
                                            <td>
                                                <%--<dx:BootstrapDateEdit ID="BootstrapDateEdit1" runat="server"></dx:BootstrapDateEdit>--%>
                                                <dx:BootstrapTextBox ID="txtDate" runat="server" Enabled="false" style="padding-right: 15px;"></dx:BootstrapTextBox>
                                            </td>
                                            <td><h6>Login Count:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtLoginCount" runat="server" Enabled="false"></dx:BootstrapTextBox></td>

                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-success" style="height: 50px; width: 100px; font-weight: bolder;" OnClick="Button1_Click"/>
                                <br /><br />
                                    <asp:Label ID="lblError" runat="server" Text="" style="color: red;"></asp:Label>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <%--Tab2--%>
                        <dx:BootstrapTabPage Text="Assign Roles">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <br />
                                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" OnSelectionChanged="ASPxGridView1_SelectionChanged" DataSourceID="SqlDataSource1" Theme="Glass" CssClass="center" Settings-VerticalScrollableHeight="100">
                                        <Settings ShowFilterRow="True" />
                                        <SettingsDataSecurity AllowEdit="False" AllowInsert="False" />
                                        <SettingsSearchPanel Visible="True" />
                                        <Columns>
                                            <dx:GridViewCommandColumn Caption="Select" ShowSelectButton="true" ></dx:GridViewCommandColumn>
                                            <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="UserName" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Email" ShowInCustomizationForm="True" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Created_By" ShowInCustomizationForm="True" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="Date_Created" ShowInCustomizationForm="True" VisibleIndex="4">
                                            </dx:GridViewDataDateColumn>
                                        </Columns>
                                        <SettingsBehavior AllowSelectByRowClick="true" />
                                        <SettingsPager EnableAdaptivity="true" />
                                        <Styles Header-Wrap="True"/>
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString2 %>" SelectCommand="SELECT [UserName], [Email], [Created_By], [Date_Created] FROM [ABSUSERS]"></asp:SqlDataSource>
                                    <br />
                                    <table class="tab-center">
                                    <tr>
                                        <td><h6>Username:</h6></td>
                                        <td><dx:BootstrapTextBox ID="BootstrapTextBox5" runat="server" Enabled="false" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                        <td><h6>Email:</h6></td>
                                        <td><dx:BootstrapTextBox ID="BootstrapTextBox6" runat="server" Enabled="false" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                        
                                
                                    </tr>
                                </table>
                                <br />
                                    <h3>System Roles</h3>
                                    <hr />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h5>Roles:</h5></td>
                                            <td><dx:BootstrapComboBox ID="BootstrapComboBox1" runat="server">
                                        <Items>
                                            <dx:BootstrapListEditItem Value="Underwriting"/>
                                            <dx:BootstrapListEditItem Value="Reinsurance"/>
                                            <dx:BootstrapListEditItem Value="Investment"/>
                                            <dx:BootstrapListEditItem Value="Accounts"/>
                                            <dx:BootstrapListEditItem Value="Administration"/>
                                            <dx:BootstrapListEditItem Value="Human Resources"/>
                                        </Items>
                                    </dx:BootstrapComboBox></td>                                                                                      
                                        </tr>
                                        <tr>
                                            <td><h5>Functions:</h5></td>
                                            <td><dx:BootstrapComboBox ID="BootstrapComboBox2" runat="server">
                                        <Items>
                                            <dx:BootstrapListEditItem Value="Policy Master Setup"/>
                                            <dx:BootstrapListEditItem Value="Master Fleet Entry"/>
                                            <dx:BootstrapListEditItem Value="Setup WAX Codes"/>
                                            <dx:BootstrapListEditItem Value="Print Vehicle Certificates"/>
                                            <dx:BootstrapListEditItem Value="FSP Policy Details"/>
                                            <dx:BootstrapListEditItem Value="Marine Hull Details"/>
                                        </Items>
                                    </dx:BootstrapComboBox></td>                                                                                      
                                        </tr>
                                        
                                    </table>
                                    <table class="tab-center">
                                        <tr>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox1" runat="server" Text="Create" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox2" runat="server" Text="Edit" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox3" runat="server" Text="Delete" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox4" runat="server" Text="Approve" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Button ID="Button2" runat="server" Text="Assign" class="btn btn-primary"/>
                                    
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <%--Tab3--%>
                        <dx:BootstrapTabPage Text="Manage Roles">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Theme="Glass" CssClass="center">
                                        <SettingsDataSecurity AllowInsert="False" />
                                        <SettingsSearchPanel Visible="True" />
                                        <Columns>
                                            <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                            </dx:GridViewCommandColumn>
                                            <dx:GridViewDataTextColumn FieldName="UserName" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Role_Name" ShowInCustomizationForm="True" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Func_Name" ShowInCustomizationForm="True" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="C_Action" ShowInCustomizationForm="True" VisibleIndex="4">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="E_Action" ShowInCustomizationForm="True" VisibleIndex="5">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="D_Action" ShowInCustomizationForm="True" VisibleIndex="6">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="A_Action" ShowInCustomizationForm="True" VisibleIndex="7">
                                            </dx:GridViewDataTextColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString2 %>" SelectCommand="SELECT [UserName], [Role_Name], [Func_Name], [C_Action], [E_Action], [D_Action], [A_Action] FROM [ABSROLEMGR]"></asp:SqlDataSource>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                    </TabPages>
                </dx:BootstrapPageControl>
            </div>
        
    </form>
</asp:Content>
   
    


