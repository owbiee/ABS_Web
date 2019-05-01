﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Flood_Rates_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Flood_Rates_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../../Content/Site.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />

    <style>
        .body{
            text-align: center;
            background-color: white;
            margin: 0 auto;
            height: 100%;
            width: 1200px;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }
        .tab-center{
            margin: 0 auto;
           
        }
        
        td
        {
            padding-bottom: 10px;
            padding-right: 30px;
            text-align:left;
            /*width: 250px;*/
        }
        .textBox{
            width: 250px;
        }



    </style>  
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <br />
        <div class="body">
            <asp:ScriptManager runat="server"></asp:ScriptManager>
            <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
                        <TabPages>
                            <%--Tab1--%>
                            <dx:BootstrapTabPage Text="Flood/Earthquake & Fire Rates Setup">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <br />
                                        <table class="tab-center">
                                            <tr>
                                                <td><h6>Record Type:</h6></td>
                                                <td>
                                                    <dx:BootstrapComboBox ID="txtRecordType" runat="server"></dx:BootstrapComboBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><h6>U/Wr. Year(YYYY):</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtUwYear" runat="server" class="textBox"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Sub Risk Code:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtSubRisk" runat="server" class="textBox"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Transaction Rate:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtTransact" runat="server" class="textBox"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Transaction Description:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtTransactDesc" runat="server" class="textBox"></dx:BootstrapTextBox></td>
                                            </tr>
                                            
                                        </table>
                                        <br />
                                        <asp:Button ID="btn_Save" runat="server" Text="Save" CssClass="btn btn-deep-purple" OnClick="btn_Save_Click"/>
                                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="btn btn-blue-grey"/>
                                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" CssClass="btn btn-danger"/>
                                        <br /><br />
                                        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</asp:Content>
