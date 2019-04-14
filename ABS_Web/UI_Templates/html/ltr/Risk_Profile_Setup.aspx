<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Risk_Profile_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Risk_Profile_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.css" rel="stylesheet"/>
    <link href="../../../Content/Site.css" rel="stylesheet"/>
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet"/>
    <style>
    .body{
            text-align: center;
            align-content: center;
            background-color: white;
            margin: 0 auto;
            height: 100%;
            width: 1000px;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }
        td{
            padding-bottom: 10px;
        }
        .tab-center{
            margin: 0 auto;
        }
      </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <form runat="server">
    <br />
    <div class="body">
        <br />
        <h5>Risk Profile Setup</h5>
        <hr />
        <br />
        <table class="tab-center">
            <tr>
                <td><h6>Risk Factor Type:</h6></td>
                <td>
                    <dx:BootstrapComboBox ID="BootstrapComboBox1" runat="server">
                        <Items>
                            <dx:BootstrapListEditItem Value="Accident"/>
                            <dx:BootstrapListEditItem Value="Motor"/>
                            <dx:BootstrapListEditItem Value="Fire"/>
                            <dx:BootstrapListEditItem Value="Engineering"/>
                            <dx:BootstrapListEditItem Value="Marine"/>
                            <dx:BootstrapListEditItem Value="Oil & Gas"/>
                        </Items>
                    </dx:BootstrapComboBox>
                </td>
                <td><h6>Serial No:</h6></td>
                <td>
                    <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox>
                </td>
                <td><h6>Code:</h6></td>
                <td><dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
            </tr>
            <tr>
                <td><h6>Risk Factor Description:</h6></td>
                <td><dx:BootstrapTextBox ID="BootstrapTextBox3" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                <td><h6>Risk Scale:</h6></td>
                <td><dx:BootstrapTextBox ID="BootstrapTextBox4" runat="server" style="width: 100px;"></dx:BootstrapTextBox></td>
                <td>To</td>
                <td><dx:BootstrapTextBox ID="BootstrapTextBox5" runat="server" style="width: 100px"></dx:BootstrapTextBox></td>
                <td></td>
            </tr>
            <tr>
                <td><h6>Risk Category:</h6></td>
                <td><dx:BootstrapComboBox ID="BootstrapComboBox2" runat="server">
                        <Items>
                            <dx:BootstrapListEditItem Value="High"/>
                            <dx:BootstrapListEditItem Value="Medium"/>
                            <dx:BootstrapListEditItem Value="Low"/>                       
                        </Items>
                    </dx:BootstrapComboBox></td>
            </tr>            
    </table>
        <asp:Button ID="Button1" runat="server" Text="Save Data" CssClass="btn btn-green" />
    </div>
    </form>
</asp:Content>
