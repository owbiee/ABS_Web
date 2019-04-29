<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Company_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Company_Setup" %>

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
            padding-right: 30px;
            text-align:left;
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
                            <dx:BootstrapTabPage Text="Company Setup">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <br />
                                        <table class="tab-center">
                                            <tr>
                                                <td><h6>Company Name:</h6></td>
                                                <td>
                                                    <dx:BootstrapTextBox ID="txtCompanyName" runat="server"></dx:BootstrapTextBox>
                                                </td>
                                                <td><h6>Reg No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtRegNo" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Address Line1:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtAddress1" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Address Line2:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtAddress2" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Address Line3:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtAddress3" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Phone Line1:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtPhone1" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Phone Line2:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtPhone2" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Phone Line3:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtPhone3" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Email 1:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtEmail1" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Email 2:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtEmail2" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Email 3:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtEmail3" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Web Address1:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtWebAdd1" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Web Address2:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtWebAdd2" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Business Activity1:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtBusinessAct1" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Business Activity2:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtBusinessAct2" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Business Activity3:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtBusinessAct3" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Reg Date:</h6></td>
                                                <td>
                                                    <dx:BootstrapDateEdit ID="RegDate" runat="server"></dx:BootstrapDateEdit>
                                                </td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </table> 
                                        <br />
                                        <asp:Button ID="btn_Save" runat="server" Text="Save" CssClass="btn btn-deep-purple"/>
                                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="btn btn-danger"/>
                                        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapTabPage>

                            <%--Tab2--%>
                            <dx:BootstrapTabPage Text="Miscellaneous Info">
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
