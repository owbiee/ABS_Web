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
                                    <dx:BootstrapComboBox ID="Role_Drop" runat="server" DataSourceID="SqlDataSource1" ValueType="System.Int32"></dx:BootstrapComboBox>
                                    
                                </td>
                                <td>
                                    <dx:BootstrapButton ID="btnAddFunction" runat="server" AutoPostBack="false" Text="+ Add" style="background-color: forestgreen; color: white;"></dx:BootstrapButton>
                                </td>
                            </tr>
                        </table>
                        <br /><br />
                        <asp:Label ID="lblError" runat="server" Text="" style="color: red;"></asp:Label>
                        <hr />

                        
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
