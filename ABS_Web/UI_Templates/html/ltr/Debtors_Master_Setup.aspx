<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Debtors_Master_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Debtors_Master_Setup" %>

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
            width: 1200px;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }
        .tab-center{
            margin: 0 auto;
        }
        td{
            padding-bottom: 10px;
            padding-right: 20px;
            text-align: left;
        }
        .textbox{
            width: 300px;
        }
    </style>
</asp:Content>

<%--Main Content--%>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>         
    <br /><br />
    <div class="body">
    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
        <TabPages>
            <%--Tab1--%>
            <dx:BootstrapTabPage Text="Debtors Master Setup">
                <ContentCollection>                    
                  <dx:ContentControl>
                      <%--<h2>Hello World...General</h2>--%>
                      <%--<h3>Debtors Master Setup</h3>--%>
                      <br />
                      <h6>Key Parameters</h6>
                      <table class="tab-center">
                          <tr>
                              <td></td>
                              <td></td>
                              <td></td>
                              <td><h6>Type/Category of Agency</h6></td>
                          </tr>
                          <tr>
                              <td><h6>Record ID:</h6></td>
                              <td style="padding-right: 15px;">
                                  <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server"></dx:BootstrapTextBox>
                              </td>
                              <td style="padding-right: 15px;">
                                  <dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server"></dx:BootstrapTextBox>
                              </td>
                              <td>
                                  <dx:BootstrapDropDownEdit ID="BootstrapDropDownEdit1" runat="server"></dx:BootstrapDropDownEdit>
                              </td>
                          </tr>
                           <tr>
                              <td><h6>Customer No:</h6></td>
                              <td style="padding-right: 15px;">
                                  <dx:BootstrapTextBox ID="BootstrapTextBox3" runat="server"></dx:BootstrapTextBox>
                              </td>
                              <td style="padding-right: 15px;">
                                  <dx:BootstrapTextBox ID="BootstrapTextBox4" runat="server"></dx:BootstrapTextBox>
                              </td>
                              <td>
                                  <dx:BootstrapDropDownEdit ID="BootstrapDropDownEdit2" runat="server"></dx:BootstrapDropDownEdit>
                              </td>
                          </tr>
                      </table>
                      <hr />
                      <%--<h5>Name & Address Information</h5><br /><br />--%>
                      <table class="tab-center">
                          <tr>
                              <td></td>
                              <td></td>
                              <td><h6>Account/Company type</h6></td>
                              <td></td>
                          </tr>
                          <tr>
                              <td><h6>Name:</h6></td>
                              <td>
                                  <dx:BootstrapTextBox ID="BootstrapTextBox5" runat="server" style="width: 400px;"></dx:BootstrapTextBox>
                              </td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox9" runat="server" style="width: 100px; padding-right:10px;"></dx:BootstrapTextBox></td>
                              <td><dx:BootstrapDropDownEdit ID="BootstrapDropDownEdit3" runat="server"></dx:BootstrapDropDownEdit></td>
                          </tr>
                          <tr>
                              <td><h6>Address Ln-1:</h6></td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox6" runat="server" style="width: 400px;"></dx:BootstrapTextBox></td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox10" runat="server" style="width: 100px; padding-right:10px;"></dx:BootstrapTextBox></td>
                              <td><dx:BootstrapDropDownEdit ID="BootstrapDropDownEdit4" runat="server"></dx:BootstrapDropDownEdit></td>
                          </tr>
                          <tr>
                              <td><h6>Address Ln-2:</h6></td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox7" runat="server" class="textbox"></dx:BootstrapTextBox></td>
                          </tr>
                          <tr>
                              <td><h6>Address Ln-3:</h6></td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox8" runat="server" class="textbox"></dx:BootstrapTextBox></td>
                          </tr>
                      </table>
                      <hr />
                      <h5>Communication Data</h5><br />
                      <table class="tab-center">
                          <tr>
                              <td><h6>Phone Ln-1:</h6></td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox11" runat="server" class="textbox" style="width: 350px;">
                                  <ValidationSettings ValidationGroup="Validation">
                                      <RequiredField IsRequired="true" ErrorText="Phone Number is required" />
                        <RegularExpression ValidationExpression="\(?\b[0-9]{3}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits"/>
                    </ValidationSettings>
                    <MaskSettings Mask="+234 (999) 999-9999" IncludeLiterals="None" />
                                  </dx:BootstrapTextBox></td>                              
                          </tr>
                          <tr>
                              <td><h6>Phone Ln-2:</h6></td>
                              <td><dx:BootstrapTextBox ID="BootstrapTextBox12" runat="server" class="textbox">
                                  <ValidationSettings ValidationGroup="Validation">
                                      <RequiredField IsRequired="true" ErrorText="Phone Number is required" />
                        <RegularExpression ValidationExpression="\(?\b[0-9]{3}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits"/>
                    </ValidationSettings>
                    <MaskSettings Mask="+234 (999) 999-9999" IncludeLiterals="None" />
                                  </dx:BootstrapTextBox></td>                                                           
                          </tr>
                      </table><br />
                      <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success"/>
                      <asp:Button ID="Button2" runat="server" Text="Cancel" class="btn btn-blue-grey"/>
                      <asp:Button ID="Button3" runat="server" Text="Delete" class="btn btn-danger"/>
                  </dx:ContentControl>                                       
                </ContentCollection>
            </dx:BootstrapTabPage>
            <%--Tab2--%>
            <dx:BootstrapTabPage Text="Miscellaneous">
                <ContentCollection>
                    <dx:ContentControl>
                        <%--Add Page Here!--%>
                        <h2>Hello World...Nothing here yet!</h2>
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
