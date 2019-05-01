<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Branch_Codes_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Branch_Codes_Setup" %>

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
        h2{
            padding-top: 15px;
        }
        td
        {
            padding-bottom: 10px;
            padding-right: 20px;
            text-align: left;
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
        <br />
        <h5>Branch Codes Setup</h5><br />
    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
        <TabPages>
            <%--Tab1--%>
            <dx:BootstrapTabPage Text="General">
                <ContentCollection>
                    <dx:ContentControl>
                        <br />
                        <table class="tab-center">
                            <tr>
                                <td><h6>Rec ID:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtRecID" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                <td><h6>Branch Code:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtBranchCode" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                <td><h6>Branch Manager:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtBranchMgr" runat="server"></dx:BootstrapTextBox></td>                                
                            </tr>
                            <tr>
                                <td><h6>Name:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtName" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                <td><h6>Address:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtAddress" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                <td><h6>Region:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtRegion" runat="server"></dx:BootstrapTextBox></td>                                
                            </tr>
                        </table><br />
                        <asp:Button ID="btn_Save" runat="server" Text="Save Data" CssClass="btn btn-green" OnClick="btn_Save_Click"/>
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="btn btn-blue-grey"/>
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" CssClass="btn btn-danger"/>
                        <br />
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>
            <%--Tab2--%>
            <dx:BootstrapTabPage Text="Miscellaneous">
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
