<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forms_Template.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Forms_Template" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forms Creation Template</title>
    <meta charset="utf-8" />
    <link href="../../../Content/Site.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap-theme.css" rel="stylesheet" />
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="body"><br />
            <h4>Form Template</h4><br />
            <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
        <TabPages>
            <%--Tab1--%>
            <dx:BootstrapTabPage Text="Role Manager">
                <ContentCollection>
                    <dx:ContentControl>
                        <%--Add Content Here--%>
                        <table class="tab-center">
                            <tr>
                            <td><asp:Label ID="Label1" runat="server" Text="UserName" ></asp:Label></td>
                            <td><dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                <td><asp:Label ID="Label3" runat="server" Text="Address:" style="padding-right: 15px;"></asp:Label></td>
                            <td><dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server"></dx:BootstrapTextBox></td>
                                </tr>

                            <tr>
                            <td><asp:Label ID="Label4" runat="server" Text="Phone No:" ></asp:Label></td>
                            <td><dx:BootstrapTextBox ID="BootstrapTextBox3" runat="server" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                <td><asp:Label ID="Label5" runat="server" Text="Email:" style="padding-right: 15px;"></asp:Label></td>
                            <td><dx:BootstrapTextBox ID="BootstrapTextBox4" runat="server"></dx:BootstrapTextBox></td>
                                </tr>
                        </table>

                        <asp:Button ID="Button1" runat="server" Text="Save" CssClass="btn btn-primary" />
                        <asp:Button ID="Button2" runat="server" Text="Delete" CssClass="btn btn-danger" />
                        
                        
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>
            <%--Tab End--%>

            <%--Tab2--%>
            <dx:BootstrapTabPage Text="Report">
                <ContentCollection>
                    <dx:ContentControl>
                        <%--Add Another Content--%>
                        <asp:Label ID="Label2" runat="server" Text="UserName"></asp:Label>
                        <dx:BootstrapTextBox ID="txtpassword" runat="server" PasswordChar="*" Password="true"></dx:BootstrapTextBox>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>
            <%--Tab2 End--%>

        </TabPages>
    </dx:BootstrapPageControl>
        </div>
    </form>
</body>
</html>
