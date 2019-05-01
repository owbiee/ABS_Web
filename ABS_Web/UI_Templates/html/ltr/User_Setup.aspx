<%@ Page Language="C#" MasterPageFile="~/UI/html/ltr/Settings_Master.Master" AutoEventWireup="true" CodeBehind="User_Setup.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.User_Setup" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v17.2, Version=17.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content runat="server" ContentPlaceHolderID="Head">
    <%--<title>ABS | User Setup</title>--%>
    <link href="../../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../../Content/Site.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../../alertifyjs%20(2)/alertify.js"></script>
    <script src="../../../alertifyjs%20(2)/alertify.min.js"></script>
    <link href="../../../alertifyjs%20(2)/css/alertify.css" rel="stylesheet" />
    <style type="text/css">
        .body{
            text-align: center;
            background-color: white;
            margin: 0 auto;
            height: 100%;
            width:75%;
            border-radius: 10px;
            /*padding-top: 30px;*/
            padding-bottom: 20px;
        }
        .tab-right{
            float: right;
            padding-right: 10px;
        }

        td{
            padding-bottom: 10px;
            text-align: left;
            padding-right: 10px;
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

        .center tr:nth-child(even)
        {
            background-color: #125876;
            color: white;
            padding: 20px;
        }

        .center tr:nth-child(even)
        {
            background-color:#b9e0d9;
            color: black;
            padding: 20px;
        }

        .tab-center{
            margin: 0 auto;
        }

        .header{
            width: 800px;
            margin: 0 auto;
        }

        a{
            text-decoration: none;
        }
       
        .auto-style1 {
            width: 1px;
        }

        .paging a
        {
            background-color: #00C157;
            padding: 5px 7px;
            text-decoration: none;
            border: 1px solid #00C157;
        }
         
        .paging a:hover
        {
            background-color: #E1FFEF;
            color: #00C157;
            border: 1px solid #00C157;
        }
         
        .paging span
        {
            background-color: #E1FFEF;
            padding: 5px 7px;
            color: #00C157;
            border: 1px solid #00C157;
        }
         
        tr.paging
        {
            background: none !important;
        }
         
        tr.paging tr
        {
            background: none !important;
        }
        tr.paging td
        {
            border: none;
        }

        #ContentPlaceHolder1_BootstrapPageControl1_lstSystem_Roles1,
        #ContentPlaceHolder1_BootstrapPageControl1_lstUser_Roles1
        {
            padding: 0;
            margin: 0 auto;
            height: 200px;
            width: 100px;
            line-height: 50px;
            align-content: flex-start;
        }
        #ContentPlaceHolder1_BootstrapPageControl1_lstSystem_Roles1 li,
        #ContentPlaceHolder1_BootstrapPageControl1_lstSystem_Roles1 a,
        #ContentPlaceHolder1_BootstrapPageControl1_lstSystem_Roles1 span,
        #ContentPlaceHolder1_BootstrapPageControl1_lstUser_Roles1 li,
        #ContentPlaceHolder1_BootstrapPageControl1_lstUser_Roles1 a,
        #ContentPlaceHolder1_BootstrapPageControl1_lstUser_Roles1 span
        {
            padding: 0;
            margin: 0 auto;
            height: 23px;
            line-height: 23px;
            font-size: small;
        }

        
    </style>
</asp:Content>

<%--<html xmlns="http://www.w3.org/1999/xhtml">--%>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <form id="form1" runat="server">
        <asp:ScriptManager runat="server"></asp:ScriptManager>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
        <div class="header">
            <br />
            <h1 class="icon-cogs"> ABS Settings</h1>
            <hr />
            </div>
            <div class="body">
                <br />
                <h4><i class="icon-user-tie"></i>User Setup</h4>
                <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server" ActiveTabIndex="3">
                    <TabPages>
                        <%--Tab1--%>
                        <dx:BootstrapTabPage Text="Register User">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <br />
                                    <table class="tab-center" style="width: 90%;">
                                        <tr style="display: none;">
                                            <td>RefID (Auto)</td>
                                            <td><dx:BootstrapTextBox ID="txtRefID" runat="server" style="padding-right: 15px;" Enabled="false" ></dx:BootstrapTextBox></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                            
                                        </tr>
                                        <tr>
                                            <td><h6>Username:</h6></td>
                                            <td>
                                                <dx:BootstrapTextBox ID="txtUserName" runat="server" style="padding-right: 15px;"></dx:BootstrapTextBox>
                                            </td>
                                            <td></td>
                                            <td><h6>Email Address:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtEmail" runat="server">
                                                <ValidationSettings ValidationGroup="Validation">
                                        <RequiredField IsRequired="true" ErrorText="E-mail is required"/>
                                     <RegularExpression ErrorText="Invalid e-mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/>
                                </ValidationSettings>
                                                </dx:BootstrapTextBox></td>
                                        </tr>

                                        <tr>
                                            <td><h6>User Group:</h6></td>
                                            <%--<td><dx:BootstrapTextBox ID="txtPassword" runat="server" PasswordChar="*" Password="true" style="padding-right: 15px;"></dx:BootstrapTextBox></td>--%>
                                            <td>
                                                <dx:BootstrapComboBox ID="Group_Name" runat="server">
                                                    <Items>
                                                        <dx:BootstrapListEditItem Value="Finance"/>
                                                        <dx:BootstrapListEditItem Value="Marketing"/>
                                                        <dx:BootstrapListEditItem Value="Administration"/>
                                                        <dx:BootstrapListEditItem Value="Information Technology"/>
                                                        <dx:BootstrapListEditItem Value="Audit"/>
                                                        <dx:BootstrapListEditItem Value="Investment"/>
                                                    </Items>
                                                </dx:BootstrapComboBox>
                                            </td>
                                            <td></td>
                                            <td><h6>Created By:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtCreatedBy" Enabled="false" runat="server"></dx:BootstrapTextBox></td>
                                        </tr>

                                        <tr>
                                            <td><h6>Phone No:</h6></td>
                                            <td>
                                                <%--<dx:BootstrapDateEdit ID="BootstrapDateEdit1" runat="server"></dx:BootstrapDateEdit>--%>
                                                <dx:BootstrapTextBox ID="Phone_No" runat="server" Enabled="true" style="padding-right: 15px;">
                                                    <ValidationSettings ValidationGroup="Validation">
                                                    <RegularExpression ValidationExpression="\(?\b[0-9]{4}\)?[-. ]?[0-9]{3}[-. ]?[0-9]{4}\b" ErrorText="Please input missing digits"/>                      
                                                        </ValidationSettings>
                                                        <MaskSettings Mask="+234 (9999) 999-9999" IncludeLiterals="None" />
                                                </dx:BootstrapTextBox>
                                            </td>
                                            <td></td>
                                            <td><h6>Keyed Date:</h6></td>
                                            <td><dx:BootstrapTextBox ID="Keyed_Date" runat="server" Enabled="false"></dx:BootstrapTextBox></td>

                                        </tr>
                                        <tr>
                                            <td><h6>System Roles:</h6></td>
                                            <td style="text-align: left;">

                                             <dx:BootstrapListBox ID="lstSystem_Roles1" runat="server" style=" margin: 0 auto 0 0px; width: 300px; height: 200px; overflow: scroll; padding-left: 0;" SelectionMode="Multiple" DataSourceID="SqlDataSource6" TextField="ROLE_NAME" ValueField="ROLE_NUM" ></dx:BootstrapListBox>
                                            <%--<asp:ListBox ID="lstSystem_Roles_Old" Rows="5" runat="server" style="width: 400px; height: 170px; overflow: scroll;" DataSourceID="SqlDataSource6" DataTextField="ROLE_NAME" DataValueField="ROLE_NUM"></asp:ListBox>--%>
                                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [ROLE_NUM], [ROLE_NAME] FROM [ABSROLEMST]"></asp:SqlDataSource>

                                            </td>
                                            <td> 
                                                <asp:Button ID="btnMoveRole" runat="server" Text="Assign Role >>" style="padding-bottom: 5px; width: 150px;" CssClass="btn btn-primary" OnClick="btnMoveRole_Click"/> <br /><br />
                                                <asp:Button ID="btnMRemoveRole" runat="server" Text="<< Remove Role" CssClass="btn btn-danger" style="width: 150px;" OnClick="btnMRemoveRole_Click"/>
                                            </td>
                                            <td><h6>User Role:</h6></td>
                                            <td style="padding-left: 1px; text-align: left;">
                                                <%--<asp:ListBox ID="lstUser_Roles" runat="server" style="width: 400px; height: 170px; overflow: scroll;"></asp:ListBox></td>--%>
                                            <dx:BootstrapListBox ID="lstUser_Roles1" runat="server" SelectionMode="Multiple" style="margin: 0 auto 0 0px; width: 300px; height: 200px; overflow: scroll; padding-left: 0;"></dx:BootstrapListBox>
                                        </tr>
                                        <%--<tr>
                                            <td>System Roles:</td>
                                            <td>
                                                
                                            </td>
                                            <td>User Role:</td>
                                            <td>
                                                
                                            </td>
                                        </tr>--%>
                                    </table>
                                    <br />
 
                                    <hr />
                                    <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-green" style="height: 50px; padding-right: 30px; width: 100px; font-weight: bolder;" OnClick="Button1_Click" OnClientClick="PopUpRegister();"/>
                                    <asp:Button ID="Add_Roles" runat="server" Text="+ Add Roles to Existing User" CssClass="btn btn-blue-grey" style="height: 50px; font-weight: bolder;" OnClientClick="PopUpRegister();" OnClick="Add_Roles_Click"/>
                                   
                                    <br /><br />
                                    <asp:Label ID="lblError" runat="server" Text="" style="color: red;"></asp:Label>
                                   
                                    <h4 style="text-align: left; background-color: #ddd; color: black; margin-bottom: 1px; padding-bottom: 7px; padding-top: 7px;">Registered Users</h4><br />
                                    <%--<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>--%>

                                    <%--Grid--%>
                                    <asp:GridView ID="Grid_Register" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CssClass="center" Width="90%" CellSpacing="1" CellPadding="7" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" OnSelectedIndexChanged="Grid_Register_SelectedIndexChanged1" DataKeyNames="PWD_REC_NO">
                                        <Columns>

                                            <asp:CommandField ShowSelectButton="True" />

                                            <asp:BoundField DataField="PWD_REC_NO" HeaderText="PWD_REC_NO" SortExpression="PWD_REC_NO" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="PWD_GROUP_ID" HeaderText="PWD_GROUP_ID" SortExpression="PWD_GROUP_ID" ReadOnly="True" />
                                            <asp:BoundField DataField="PWD_ID" HeaderText="PWD_ID" SortExpression="PWD_ID" ReadOnly="True" />
                                            <asp:BoundField DataField="PWD_USER_NAME" HeaderText="PWD_USER_NAME" SortExpression="PWD_USER_NAME" />
                                            <asp:BoundField DataField="PWD_EMAIL_NUM" HeaderText="PWD_EMAIL_NUM" SortExpression="PWD_EMAIL_NUM" />
                                            <asp:BoundField DataField="PWD_MOBILE_NUM" HeaderText="PWD_MOBILE_NUM" SortExpression="PWD_MOBILE_NUM" />
                                            <asp:BoundField DataField="PWD_KEYDTE" HeaderText="PWD_KEYDTE" SortExpression="PWD_KEYDTE" />
                                            <asp:BoundField DataField="PWD_OPERID" HeaderText="PWD_OPERID" SortExpression="PWD_OPERID" />
                                        </Columns>
                                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                        <RowStyle BackColor="White" ForeColor="#003399" />
                                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                        <SortedDescendingHeaderStyle BackColor="#002876" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [PWD_REC_NO], [PWD_GROUP_ID], [PWD_ID], [PWD_USER_NAME], [PWD_EMAIL_NUM], [PWD_MOBILE_NUM], [PWD_KEYDTE], [PWD_OPERID] FROM [ABSPASSTAB]"></asp:SqlDataSource>
                                
                                    <%--<asp:RoundedCornersExtender ID="GridView1_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="GridView1">
                                    </asp:RoundedCornersExtender>--%>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <%--Tab2--%>
                        <dx:BootstrapTabPage Text="Assign Roles">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <br />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h6>Search:</h6></td>
                                            <td><dx:BootstrapTextBox ID="txtSearch" runat="server"></dx:BootstrapTextBox></td>
                                        </tr>
                                    </table>
                                    <br />
                                    
                                    <asp:GridView ID="GridUser" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" Width="90%" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridUser_SelectedIndexChanged" CssClass="center">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="PWD_REC_NO" HeaderText="PWD_REC_NO" SortExpression="PWD_REC_NO" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="PWD_GROUP_ID" HeaderText="PWD_GROUP_ID" SortExpression="PWD_GROUP_ID" />
                                            <asp:BoundField DataField="PWD_USER_NAME" HeaderText="PWD_USER_NAME" SortExpression="PWD_USER_NAME" />
                                            <asp:BoundField DataField="PWD_EMAIL_NUM" HeaderText="PWD_EMAIL_NUM" SortExpression="PWD_EMAIL_NUM" />
                                            <asp:BoundField DataField="PWD_MOBILE_NUM" HeaderText="PWD_MOBILE_NUM" SortExpression="PWD_MOBILE_NUM" />
                                            <asp:BoundField DataField="PWD_KEYDTE" HeaderText="PWD_KEYDTE" SortExpression="PWD_KEYDTE" />
                                            <asp:BoundField DataField="PWD_OPERID" HeaderText="PWD_OPERID" SortExpression="PWD_OPERID" />
                                        </Columns>
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [PWD_REC_NO], [PWD_GROUP_ID], [PWD_USER_NAME], [PWD_EMAIL_NUM], [PWD_MOBILE_NUM], [PWD_KEYDTE], [PWD_OPERID] FROM [ABSPASSTAB]"></asp:SqlDataSource>
                                     <br />
                                    <table class="tab-center">
                                    <tr>
                                        <td><h6>Username:</h6></td>
                                        <td><dx:BootstrapTextBox ID="txt_Username" runat="server" Enabled="false" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                        <td><h6>Email:</h6></td>
                                        <td><dx:BootstrapTextBox ID="txt_Email" runat="server" Enabled="false" style="padding-right: 10px;"></dx:BootstrapTextBox></td>
                                        
                                
                                    </tr>
                                </table>
                                <br />
                                    <h3>System Roles</h3>
                                    <hr />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h5>Roles:</h5></td>
                                            <td><dx:BootstrapComboBox ID="BootstrapComboBox1" runat="server" style="padding-bottom: 15px;" TextField="ROLE_NAME" DataSourceID="SqlDataSource4">                              
                                    </dx:BootstrapComboBox></td>                                                                                      
                                        </tr>                                                       
                                    </table>

                                    <%--ListBox Container--%>
                                    <div class="row p-2" >
                                        <div class="col-md-5">
                                            <h4>Available Roles</h4>
                                            <dx:BootstrapListBox ID="ListBox2" runat="server" TextField="ROLE_NAME" DataSourceID="SqlDataSource4" SelectionMode="Multiple"></dx:BootstrapListBox>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [ROLE_NAME] FROM [ABSROLEMST]"></asp:SqlDataSource>
                                        </div>
                                        <div class="col-md-2" style="padding-top: 60px;">
                                      <asp:Button ID="Button3" runat="server" Text="Assign Roles >>" class="btn btn-blue-grey" OnClick="Button3_Click"/><br /><br />
                                      <asp:Button ID="Button4" runat="server" Text="<< Remove Roles" class="btn btn-danger" OnClick="Button4_Click"/>
                                        </div>
                                        <div class="col-md-5">
                                            <h4>User Roles</h4>
                                            <dx:BootstrapListBox ID="ListBox1" runat="server" SelectionMode="Multiple"></dx:BootstrapListBox>
                                            <asp:Label ID="lblErrRole" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                                                                                                   
                                    <%--<table class="tab-center">
                                        <tr>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox1" runat="server" Text="Create" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox2" runat="server" Text="Edit" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox3" runat="server" Text="Delete" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                    <td><dx:BootstrapCheckBox ID="BootstrapCheckBox4" runat="server" Text="Approve" style="padding-right: 10px;"></dx:BootstrapCheckBox></td>
                                        </tr>
                                    </table>--%>

                                    <br />
                                    <asp:Button ID="Button2" runat="server" Text="SAVE" class="btn btn-primary" OnClick="Button2_Click"/>                                   
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>

                        <%--Tab3--%>
                        <dx:BootstrapTabPage Text="Assign Function">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <%--Content Here!--%>
                                    <br />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h6>Username:</h6></td>
                                        <td><dx:BootstrapTextBox ID="Staff_Name" runat="server" Enabled="false" style="padding-right: 15px;"></dx:BootstrapTextBox></td>
                                        <td><h6>Email:</h6></td>
                                        <td><dx:BootstrapTextBox ID="Staff_Email" runat="server" Enabled="false" style="padding-right: 10px;" OnTextChanged="Staff_Email_TextChanged" OnValueChanged="Staff_Email_ValueChanged"></dx:BootstrapTextBox></td>
                                        
                                            <td><h6>Search:</h6></td>
                                            <td><dx:BootstrapTextBox ID="BootstrapTextBox1" runat="server"></dx:BootstrapTextBox></td>
                                        </tr>
                                    </table>
                                    <br />
                                    
                                    <%--<div style="width: 80%; height: 400px; overflow: scroll;" class="tab-center">--%>
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" Width="90%" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="center" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True"/>
                                            <asp:BoundField DataField="PWD_REC_NO" HeaderText="PWD_REC_NO" SortExpression="PWD_REC_NO" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="PWD_GROUP_ID" HeaderText="PWD_GROUP_ID" SortExpression="PWD_GROUP_ID" />
                                            <asp:BoundField DataField="PWD_USER_NAME" HeaderText="PWD_USER_NAME" SortExpression="PWD_USER_NAME" />
                                            <asp:BoundField DataField="PWD_EMAIL_NUM" HeaderText="PWD_EMAIL_NUM" SortExpression="PWD_EMAIL_NUM" />
                                            <asp:BoundField DataField="PWD_MOBILE_NUM" HeaderText="PWD_MOBILE_NUM" SortExpression="PWD_MOBILE_NUM" />
                                            <asp:BoundField DataField="PWD_KEYDTE" HeaderText="PWD_KEYDTE" SortExpression="PWD_KEYDTE" />
                                            <asp:BoundField DataField="PWD_OPERID" HeaderText="PWD_OPERID" SortExpression="PWD_OPERID" />
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
                                        <%--</div>--%>
                                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [UserName], [Email], [Created_By], [Date_Created] FROM [ABSUSERS]"></asp:SqlDataSource>
                                     <br />
                                    <table class="tab-center">
                                </table>
                                <br />
                                    <h3>System Functions</h3>
                                    <hr />
                                    <table class="tab-center">
                                        <tr>
                                            <td><h5>Roles:</h5></td>
                                            <td><dx:BootstrapComboBox ID="BootstrapComboBox2" runat="server" style="padding-bottom: 15px;" TextField="ROLE_NAME" AutoPostBack="true" OnSelectedIndexChanged="BootstrapComboBox2_SelectedIndexChanged" DataSourceID="SqlDataSource7">                              
                                    </dx:BootstrapComboBox>
                                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [ROLE_NAME] FROM [ABSROLEMST]"></asp:SqlDataSource>
                                            </td>                                                                                      
                                        </tr>                                                       
                                    </table>

                                    <%--ListBox Container--%>
                                    <div class="row p-2" >
                                        <div class="col-md-5">
                                            <h4>Available Functions</h4>
                                            <dx:BootstrapListBox ID="ListBoxFunc" runat="server" SelectionMode="CheckColumn" TextField="TASK_NAME" style="text-align: left;"></dx:BootstrapListBox>
                                            <%--<asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [ROLE_NAME] FROM [ABSROLEMST]"></asp:SqlDataSource>--%>
                                        </div>
                                        <div class="col-md-2" style="padding-top: 60px;">
                                      <asp:Button ID="Button5" runat="server" Text="Assign Function >>" class="btn btn-blue-grey" OnClick="Button5_Click"/><br /><br />
                                      <asp:Button ID="Button6" runat="server" Text="<< Remove Function" class="btn btn-danger" OnClick="Button6_Click"/>
                                        </div>
                                        <div class="col-md-5">
                                            <h4>User Functions</h4>
                                            <dx:BootstrapListBox ID="Func_ListBox" runat="server" SelectionMode="CheckColumn" style="text-align: left;"></dx:BootstrapListBox>   
                                            <asp:Label ID="lblErrFunc" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                                                                                                   
                                    
                                    <br />
                                    <asp:Button ID="Save_Func" runat="server" Text="SAVE" class="btn btn-primary" OnClick="Save_Func_Click"/>
                                    
                                    </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                        <%--Tab3 End--%>

                        <%--Tab4--%>
                        <dx:BootstrapTabPage Text="Other Setup">
                            <ContentCollection>
                                <dx:ContentControl>
                                    <%--<h3>Nothing Here!</h3>--%><br />
                                    <h4>Setup User Actions</h4>
                                    <div style="width: 100%; height: 400px; overflow: scroll;">
                                    <asp:GridView ID="GridView2" runat="server" BorderWidth="1px" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataSourceID="SqlDataSource5" Width="100%" GridLines="Horizontal" CssClass="center" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" DataKeyNames="ROLE_ID" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None">
                                        <AlternatingRowStyle BackColor="#F7F7F7" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="ROLE_ID" HeaderText="ROLE_ID" SortExpression="ROLE_ID" InsertVisible="False" ReadOnly="True" />
                                            <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
                                            <asp:BoundField DataField="STAFF_EMAIL" HeaderText="STAFF_EMAIL" SortExpression="STAFF_EMAIL" />
                                            <asp:BoundField DataField="USER_ROLE" HeaderText="USER_ROLE" SortExpression="USER_ROLE" />
                                            <asp:BoundField DataField="USER_FUNC" HeaderText="USER_FUNC" SortExpression="USER_FUNC" />
                                            <asp:BoundField DataField="ROLE_INSERT" HeaderText="ROLE_INSERT" SortExpression="ROLE_INSERT" />
                                            <asp:BoundField DataField="ROLE_UPDATE" HeaderText="ROLE_UPDATE" SortExpression="ROLE_UPDATE" />
                                            <asp:BoundField DataField="ROLE_DELETE" HeaderText="ROLE_DELETE" SortExpression="ROLE_DELETE" />
                                            <asp:BoundField DataField="ROLE_APPROVE" HeaderText="ROLE_APPROVE" SortExpression="ROLE_APPROVE" />
                                            <asp:BoundField DataField="CREATED_BY" HeaderText="CREATED_BY" SortExpression="CREATED_BY" />
                                            <asp:BoundField DataField="KEYED_DATE" HeaderText="KEYED_DATE" SortExpression="KEYED_DATE" />
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
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Ipolicy_DBConnectionString %>" SelectCommand="SELECT [ROLE_ID], [STAFF_NAME], [STAFF_EMAIL], [USER_ROLE], [USER_FUNC], [ROLE_INSERT], [ROLE_UPDATE], [ROLE_DELETE], [ROLE_APPROVE], [CREATED_BY], [KEYED_DATE] FROM [ABSROLEDETAILS]"></asp:SqlDataSource>
                                <hr />
                                    <table class="tab-center">
                                        <tr style="display: none;">
                                            <td>Role ID</td>
                                            <td>
                                                <dx:BootstrapTextBox ID="Id" runat="server" Enabled="false"></dx:BootstrapTextBox>
                                            </td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>UserName</td>
                                            <td><dx:BootstrapTextBox ID="Name" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                                            <td>Email</td>
                                            <td><dx:BootstrapTextBox ID="Email" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                                            <td>Role</td>
                                            <td><dx:BootstrapTextBox ID="Role" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                                            <td>Function</td>
                                            <td><dx:BootstrapTextBox ID="Function" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                                        </tr>
                                        <tr>
                                            <td>Insert</td>
                                            <td><dx:BootstrapComboBox ID="Insert" runat="server">
                                                <Items>
                                                    <dx:BootstrapListEditItem Value="Y"/>
                                                    <dx:BootstrapListEditItem Value="N"/>
                                                </Items>
                                                </dx:BootstrapComboBox></td>
                                            <td>Update</td>
                                            <td><dx:BootstrapComboBox ID="Update" runat="server">
                                                <Items>
                                                    <dx:BootstrapListEditItem Value="Y"/>
                                                    <dx:BootstrapListEditItem Value="N"/>
                                                </Items>
                                                </dx:BootstrapComboBox></td>
                                            <td>Delete</td>
                                            <td><dx:BootstrapComboBox ID="Delete" runat="server">
                                                <Items>
                                                    <dx:BootstrapListEditItem Value="Y"/>
                                                    <dx:BootstrapListEditItem Value="N"/>
                                                </Items>
                                                </dx:BootstrapComboBox></td>
                                            <td>Approve</td>
                                            <td><dx:BootstrapComboBox ID="Approve" runat="server">
                                                <Items>
                                                    <dx:BootstrapListEditItem Value="Y"/>
                                                    <dx:BootstrapListEditItem Value="N"/>
                                                </Items>
                                                </dx:BootstrapComboBox></td>
                                        </tr>
                                        <tr>
                                            <td>Created By</td>
                                            <td><dx:BootstrapTextBox ID="CreatedBy" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                                            <td>Keyed Date</td>
                                            <td><dx:BootstrapTextBox ID="KeyedDate" runat="server" Enabled="false"></dx:BootstrapTextBox></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                        </tr>
                                    </table>
                                    <br />
                                    <asp:Button ID="Add_Actions" runat="server" Text="+ Add Actions" class="btn btn-primary" OnClick="Add_Actions_Click" OnClientClick="PopUp();"/>
                                <br />
                                    <asp:Label ID="Action_Error" runat="server" Text="" style="color: red;"></asp:Label>
                                </dx:ContentControl>
                            </ContentCollection>
                        </dx:BootstrapTabPage>
                    </TabPages>
                </dx:BootstrapPageControl>
                <%--Tab4 End--%>
            </div>
        </ContentTemplate>
        </asp:UpdatePanel>
    </form>

     <%--Alertify JS PopUp Modal:--%>    
    <script type="text/javascript">
        function PopUp() {
            alertify.alert('Message', 'Actions Added!',
                function () {
                    alertify.success('Ok');
                });
        }

        function PopUpRegister() {
            alertify.alert('Message', 'User Registered Successfully!',
                function () {
                    alertify.success('1 User Added!');
                });
        }
    </script>
    
</asp:Content>
   
    


