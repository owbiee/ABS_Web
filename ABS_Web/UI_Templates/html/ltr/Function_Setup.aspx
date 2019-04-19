<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/Settings_Master.Master" AutoEventWireup="true" CodeBehind="Function_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Function_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../../Content/Site.css" rel="stylesheet" />
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
            width: 70%;
        }

        .tab-center{
            margin: 0 auto;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <br />
    <div class="body">
        <br />
        <h3>Functions Setup</h3><br />
    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
        <TabPages>
            <%--Tab1--%>
            <dx:BootstrapTabPage Text="Function Manager">
                <ContentCollection>
                    <dx:ContentControl>
                        <table class="tab-center" >
                            <tr>
                                <td><h6>Function Name:</h6></td>
                                <td>
                                    <dx:BootstrapTextBox ID="txtRoleCode" runat="server" style="padding-right: 5px;"></dx:BootstrapTextBox>
                                </td>
                             </tr>
                             <tr>
                                <td><h6>Select Role Name:</h6></td>
                                <td>
                                    <dx:BootstrapComboBox ID="Role_Drop" runat="server" TextField="ROLE_NAME" DataSourceID="SqlDataSource1"></dx:BootstrapComboBox>
                                    
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [ROLE_NAME] FROM [ABSROLEMST]"></asp:SqlDataSource>
                                    
                                </td>
                                <td>
                                    <dx:BootstrapButton ID="btnAddFunction" runat="server" AutoPostBack="false" Text="+ Add" style="background-color: forestgreen; color: white;"></dx:BootstrapButton>
                                </td>
                            </tr>
                        </table>
                        <br /><br />
                        <asp:Label ID="lblError" runat="server" Text="" style="color: red;"></asp:Label>
                        <hr />
                        <%--GridView--%>
                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" KeyFieldName="TASK_ID" Theme="iOS" CssClass="center">
                            <SettingsSearchPanel Visible="True" />
                            <Columns>
                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                                </dx:GridViewCommandColumn>
                                <dx:GridViewDataTextColumn FieldName="TASK_ID" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="1">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TASK_NO" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="2">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TASK_NUM" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TASK_ROLE_NUM" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="TASK_NAME" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn FieldName="TASK_KEYDTE" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataDateColumn>
                            </Columns>
                        </dx:ASPxGridView>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" DeleteCommand="DELETE FROM [ABSROLETASK] WHERE [TASK_ID] = @original_TASK_ID AND [TASK_NO] = @original_TASK_NO AND [TASK_NUM] = @original_TASK_NUM AND (([TASK_ROLE_NUM] = @original_TASK_ROLE_NUM) OR ([TASK_ROLE_NUM] IS NULL AND @original_TASK_ROLE_NUM IS NULL)) AND (([TASK_NAME] = @original_TASK_NAME) OR ([TASK_NAME] IS NULL AND @original_TASK_NAME IS NULL)) AND (([TASK_KEYDTE] = @original_TASK_KEYDTE) OR ([TASK_KEYDTE] IS NULL AND @original_TASK_KEYDTE IS NULL))" InsertCommand="INSERT INTO [ABSROLETASK] ([TASK_ID], [TASK_NUM], [TASK_ROLE_NUM], [TASK_NAME], [TASK_KEYDTE]) VALUES (@TASK_ID, @TASK_NUM, @TASK_ROLE_NUM, @TASK_NAME, @TASK_KEYDTE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [TASK_ID], [TASK_NO], [TASK_NUM], [TASK_ROLE_NUM], [TASK_NAME], [TASK_KEYDTE] FROM [ABSROLETASK]" UpdateCommand="UPDATE [ABSROLETASK] SET [TASK_ROLE_NUM] = @TASK_ROLE_NUM, [TASK_NAME] = @TASK_NAME, [TASK_KEYDTE] = @TASK_KEYDTE WHERE [TASK_ID] = @original_TASK_ID AND [TASK_NO] = @original_TASK_NO AND [TASK_NUM] = @original_TASK_NUM AND (([TASK_ROLE_NUM] = @original_TASK_ROLE_NUM) OR ([TASK_ROLE_NUM] IS NULL AND @original_TASK_ROLE_NUM IS NULL)) AND (([TASK_NAME] = @original_TASK_NAME) OR ([TASK_NAME] IS NULL AND @original_TASK_NAME IS NULL)) AND (([TASK_KEYDTE] = @original_TASK_KEYDTE) OR ([TASK_KEYDTE] IS NULL AND @original_TASK_KEYDTE IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_TASK_ID" Type="String" />
                                <asp:Parameter Name="original_TASK_NO" Type="Decimal" />
                                <asp:Parameter Name="original_TASK_NUM" Type="String" />
                                <asp:Parameter Name="original_TASK_ROLE_NUM" Type="String" />
                                <asp:Parameter Name="original_TASK_NAME" Type="String" />
                                <asp:Parameter Name="original_TASK_KEYDTE" Type="DateTime" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="TASK_ID" Type="String" />
                                <asp:Parameter Name="TASK_NUM" Type="String" />
                                <asp:Parameter Name="TASK_ROLE_NUM" Type="String" />
                                <asp:Parameter Name="TASK_NAME" Type="String" />
                                <asp:Parameter Name="TASK_KEYDTE" Type="DateTime" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="TASK_ROLE_NUM" Type="String" />
                                <asp:Parameter Name="TASK_NAME" Type="String" />
                                <asp:Parameter Name="TASK_KEYDTE" Type="DateTime" />
                                <asp:Parameter Name="original_TASK_ID" Type="String" />
                                <asp:Parameter Name="original_TASK_NO" Type="Decimal" />
                                <asp:Parameter Name="original_TASK_NUM" Type="String" />
                                <asp:Parameter Name="original_TASK_ROLE_NUM" Type="String" />
                                <asp:Parameter Name="original_TASK_NAME" Type="String" />
                                <asp:Parameter Name="original_TASK_KEYDTE" Type="DateTime" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

            <%--Tab2--%>
            <dx:BootstrapTabPage Text="Report">
                <ContentCollection>
                    <dx:ContentControl>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>
        </TabPages>
    </dx:BootstrapPageControl>
        </div>
        </form>
</asp:Content>
