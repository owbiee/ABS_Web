<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UND_Menu.aspx.cs" Inherits="ABS_Web.User_Login.UND_Menu" %>

<%@ Register Assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>ABS | Modules</title>
    <%--<link href="../Content/bootstrap-theme.css" rel="stylesheet" />--%>
    <%--<link href="../Content/bootstrap.css" rel="stylesheet" />--%>
    <%--<link href="../Content/Site.css" rel="stylesheet" />--%>
    <%--<link href="../Content/bootstrap.min.css" rel="stylesheet" />--%>
    <style>
        .tab-center{
            /*text-align: center;*/
            margin: 0 auto;
            margin-top: 30px;
        }   
        
        .body{
            width: 100%;
        }
        ul li{
            padding-top: 10px;
        }
        
        .Logout{
            float: right;
            padding-bottom: 20px;
        }

        .User{
            float: right;
            padding-right: 70px;
            padding-left: 30px;
        }
        #Button1{
            /*padding-bottom: 10px;*/
        }
        .btnlogout{
            /*padding-bottom: 10px;*/
            border-radius: 7px;
            background-color: darkred;
            color: white;
        }
        
    </style>

    <%--Javascript--%>
    <script type="text/javascript">
        function preventBack() {
            window.history.forward();
        }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
    </script>
</head>


<body>
    <form id="form1" runat="server">
        <div>
            <%--<dx:ASPxPanel ID="ASPxPanel2" runat="server" Width="200px"></dx:ASPxPanel>--%>
            <%--<dx:ASPxPanel ID="ASPxPanel1" runat="server" Width="200px" Height="60px" FixedPosition="WindowTop" BackColor="Gray">
                
            </dx:ASPxPanel>--%>
            <ul style="background-color: black; height: 50px; margin-top: -8px; margin-left: -8px; margin-right: -8px; color: white; font-size: larger; padding-top: 25px; padding-bottom: 25px;">
                <li style="display: inline; padding-top: 20px; font-size: 40px;">ABS</li>
                <li class="User" style="display: inline;"><asp:Label ID="lblUser" runat="server" Text=""></asp:Label></li>
                <li class="Logout" style="display: inline; padding-top: 6px;"><asp:Button ID="Button1" runat="server" Text="Logout" class="btnlogout" style="height: 40px; width: 100px; margin-bottom: 30px;"/></li>

            </ul>

            
            <br /><br /><br />
            
            <table class="tab-center">
                <tr>
                    <td><asp:LinkButton ID="link_fin" runat="server"><img src="015-banknote.png" style="height: 150px; width: 150px; padding-right: 200px;"/><br />Finance</asp:LinkButton></td>
                    <td><asp:LinkButton ID="link_reins" runat="server"><img src="005-message.png" style="height: 150px; width: 150px; padding-right: 200px;"/><br />Reinsurance</asp:LinkButton></td>
                    <td><asp:LinkButton ID="UND" runat="server" OnClick="UND_Click" ><img src="006-document.png" style="height: 150px; width: 150px; padding-right: 200px;"/><br />Underwriting</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="011-briefcase.png" style="height: 150px; width: 150px; padding-right: 200px;"/><br />HR</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="013-target.png" style="height: 150px; width: 150px;"/><br />Survey</asp:LinkButton></td>

                </tr>
                <tr>
                    <td><asp:LinkButton runat="server"><img src="014-play.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Administration</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="015-web.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Audit</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="013-target.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Information Tech.</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="005-message.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Marketing</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="014-play.png" style="height: 150px; width: 150px; padding-top: 30px;"/><br />Finance</asp:LinkButton></td>


                </tr>
                <tr>
                    <td><asp:LinkButton runat="server"><img src="015-web.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Investment</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="012-lightbulb.png" style="height: 150px; width: 150px; padding-right: 200px;padding-top: 30px; "/><br />PayRoll</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="015-banknote.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Personel</asp:LinkButton></td>
                    <td><asp:LinkButton runat="server"><img src="013-target.png" style="height: 150px; width: 150px; padding-right: 200px; padding-top: 30px;"/><br />Finance</asp:LinkButton></td>
                    <td><asp:LinkButton ID="link_Setup" runat="server" OnClick="link_Setup_Click"><img src="008-gears.png" style="height: 150px; width: 150px; padding-top: 30px;"/><br />User Setup</asp:LinkButton></td>
                </tr>
            </table>
            <br />
            <br />
            <hr />
            <h5 style="text-align: center;">Custodian & Allied Insurance Ltd &reg;</h5>
        </div>
    </form>
</body>
</html>

