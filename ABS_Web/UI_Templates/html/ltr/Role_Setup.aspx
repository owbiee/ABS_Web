<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/Settings_Master.Master" AutoEventWireup="true" CodeBehind="Role_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Role_Setup" %>

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
        <h3>Roles Setup</h3><br />
    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
        <TabPages>
            <%--Tab1--%>
            <dx:BootstrapTabPage Text="Role Manager">
                <ContentCollection>
                    <dx:ContentControl>
                        <table class="tab-center" >
                            <tr>
                                <td><h6>Role code:</h6></td>
                                <td>
                                    <dx:BootstrapTextBox ID="txtRoleCode" runat="server" style="padding-right: 5px;"></dx:BootstrapTextBox>
                                </td>
                             </tr>
                             <tr>
                                <td><h6>Role Name:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtRoleName" runat="server" style=" width: 300px; padding-left: 7px; padding-right: 7px;"></dx:BootstrapTextBox></td>
                                <td>
                                    <dx:BootstrapButton ID="BootstrapButton1" runat="server" AutoPostBack="false" Text="+ Add" OnClick="BootstrapButton1_Click" style="background-color: forestgreen; color: white;"></dx:BootstrapButton>
                                </td>
                            </tr>
                        </table>
                        <br /><br />
                        <asp:Label ID="lblError" runat="server" Text="" style="color: red;"></asp:Label>
                        <hr />

                        <dx:ASPxGridView ID="Grid_Role" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ROLE_ID" Theme="MaterialCompact" CssClass="center">
                            <SettingsDataSecurity AllowInsert="False" />
                            <SettingsSearchPanel Visible="True" />
                            <Columns>
                                
                                <dx:GridViewCommandColumn ShowDeleteButton="True" ShowEditButton="True" ShowInCustomizationForm="True" VisibleIndex="0">
                                </dx:GridViewCommandColumn>
                                
                                                              
                                <dx:GridViewDataTextColumn FieldName="ROLE_ID" ShowInCustomizationForm="True" VisibleIndex="1" ReadOnly="True">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ROLE_NUM" ShowInCustomizationForm="True" VisibleIndex="2" ReadOnly="True">
                                </dx:GridViewDataTextColumn>
                                
                                <dx:GridViewDataTextColumn FieldName="ROLE_NAME" ShowInCustomizationForm="True" VisibleIndex="3">
                                </dx:GridViewDataTextColumn>
                                
                                <dx:GridViewDataTextColumn FieldName="ROLE_TYPE" ShowInCustomizationForm="True" VisibleIndex="4">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ROLE_FLAG" ShowInCustomizationForm="True" VisibleIndex="5">
                                </dx:GridViewDataTextColumn>
                                
                                <dx:GridViewDataDateColumn FieldName="ROLE_KEYDTE" ShowInCustomizationForm="True" VisibleIndex="6">
                                </dx:GridViewDataDateColumn>
                                <dx:GridViewDataTextColumn FieldName="ROLE_OPERID" ShowInCustomizationForm="True" VisibleIndex="7">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="ROLE_NO" ReadOnly="True" ShowInCustomizationForm="True" VisibleIndex="8">
                                    <EditFormSettings Visible="False" />
                                </dx:GridViewDataTextColumn>
                            </Columns>
                        </dx:ASPxGridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" 
                            SelectCommand="SELECT [ROLE_ID], [ROLE_NUM], [ROLE_NAME], [ROLE_TYPE], [ROLE_FLAG], [ROLE_KEYDTE], [ROLE_OPERID], [ROLE_NO] FROM [ABSROLEMST]" 
                            ConflictDetection="CompareAllValues" 
                            DeleteCommand="DELETE FROM [ABSROLEMST] WHERE [ROLE_ID] = @original_ROLE_ID AND [ROLE_NUM] = @original_ROLE_NUM AND [ROLE_NO] = @original_ROLE_NO AND [ROLE_NAME] = @original_ROLE_NAME AND (([ROLE_TYPE] = @original_ROLE_TYPE) OR ([ROLE_TYPE] IS NULL AND @original_ROLE_TYPE IS NULL)) AND (([ROLE_FLAG] = @original_ROLE_FLAG) OR ([ROLE_FLAG] IS NULL AND @original_ROLE_FLAG IS NULL)) AND [ROLE_KEYDTE] = @original_ROLE_KEYDTE AND (([ROLE_OPERID] = @original_ROLE_OPERID) OR ([ROLE_OPERID] IS NULL AND @original_ROLE_OPERID IS NULL))" 
                            InsertCommand="INSERT INTO [ABSROLEMST] ([ROLE_ID], [ROLE_NUM], [ROLE_NAME], [ROLE_TYPE], [ROLE_FLAG], [ROLE_KEYDTE], [ROLE_OPERID]) VALUES (@ROLE_ID, @ROLE_NUM, @ROLE_NAME, @ROLE_TYPE, @ROLE_FLAG, @ROLE_KEYDTE, @ROLE_OPERID)" 
                            OldValuesParameterFormatString="original_{0}" 
                            UpdateCommand="UPDATE [ABSROLEMST] SET [ROLE_NAME] = @ROLE_NAME, [ROLE_TYPE] = @ROLE_TYPE, [ROLE_FLAG] = @ROLE_FLAG, [ROLE_KEYDTE] = @ROLE_KEYDTE, [ROLE_OPERID] = @ROLE_OPERID WHERE [ROLE_ID] = @original_ROLE_ID AND [ROLE_NUM] = @original_ROLE_NUM AND [ROLE_NO] = @original_ROLE_NO AND [ROLE_NAME] = @original_ROLE_NAME AND (([ROLE_TYPE] = @original_ROLE_TYPE) OR ([ROLE_TYPE] IS NULL AND @original_ROLE_TYPE IS NULL)) AND (([ROLE_FLAG] = @original_ROLE_FLAG) OR ([ROLE_FLAG] IS NULL AND @original_ROLE_FLAG IS NULL)) AND [ROLE_KEYDTE] = @original_ROLE_KEYDTE AND (([ROLE_OPERID] = @original_ROLE_OPERID) OR ([ROLE_OPERID] IS NULL AND @original_ROLE_OPERID IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_ROLE_ID" Type="String" />
                                <asp:Parameter Name="original_ROLE_NUM" Type="String" />
                                <asp:Parameter Name="original_ROLE_NO" Type="Decimal" />
                                <asp:Parameter Name="original_ROLE_NAME" Type="String" />
                                <asp:Parameter Name="original_ROLE_TYPE" Type="String" />
                                <asp:Parameter Name="original_ROLE_FLAG" Type="String" />
                                <asp:Parameter Name="original_ROLE_KEYDTE" Type="DateTime" />
                                <asp:Parameter Name="original_ROLE_OPERID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="ROLE_ID" Type="String" />
                                <asp:Parameter Name="ROLE_NUM" Type="String" />
                                <asp:Parameter Name="ROLE_NAME" Type="String" />
                                <asp:Parameter Name="ROLE_TYPE" Type="String" />
                                <asp:Parameter Name="ROLE_FLAG" Type="String" />
                                <asp:Parameter Name="ROLE_KEYDTE" Type="DateTime" />
                                <asp:Parameter Name="ROLE_OPERID" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="ROLE_NAME" Type="String" />
                                <asp:Parameter Name="ROLE_TYPE" Type="String" />
                                <asp:Parameter Name="ROLE_FLAG" Type="String" />
                                <asp:Parameter Name="ROLE_KEYDTE" Type="DateTime" />
                                <asp:Parameter Name="ROLE_OPERID" Type="String" />
                                <asp:Parameter Name="original_ROLE_ID" Type="String" />
                                <asp:Parameter Name="original_ROLE_NUM" Type="String" />
                                <asp:Parameter Name="original_ROLE_NO" Type="Decimal" />
                                <asp:Parameter Name="original_ROLE_NAME" Type="String" />
                                <asp:Parameter Name="original_ROLE_TYPE" Type="String" />
                                <asp:Parameter Name="original_ROLE_FLAG" Type="String" />
                                <asp:Parameter Name="original_ROLE_KEYDTE" Type="DateTime" />
                                <asp:Parameter Name="original_ROLE_OPERID" Type="String" />
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
