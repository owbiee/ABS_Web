<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="NAICOM_Info.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.NAICOM_Info" %>

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
            width: 1400px;
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
            padding-right: 40px;
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
                            <dx:BootstrapTabPage Text="ABS NAICOM Info">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <br />
                                        <table class="tab-center">
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td><h6>DN/CN No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtDNCN" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            
                                            <tr>
                                                <td><h6>Reference Code:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Serial No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Batch/Unit No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox3" runat="server"></dx:BootstrapTextBox></td>
                                                <td><dx:BootstrapComboBox ID="BootstrapComboBox1" runat="server"></dx:BootstrapComboBox></td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Endorsement No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox4" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Entry/Ref Date:</h6></td>
                                                <td><dx:BootstrapDateEdit ID="BootstrapDateEdit1" runat="server"></dx:BootstrapDateEdit></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Broker CN/DN Date:</h6></td>
                                                <td><dx:BootstrapDateEdit ID="BootstrapDateEdit2" runat="server"></dx:BootstrapDateEdit></td>
                                                <td><h6>Broker CN/DN Received Date:</h6></td>
                                                <td><dx:BootstrapDateEdit ID="BootstrapDateEdit3" runat="server"></dx:BootstrapDateEdit></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Nature of Complaint<br />from Broker/Policy Holder</h6></td>
                                                <td><dx:BootstrapMemo ID="txtComplaint" runat="server"></dx:BootstrapMemo></td>
                                                <td><h6>Reasons for Return<br />or Reversed Premium</h6></td>
                                                <td><dx:BootstrapMemo ID="txtReturn" runat="server"></dx:BootstrapMemo></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Request from Broker/Client:</h6></td>
                                                <td><dx:BootstrapTextBox ID="txtBrokerRequest" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Date of Request:</h6></td>
                                                <td><dx:BootstrapDateEdit ID="BootstrapDateEdit4" runat="server"></dx:BootstrapDateEdit></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Broker/Agent Code:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox6" runat="server"></dx:BootstrapTextBox></td>
                                                <td>
                                                    <asp:Button ID="btn_Browse" runat="server" Text="Browse..." CssClass="btn btn-blue-grey"/></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox7" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Broker DN/CN No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox5" runat="server"></dx:BootstrapTextBox></td>
                                                <td><h6>Brokers CN No:</h6></td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox8" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Complaint Resolved? Y/N:</h6></td>
                                                <td><dx:BootstrapComboBox ID="BootstrapComboBox2" runat="server">
                                                    <Items>
                                                        <dx:BootstrapListEditItem Text="Yes" Value="Y"/>
                                                        <dx:BootstrapListEditItem Text="No" Value="N"/>
                                                    </Items>
                                                    </dx:BootstrapComboBox></td>
                                                <td>
                                                    <dx:BootstrapCheckBox ID="BootstrapCheckBox1" runat="server" Text="Is Receipt Received?"></dx:BootstrapCheckBox>
                                                </td>
                                                <td><dx:BootstrapTextBox ID="BootstrapTextBox9" runat="server"></dx:BootstrapTextBox></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Attach Broker CN Dox:</h6></td>
                                                <td><dx:BootstrapUploadControl ID="BrokerCNDox" runat="server"></dx:BootstrapUploadControl></td>
                                                <td><h6>Attach Endorsement/Policy Dox:</h6></td>
                                                <td><dx:BootstrapUploadControl ID="PolicyDox" runat="server"></dx:BootstrapUploadControl></td>
                                            </tr>
                                            <tr>
                                                <td><h6>Comments/Remarks:</h6></td>
                                                <td><dx:BootstrapMemo ID="txtComments" runat="server"></dx:BootstrapMemo></td>
                                                <td></td>
                                                <td></td>
                                            </tr>
                                        </table>
                                        <br />
                                        <asp:Button ID="btn_Save" runat="server" Text="Save Data" CssClass="btn btn-deep-purple" style="margin-right: 30px;"/>
                                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CssClass="btn btn-danger"/>
                                        <hr />

                                    </dx:ContentControl>
                                </ContentCollection>
                            </dx:BootstrapTabPage>

                            <%--Tab2--%>
                            <dx:BootstrapTabPage Text="Others">
                                <ContentCollection>
                                    <dx:ContentControl>
                                        <br />
                                        <table>

                                        </table>
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
