<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Business_Distr_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Business_Distr_Setup" %>

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
            width: 1300px;
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
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <br />
                <div class="body">
                    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
                        <TabPages>
                            <%--Tab1--%>
                            <dx:BootstrapTabPage Text="Risk/Business Distribution Setup">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <br />
                                        <table class="tab-center">
                                            <tr>
                                                <td><h6>User Defined Treaty Code:</h6></td>
                                                <td>
                                                    <dx:BootstrapTextBox ID="txtTreatyCode" runat="server" Width="350px"></dx:BootstrapTextBox>
                                                </td>
                                                <td><h6>Description:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtDesc" runat="server" Width="350px"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Underwriting Year (YYYY):</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtUndYear" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Record ID:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtRecordID" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Type Of Treaty:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtTreatyType" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Retention Sum Insured:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtPhone1" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Legal Cession Prem (%):</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtLegalCession" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>1st Surplus S.I:</h6></td>
                                                <td><dx:BootstrapTextBox ID="FirstSurplus" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>2nd Surplus S.I:</h6></td>
                                                <td><dx:BootstrapTextBox ID="SecondSurplus" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>No Of Line(s):</h6></td>
                                                <td><dx:BootstrapTextBox ID="NumLines" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Sub-Risk Code:</h6></td>                                                
                                                <td><dx:BootstrapComboBox ID="txtRiskCode" runat="server"></dx:BootstrapComboBox></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                            
                                        </table> 
                                        <br />
                                        <asp:Button ID="btn_Save" runat="server" Text="Save" CssClass="btn btn-deep-purple"/>
                                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="btn btn-danger"/>
                                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                        <hr />

                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapTabPage>

                            <%--Tab2--%>
                            <dx:BootstrapTabPage Text="Treaty List">
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
