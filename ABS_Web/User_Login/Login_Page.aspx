<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="ABS_Web.User_Login.Login_Page" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ABS|Login</title>
    <style>
        .login-controls{
            background-color: white;
            width: 500px;
            float: right;
            height: 800px;
            padding-right: 20px;
            /*margin-top: -50px;*/
            /*margin-right: -8px;*/
            text-align: center;
            /*margin-bottom: -30px;*/
            
        }
        
        .body{
            text-align: center;
            background-color: white;
            margin: 0 auto;
            height: 100%;
            width: 600px;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }

        .tab-center{
            margin: 0 auto;
        }

        #Label1, #Label2{
            font-size: 20px;
            font-family: Calibri;
            font-family: 'Lucida Sans Unicode';
        }
        #TextBox1, #TextBox2{
            height: 26px;
            width: 250px;
            border-radius: 7px;
            font-family: 'Lucida Sans Unicode';
        }
        #Button1{
            /*height: 40px;
            width: 100px;
            background-color: blue;
            color: white;
            /*font-size: 30px;*/
            border-radius: 8px;
            font-family: 'Lucida Sans Unicode';
        }
        .image{
            height:100px;
            width: 100px;
            border-radius: 100%;
        }

        .image1{
            width: 150px;
            height: 150px;
        }

        #Label3, #Label6{
            color: red;
            font-size: 20px;
        }
        /*td{
            padding-bottom: 10px;
        }*/
        
    </style>

    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../Content/bootstrap-theme.css" rel="stylesheet"/>
</head>


<body style="background: url(insure_Img.jpg); background-size: cover;">
    <form id="form1" runat="server">
        <div>
            
            <div class="body">
                <br />
                <h2>Login to ABS</h2><br />
                <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
                    <TabPages>
                        <%--Tab1--%>
                        <dx:BootstrapTabPage Text="ABS User Account">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <img src="Custodian_Logo.jpg" class="image"/><br /><br />
                <%--<h1>Hello</h1>--%>
                    <table class="tab-center">
                        <tr>
                <td><asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label></td>
                <%--<asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox><span style="color: red;">*</span><br /><br />--%>
                    <td style="padding-bottom: 10px;"><dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server">
                        <ValidationSettings ValidationGroup="Validation">
                        <RequiredField IsRequired="true" ErrorText="E-mail is required"/>
                        <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                    </ValidationSettings>
                      </dx:BootstrapTextBox></td>
                            </tr>
                        <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
                <%--<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required="required" style="font-family: Calibri;"></asp:TextBox><span style="color: red;">*</span>--%>
                   <td><dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server" TextMode="Password"></dx:BootstrapTextBox></td>
                            </tr>
                            <%--<dx:BootstrapCheckBox ID="BootstrapCheckBox1" runat="server" Text="Sign in with Office365 Account"></dx:BootstrapCheckBox>--%>                              
                    </table>
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click"/>--%>
                    <%--<asp:Button ID="Button2" runat="server" Text="Sign In" OnClick="Button2_Click" />--%>
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click1" class="btn btn-primary"/>
                    <br />
                   <br />
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                </dx:ContentControl>
            </ContentCollection>
         </dx:BootstrapTabPage>

                        <%--Tab2--%>
                        <dx:BootstrapTabPage Text="Office365 Account">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <img src="Office365.jpg" class="image1"/><br /><br />
                <%--<h1>Hello</h1>--%>
                    <table class="tab-center">
                        <tr>
                <td><asp:Label ID="Label4" runat="server" Text="Email Address:"></asp:Label></td>
                <%--<asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox><span style="color: red;">*</span><br /><br />--%>
                    <td style="padding-bottom: 10px;"><dx:BootstrapTextBox ID="BootstrapTextBox3" runat="server">
                        <ValidationSettings ValidationGroup="Validation">
                        <RequiredField IsRequired="true" ErrorText="E-mail is required"/>
                        <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                    </ValidationSettings>
                      </dx:BootstrapTextBox></td>
                            </tr>
                        <tr>
                <td><asp:Label ID="Label5" runat="server" Text="Password:"></asp:Label></td>
                <%--<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required="required" style="font-family: Calibri;"></asp:TextBox><span style="color: red;">*</span>--%>
                   <td><dx:BootstrapTextBox ID="BootstrapTextBox4" runat="server" TextMode="Password"></dx:BootstrapTextBox></td>
                            </tr>
                            <%--<dx:BootstrapCheckBox ID="BootstrapCheckBox1" runat="server" Text="Sign in with Office365 Account"></dx:BootstrapCheckBox>--%>                              
                    </table>
                    <br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click"/>--%>
                    <%--<asp:Button ID="Button2" runat="server" Text="Sign In" OnClick="Button2_Click" />--%>
                    <asp:Button ID="Button2" runat="server" Text="Sign In" class="btn btn-primary"/>
                    <br />
                   <br />
                    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                    </TabPages>
                </dx:BootstrapPageControl>
             
                <footer style="padding-top: 100px;">Custodian & Allied Insurance Plc&reg;</footer>
            </div>
        </div>
    </form>
</body>
</html>
