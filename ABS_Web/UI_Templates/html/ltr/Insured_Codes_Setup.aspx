<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="Insured_Codes_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.Insured_Codes_Setup" %>

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
            width: 1300px;
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
            text-align: left;
        }

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <form runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>           
    <br />
    <div class="body">
        <%--Tab1--%>
    <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server" ActiveTabIndex="1">
        <TabPages>
            <%--Tab1--%>
            <dx:BootstrapTabPage Text="Insured Codes Setup">
                <ContentCollection>
                    <dx:ContentControl>
                        <br />
    
        <h2>Insured Codes Setup</h2>
        <br />
        <table class="tab-center">
            <%--Form Start--%>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Insured Code (Auto):"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtInsuredCode" runat="server"></dx:BootstrapTextBox>
                    
                </td>

                <td><asp:Label ID="Label1" runat="server" Text="Insured ID:"></asp:Label></td>
                <td>
                    
                    <dx:BootstrapTextBox ID="txtInsuredID" Enabled="false" runat="server">                    
                    </dx:BootstrapTextBox>                                       
                </td>

                <td>System ID:</td>
                <td><dx:BootstrapTextBox ID="txtInsuredNo" Enabled="false" runat="server" Width="200px" Text="0">
                    </dx:BootstrapTextBox></td>
                
            </tr>
            <tr>
                
                <td><asp:Label ID="Label3" runat="server" Text="Insured Name:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtInsuredName" runat="server">
                     <ValidationSettings ValidationGroup="Validation">
                        <RequiredField IsRequired="true" ErrorText="Insured name is required"/>
                    </ValidationSettings>
                    </dx:BootstrapTextBox></td>
                <td><asp:Label ID="Label4" runat="server" Text="Other Names:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtOtherNames" runat="server"></dx:BootstrapTextBox></td>
                <td></td>
                <td></td>

                </tr>

            <tr>
                

                <td><asp:Label ID="Label5" runat="server" Text="Address Line1:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtAddress1" runat="server"></dx:BootstrapTextBox></td>

                <td><asp:Label ID="Label6" runat="server" Text="Address Line2:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtAddress2" runat="server"></dx:BootstrapTextBox></td>
                <td><asp:Label ID="Label7" runat="server" Text="Address Line3:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtAddress3" runat="server"></dx:BootstrapTextBox></td>

                </tr>

            <tr>
                
                <td><asp:Label ID="Label8" runat="server" Text="Agent Tel No:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtAgentPhone" runat="server">
                    <ValidationSettings ValidationGroup="Validation">
                        <RegularExpression ValidationExpression="\(?\b[0-9]{4}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits"/>                      
                    </ValidationSettings>
                    <MaskSettings Mask="+234 (9999) 999-9999" IncludeLiterals="None" />
                      </dx:BootstrapTextBox></td>

                <td><asp:Label ID="Label9" runat="server" Text="Insured Mobile No:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtInsuredPhone" runat="server">
                    <ValidationSettings ValidationGroup="Validation">
                        <RequiredField IsRequired="true" ErrorText="Phone Number is required" />
                        <RegularExpression ValidationExpression="\(?\b[0-9]{4}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits"/>
                    </ValidationSettings>
                    <MaskSettings Mask="+234 (9999) 999-9999" IncludeLiterals="None" />
                    </dx:BootstrapTextBox></td>

                   <td><asp:Label ID="Label11" runat="server" Text="Email Address:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtEmail" runat="server">
                    <ValidationSettings ValidationGroup="Validation">
                        <RequiredField IsRequired="true" ErrorText="E-mail is required"/>
                        <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                    </ValidationSettings>
                      </dx:BootstrapTextBox></td>               

                </tr>

            <tr>
                <td><asp:Label ID="Label10" runat="server" Text="Type of Insured:"></asp:Label></td>
                <%--<td style="padding-right: 15px;"><dx:BootstrapTextBox ID="BootstrapTextBox10" runat="server"></dx:BootstrapTextBox></td>--%>
                <td>
                    <dx:BootstrapComboBox ID="InsuredType" runat="server">
                        <Items>
                            <dx:BootstrapListEditItem Value="A" Text="Corporate Entity"/>
                            <dx:BootstrapListEditItem Value="B" Text="Individual"/>
                            <dx:BootstrapListEditItem Value="C" Text="Churches/Mosques/Mission"/>
                            <dx:BootstrapListEditItem Value="D" Text="Arts/Culture"/>
                            <dx:BootstrapListEditItem Value="E" Text="Co-Operatives"/>
                            <dx:BootstrapListEditItem Value="F" Text="Schools/Colleges/Universities"/>
                            <dx:BootstrapListEditItem Value="G" Text="Services/Publicity"/>
                            <dx:BootstrapListEditItem Value="H" Text="Hospital/Pharmacy"/>
                            <dx:BootstrapListEditItem Value="I" Text="Hotels/Restaurants"/>
                            <dx:BootstrapListEditItem Value="J" Text="Association/Clubs"/>
                        </Items>
                    </dx:BootstrapComboBox>
                </td>

              

                <td><asp:Label ID="Label12" runat="server" Text="Occupation:"></asp:Label></td>
                <td><dx:BootstrapTextBox ID="txtOccupation" runat="server"></dx:BootstrapTextBox></td>
                <td>BVN Number:</td>
                    <td><dx:BootstrapTextBox ID="txtBVN" runat="server"></dx:BootstrapTextBox></td>
                </tr>
            </table>
        <hr />

        
        
            <table class="tab-center">
                <tr style="background-color: #f7f7f7;">
                    <td colspan="4" style="text-align: left;">
                        <h5 style="background-color: #f7f7f7;">Additional Information</h5>
                    </td>
                </tr>
                <tr>
                <td><asp:Label ID="Label13" runat="server" Text="Policy Holder Gender:"></asp:Label></td>
                
                    <td>
                        <dx:BootstrapComboBox ID="txtGender" runat="server">
                            <Items>
                                <dx:BootstrapListEditItem Value="M" Text="Male"/>
                                <dx:BootstrapListEditItem Value="F" Text="Female"/>
                                <dx:BootstrapListEditItem Value="C" Text="Coporates"/>
                                <dx:BootstrapListEditItem Value="A" Text="Association/Club"/>
                                <dx:BootstrapListEditItem Value="J" Text="Joint Corporate (Mr/Mrs)"/>
                            </Items>
                        </dx:BootstrapComboBox>
                    </td>

                <td><asp:Label ID="Label20" runat="server" Text="Date of Birth:"></asp:Label></td>
                <td><dx:BootstrapDateEdit ID="DOB" runat="server"></dx:BootstrapDateEdit></td>
               </tr>

                <tr>
                <td><asp:Label ID="Label15" runat="server" Text="State Business Situated:"></asp:Label></td>
                
                    <td><dx:BootstrapComboBox ID="txtState" runat="server">
                            
                        </dx:BootstrapComboBox>

                    </td>

                    <td></td>
                    <td style="padding-right: 15px;"><dx:BootstrapTextBox ID="BootstrapTextBox15" runat="server"></dx:BootstrapTextBox></td>

                    </tr>

                <tr>
                <td><asp:Label ID="Label17" runat="server" Text="Business Local Govt:"></asp:Label></td>
                
                    <td>
                        <dx:BootstrapComboBox ID="txtLocalGovt1" runat="server"></dx:BootstrapComboBox>
                    </td>

                <td></td>
                <td style="padding-right: 15px;"><dx:BootstrapTextBox ID="BootstrapTextBox17" runat="server"></dx:BootstrapTextBox></td>               
                </tr>

                <tr>
                <td><asp:Label ID="Label19" runat="server" Text="Country Business Situated:"></asp:Label></td>
                <td style="padding-right: 15px;"><dx:BootstrapTextBox ID="txtCountry" runat="server"></dx:BootstrapTextBox></td>

                 <td></td>
                 <td></td>

                <td></td>
                <td></td>
                </tr>
                
                </table>
        <asp:Button ID="Btn_Save" runat="server" Text="Save" class="btn btn-green" OnClick="Btn_Save_Click" OnClientClick="return confirm('Do you want to save this record? ');" />
            
        <asp:Button ID="Btn_Delete" runat="server" Text="Delete" class="btn btn-danger"/>
        <asp:Button ID="Btn_Cancel" runat="server" Text="Cancel" class="btn btn-darken-2"/>
        <%--<asp:Button ID="Btn_Print" runat="server" Text="Print" class="btn btn-green"/>--%>
            <br /><br />
                        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        
                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>

            <%--Tab2--%>
            <dx:BootstrapTabPage Text="Upload KYC Info">
                <ContentCollection>
                    <dx:ContentControl>
                        <br />
                        <%--<h5>Document Manager</h5>--%>
                        <%--<asp:Button ID="Button5" runat="server" Text="Attach Dox" CssClass="btn btn-deep-purple"/>
                        <asp:Button ID="Button6" runat="server" Text="View Dox" CssClass="btn btn-deep-purple"/>--%>
                        
                        <br />
                        <table class="tab-center">
                            <tr>
                                <td><h6>Reference No:</h6></td>
                                <td><dx:BootstrapTextBox ID="txtReferenceNo" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                            </tr>
                            <tr>
                                <td><h6>Document Type:</h6></td>
                                <td>
                                    <dx:BootstrapComboBox ID="txtDocType" runat="server">
                                        <Items>
                                            <dx:BootstrapListEditItem Value=".Pdf"/>
                                            <dx:BootstrapListEditItem Value=".xlsx"/>
                                            <dx:BootstrapListEditItem Value=".docx"/>
                                        </Items>
                                    </dx:BootstrapComboBox>
                                </td>
                            </tr>
                            <tr>
                                <td><h6>Description:</h6></td>
                                <td><dx:BootstrapMemo ID="txtDescr" runat="server"></dx:BootstrapMemo></td>
                            </tr>
                            <tr>
                                <td><h6>Attach Document:</h6></td>
                                <td>
                                    <%--<dx:BootstrapUploadControl ID="UploadControl" runat="server"></dx:BootstrapUploadControl>--%>
                                    <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-blue-grey"/>
                                    
                                </td>
                                <td><asp:Button ID="Upload" runat="server" Text="Upload" class="btn btn-blue-grey" OnClick="Upload_Click"/></td>
                            </tr>

                        </table>
                        <br />
                        <asp:Button ID="Btn_Save1" runat="server" Text="Save Data" CssClass="btn btn-success" OnClick="Btn_Save1_Click1"/>
                        <%--<asp:Button ID="btn_Save_Data" runat="server" Text="Save Data" CssClass="btn btn-success" OnClick="btn_Save_Data_Click"/>--%>
                        <asp:Button ID="Button8" runat="server" Text="Close" CssClass="btn btn-danger"/><br /><br />
                        <%--<asp:Button ID="btn_Upload" runat="server" Text="Upload" class="btn btn-blue-grey" OnClick="btn_Upload_Click"/>--%>
                        <%--<asp:Button ID="Button1" runat="server" Text="Upload" class="btn btn-blue-grey"/>--%>
                        <asp:Label ID="lblMessage" runat="server" Text="" style="color: red;"></asp:Label>
                         <hr />

                         <h3>List of Upload KYC</h3>

                                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                     DataKeyNames="db_identity_field"
                                    EmptyDataText = "No files uploaded" 
                                    BackColor="White" BorderColor="#E7E7FF" 
                                    BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="3" GridLines="Horizontal" 
                                    CssClass="center">

                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                <Columns>
                                    <asp:BoundField DataField="db_field" HeaderText="Ref No" />
                                    <asp:BoundField DataField="db_identity_field" HeaderText="System Ref" />
                                    <asp:BoundField DataField="db_field" HeaderText="Date Uploaded" />
                                    <asp:BoundField DataField="db_field" HeaderText="File Name" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("db_field") %>' runat="server" OnClick="lnkDownload_Click"></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("db_field") %>' runat = "server" OnClick="lnkDelete_Click"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>

                                </Columns>
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                                </asp:GridView>

                    </dx:ContentControl>
                </ContentCollection>
            </dx:BootstrapTabPage>
        </TabPages>
    </dx:BootstrapPageControl>
    </div>

           </ContentTemplate>
        </asp:UpdatePanel>
    </form>

    <script type="text/javascript">
        //function PopUp() {
        //    alertify.alert('Message', 'Actions Added!',
        //        function () {
        //            alertify.success('Ok');
        //        });
        //}

        function PopUpRegister() {
            alertify.alert('Message', 'Registeration Successfully!',
                function () {
                    alertify.success('1 Record(s) Added!');
                });
        }
    </script>
</asp:Content>

