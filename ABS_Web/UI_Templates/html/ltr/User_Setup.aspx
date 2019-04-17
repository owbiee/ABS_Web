<%@ Page Language="C#" MasterPageFile="~/UI/html/ltr/Settings_Master.Master" AutoEventWireup="true" CodeBehind="User_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.User_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


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
            width:70%;
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
            border-radius: 10px;
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
                <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server" ActiveTabIndex="0">
                    <TabPages>
                        <%--Tab1--%>
                        <dx:BootstrapTabPage Text="Register User">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <br />
                                    <table class="tab-center" style="width: 90%;">
                                        <tr style="display: none;">
                                            <td>RefID (Auto)</td>
                                            <td><dx:BootstrapTextBox ID="txtRefID" runat="server" style="padding-right: 15px;" Enabled="false" ></dx:BootstrapTextBox></td>
                                        <td></td>
                                        <td></td>
                                            
                                        </tr>
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
                                            <td><dx:BootstrapTextBox ID="txtCreatedBy" Enabled="false" runat="server"></dx:BootstrapTextBox></td>
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
                                    <hr />
                                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

                                    <%--Grid--%>
                                    <asp:GridView ID="Grid_Register" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="center" Width="90%" CellSpacing="1" CellPadding="7" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="Grid_Register_SelectedIndexChanged" DataKeyNames="UserID">
                                        <Columns>

                                            <asp:CommandField ShowSelectButton="True" />

                                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
                                            <asp:BoundField DataField="Date_Created" HeaderText="Date_Created" SortExpression="Date_Created" />
                                            <asp:BoundField DataField="UserID" HeaderText="RefID" SortExpression="UserID" Visible="false" ReadOnly="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" ForeColor="#003399" />
                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString2 %>" SelectCommand="SELECT  [UserName], [Email], [Created_By], [Date_Created], [UserID] FROM [ABSUSERS] ORDER BY [Date_Created] DESC"></asp:SqlDataSource>
                                
                                    <%--<asp:RoundedCornersExtender ID="GridView1_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="GridView1">
                                    </asp:RoundedCornersExtender>--%>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <%--Tab2--%>
                        <dx:BootstrapTabPage Text="Assign Roles">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <br />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h6>Search:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtSearch" runat="server"></dx:BootstrapTextBox></td>
                                        </tr>
                                    </table>
                                    <br />
                                    
                                    <asp:GridView ID="GridUser" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridUser_SelectedIndexChanged" CssClass="center">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Created_By" HeaderText="Created_By" SortExpression="Created_By" />
                                            <asp:BoundField DataField="Date_Created" HeaderText="Date_Created" SortExpression="Date_Created" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [UserName], [Email], [Created_By], [Date_Created] FROM [ABSUSERS]"></asp:SqlDataSource>
                                     <br />
                                    <table class="tab-center">
                                    <tr>
                                        <td><h6>Username:</h6></td>
                                        <td><dx:BootstrapTextBox ID="txt_Username" runat="server" Enabled="false" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                        <td><h6>Email:</h6></td>
                                        <td><dx:BootstrapTextBox ID="txt_Email" runat="server" Enabled="false" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                        
                                
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
                                    <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Theme="Glass" CssClass="center" KeyFieldName="UserID">
                                        <SettingsDataSecurity AllowInsert="False" />
                                        <SettingsSearchPanel Visible="True" />
                                        <Columns>
                                            <dx:GridViewDataTextColumn FieldName="UserID" ShowInCustomizationForm="True" VisibleIndex="0" ReadOnly="True">
                                                <EditFormSettings Visible="False" />
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="UserName" ShowInCustomizationForm="True" VisibleIndex="1">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Email" ShowInCustomizationForm="True" VisibleIndex="2">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataTextColumn FieldName="Created_By" ShowInCustomizationForm="True" VisibleIndex="3">
                                            </dx:GridViewDataTextColumn>
                                            <dx:GridViewDataDateColumn FieldName="Date_Created" ShowInCustomizationForm="True" VisibleIndex="4">
                                            </dx:GridViewDataDateColumn>
                                        </Columns>
                                    </dx:ASPxGridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString2 %>" SelectCommand="SELECT  [UserName], [Email], [Created_By], [Date_Created], [UserID] FROM [ABSUSERS] ORDER BY [Date_Created] DESC"></asp:SqlDataSource>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <dx:BootstrapTabPage Text="Other Setup">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <h3>Nothing Here!</h3>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                    </TabPages>
                </dx:BootstrapPageControl>
            </div>
        
    </form>
</asp:Content>
   
    


