<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Risk_Codes_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Risk_Codes_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


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
    <br /><br />
    <form runat="server">
    <div class="body">
        <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
            <%--Tab1--%>
            <TabPages>
                <dx:BootstrapTabPage Text="Main-Risk Codes Setup">
                    <ContentCollection>
                          <dx:ContentControl>
                              <h5>Main Risk Codes Setup</h5><br/>
                              <table class="tab-center">
                                  <tr>
                                      <td style="align-content: stretch;"><h6>Class ID:</h6></td>
                                      <td>
                                          <dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox>                                              
                                      </td>
                                      <td><h6>Main Risk Code:</h6></td>
                                      <td>                                          
                                          <dx:BootstrapComboBox ID="BootstrapComboBox1" runat="server"></dx:BootstrapComboBox>                                              
                                      </td>
                                  </tr>
                                  
                                  <tr>
                                      <td><h6>Main Risk Description:</h6></td>
                                      <td><dx:BootstrapTextBox ID="BootstrapTextBox2" runat="server" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                  <td><h6>Short Description:</h6></td>
                                      <td><dx:BootstrapTextBox ID="BootstrapTextBox3" runat="server"></dx:BootstrapTextBox></td>
                                  </tr>
                                  <tr>
                                      
                                  </tr>
                                  
                                  <tr>
                                      <td><dx:BootstrapCheckBox ID="BootstrapCheckBox1" runat="server" Text="Enable Risk Band"></dx:BootstrapCheckBox></td>
                                      <td>
                                          <%--<h6>Enable Risk Band</h6>--%>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td><h6>Risk Band Range:</h6></td>
                                      <td><dx:BootstrapTextBox ID="BootstrapTextBox4" runat="server"></dx:BootstrapTextBox></td>
                                  </tr>
                                  <tr>
                                      <td><h6>Risk Band Maximum:</h6></td>
                                      <td><dx:BootstrapTextBox ID="BootstrapTextBox5" runat="server"></dx:BootstrapTextBox></td>
                                  </tr>
                              </table>
                              <hr />
                              <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-success"/>
                              <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="btn btn-blue-grey"/>
                              <asp:Button ID="Button3" runat="server" Text="Delete" CssClass="btn btn-danger"/>

                          </dx:ContentControl>                                         
                    </ContentCollection>
                </dx:BootstrapTabPage>
                <%--Tab2--%>
                <dx:BootstrapTabPage Text="Sub-Risk Codes Setup">
                    <ContentCollection>
                                 <dx:ContentControl>
                                     <h5>Sub-Risk Codes Setup</h5><br />
                                     <table class="tab-center">
                                         <tr>
                                             <td><h6>Class ID:</h6></td>
                                             <td><dx:BootstrapTextBox ID="BootstrapTextBox6" runat="server" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                             
                                             

                                         </tr>
                                         <tr>
                                             <td><h6>Sub-Risk Code:</h6></td>
                                             <td><dx:BootstrapTextBox ID="BootstrapTextBox9" runat="server" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                             
                                         </tr>
                                         <tr>
                                             <td><h6>Sub-Risk Description:</h6></td>
                                             <td><dx:BootstrapTextBox ID="BootstrapTextBox7" runat="server"></dx:BootstrapTextBox></td>
                                         </tr>
                                         <tr>
                                             <td><h6>Technical Main Risk:</h6></td>
                                             <td><dx:BootstrapComboBox ID="BootstrapComboBox2" DropDownStyle="DropDown" runat="server">
                                                 <ClearButton DisplayMode="OnHover" />
                                                 <Items>
                                                     <dx:BootstrapListEditItem Value="Accident"/>
                                                     <dx:BootstrapListEditItem Value="Accident"/>
                                                     <dx:BootstrapListEditItem Value="Accident"/>
                                                 </Items>
                                                 

                                                 </dx:BootstrapComboBox></td>
                                             <td><dx:BootstrapTextBox ID="BootstrapTextBox10" runat="server" style="width: 50px;"></dx:BootstrapTextBox></td>
                                             
                                         </tr>
                                         <tr>
                                             <td><h6>Accounts Main Risk:</h6></td>
                                             <td><dx:BootstrapComboBox ID="BootstrapComboBox3" DropDownStyle="DropDown" runat="server">
                                                 <ClearButton DisplayMode="OnHover" />
                                                 <Items>
                                                     <dx:BootstrapListEditItem Value="Accident"/>
                                                     <dx:BootstrapListEditItem Value="Accident"/>
                                                     <dx:BootstrapListEditItem Value="Accident"/>
                                                 </Items>
                                                 

                                                 </dx:BootstrapComboBox></td>
                                             <td><dx:BootstrapTextBox ID="BootstrapTextBox8" runat="server" style="width: 50px;"></dx:BootstrapTextBox></td>
  

                                         </tr>
                                         <tr>
                                             <td><h6>Sub Risk Legend:</h6></td>
                                             <td><dx:BootstrapTextBox ID="BootstrapTextBox11" runat="server"></dx:BootstrapTextBox></td>
                                         </tr>
                                         <tr>
                                             <td><dx:BootstrapCheckBox ID="BootstrapCheckBox2" runat="server" Text="Enable Risk Band"></dx:BootstrapCheckBox></td>
                                      <td>
                                          <%--<h6>Enable Risk Band</h6>--%>
                                      </td>
                                         </tr>

                                         <tr>
                                             <td><h6>Risk Band Range:</h6></td>
                                      <td><dx:BootstrapTextBox ID="BootstrapTextBox12" runat="server"></dx:BootstrapTextBox></td>
                                         </tr>

                                         <tr>
                                        <td><h6>Risk Band Maximum:</h6></td>
                                      <td><dx:BootstrapTextBox ID="BootstrapTextBox13" runat="server"></dx:BootstrapTextBox></td>
                                         </tr>                                         
                                     </table>
                                     <hr/>
                               <asp:Button ID="Button4" runat="server" Text="Save" class="btn btn-success"/>
                              <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="btn btn-blue-grey"/>
                              <asp:Button ID="Button6" runat="server" Text="Delete" CssClass="btn btn-danger"/>
                                 </dx:ContentControl>                                  
                    </ContentCollection>
                </dx:BootstrapTabPage>
            </TabPages>
        </dx:BootstrapPageControl>
    </div>
        </form>
</asp:Content>
