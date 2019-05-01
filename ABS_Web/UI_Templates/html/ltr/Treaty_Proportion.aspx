<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Treaty_Proportion.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Treaty_Proportion" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.css" rel="stylesheet"/>
    <link href="../../../Content/Site.css" rel="stylesheet"/>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet"/>

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
                            <dx:BootstrapTabPage Text="Treaty Proportion Data Entry">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <br />
                                        <table class="tab-center">
                                            <tr>
                                                <td><h6>Record Type:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtRecordType" runat="server" Width="300px"></dx:BootstrapTextBox></td>
                                                <td></td>
                                          
                                            </tr>
                                            <tr>
                                                <td><h6>Treaty Year (YYYY):</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtTreatyYear" runat="server"></dx:BootstrapTextBox></td>
                                                <td></td>
                                             
                                            </tr>
                                            <tr>
                                                <td><h6>Risk Sub Code:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtSubRisk" runat="server"></dx:BootstrapTextBox></td>
                                                <td><dx:BootstrapUploadControl ID="BootstrapUploadControl1" runat="server"></dx:BootstrapUploadControl></td>
                                                
                                            </tr>
                                            <tr>
                                                <td><h6>Treaty Coy Code:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtTreatyCoy" runat="server"></dx:BootstrapTextBox></td>
                                                <td><dx:BootstrapUploadControl ID="txtBrowseCoy" runat="server"></dx:BootstrapUploadControl></td>
                                                
                                               
                                            </tr>
                                            <tr>
                                                <td><h6>Treaty Premium Rate:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox5" runat="server"></dx:BootstrapTextBox></td>
                                                <td></td>
                                             
                                            </tr>
                                            <tr>
                                                <td><h6>Treaty Commission Rate:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox6" runat="server"></dx:BootstrapTextBox></td>
                                                <td></td>
                                            
                                            </tr>
                                            
                                        </table> 
                                        <br />
                                        <asp:Button ID="btn_Save" runat="server" Text="Save" CssClass="btn btn-deep-purple"/>
                                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="btn btn-danger"/><br />
                                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                        <hr />

                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapTabPage>

                            <%--Tab2--%>
                            <dx:BootstrapTabPage Text="Risk List">
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
