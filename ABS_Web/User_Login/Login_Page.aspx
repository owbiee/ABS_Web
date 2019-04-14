<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="ABS_Web.User_Login.Login_Page" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ABS|Login</title>
    <style>
        .login-controls{
            background-color: white;
            width: 500px;
            float: right;
            height: 977px;
            margin-top: -50px;
            margin-right: -8px;
            text-align: center;
            
        }
        .log{
            padding-top: 200px;
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
            height: 40px;
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
            border-radius: 7px;
        }
        #Label3{
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
</head>
<body style="background: url(insure_Img.jpg); background-size: cover;">
    <form id="form1" runat="server">
        <div>
            
            <div class="login-controls">
                <br />
                <img src="Custodian_Logo.jpg" class="image"/>
                <%--<h1>Hello</h1>--%>
                <div class="log">
                <h2>Login to ABS</h2>
                    <table>
                        <tr>
                <td style="padding-left: 60px;"><asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label></td>
                <%--<asp:TextBox ID="TextBox1" runat="server" required="required"></asp:TextBox><span style="color: red;">*</span><br /><br />--%>
                    <td style="padding-bottom: 10px;"><dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server"></dx:BootstrapTextBox></td>
                            </tr>
                        <tr>
                <td style="padding-left: 60px;"><asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label></td>
                <%--<asp:TextBox ID="TextBox2" runat="server" TextMode="Password" required="required" style="font-family: Calibri;"></asp:TextBox><span style="color: red;">*</span>--%>
                   <td><dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server" TextMode="Password"></dx:BootstrapTextBox></td>
                            </tr>
                    </table>
                    <br /><br />
                    <%--<asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click"/>--%>
                    <%--<asp:Button ID="Button2" runat="server" Text="Sign In" OnClick="Button2_Click" />--%>
                    <asp:Button ID="Button1" runat="server" Text="Sign In" OnClick="Button1_Click1" class="btn btn-success"/>
                    <br />
                   <br />
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    </div>
                <footer style="padding-top: 350px;">Custodian & Allied Insurance Plc&reg;</footer>
            </div>
        </div>
    </form>
</body>
</html>
