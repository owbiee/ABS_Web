<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/Settings_Master.Master" AutoEventWireup="true" CodeBehind="Setup_User_Roles.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Setup_User_Roles" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../../Content/Site.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../../alertifyjs%20(2)/alertify.js"></script>
    <script src="../../../alertifyjs%20(2)/alertify.min.js"></script>
    <link href="../../../alertifyjs%20(2)/css/alertify.css" rel="stylesheet"/>

    <style type="text/css">
        .body{
            text-align: center;
            background-color: white;
            margin: 0 auto;
            height: 100%;
            width:75%;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }
        .tab-right{
            float: right;
            padding-right: 10px;
        }

        td{
            padding-bottom: 10px;
            text-align: left;
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
        </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="body">
                    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
                        <TabPages>
                            <%--Tab1--%>
                            <dx:BootstrapTabPage Text="User Setup">
                                <ContentCollection>
                                    <dx:ContentControl>

                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapTabPage>

                            <%--Tab1--%>
                            <dx:BootstrapTabPage Text="Setup Actions">
                                <ContentCollection>
                                    <dx:ContentControl>

                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapTabPage>
                        </TabPages>
                    </dx:BootstrapPageControl>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</asp:Content>
