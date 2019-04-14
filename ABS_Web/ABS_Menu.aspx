<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ABS_Menu.aspx.cs" Inherits="ABS_Web.ABS_Menu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        table{
            font-weight: bold;
            font-size: medium;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
        }
    </style>
    <h2>ABS &reg;</h2>
    <asp:Label ID="Label1" runat="server" Text="" style="float: right;"></asp:Label>
    <hr />
    <br />
    <br />
    <table style="margin: 50px;">
        <tr>
            <td>
                <%--<asp:Button ID="Button1" runat="server" Text="Underwriting & Claims" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="/UI_Templates/html/ltr/UnderWriter.aspx"><img src="coworkers.png" style="padding-right: 100px;"/></a><h3>Underwriting <br />& Claims</h3>
            </td>
            
            <td>
                <%--<asp:Button ID="Button2" runat="server" Text="Finance" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" style="padding-right: 100px;"/></a><h3>Finance</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" style="padding-right: 100px;"/></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" style="padding-right: 100px;"/></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
        </tr>

        <tr>
            <td>
                <%--<asp:Button ID="Button3" runat="server" Text="Reinsurance" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" style="padding-right: 100px;"/></a><h3>Reinsurance</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="container.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
        </tr>

        <tr>
            <td>
                <%--<asp:Button ID="Button5" runat="server" Text="Administration" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Administration</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="container.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button4" runat="server" Text="Investment" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            <a href="#"><img src="coworkers.png" /></a><h3>Investment</h3>
            </td>
            <td>
                <%--<asp:Button ID="Button6" runat="server" Text="I T" style="height: 200px; width: 200px; margin: 10px; border-radius: 5px;"/>--%>
            </td>
        </tr>
    </table>
</asp:Content>
