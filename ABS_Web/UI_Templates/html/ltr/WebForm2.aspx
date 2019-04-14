<%@ Page Title="" Language="C#" MasterPageFile="~/UI/html/ltr/New_Master.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="ABS_Web.UI_Templates.html.ltr.WebForm2" %>

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
    <form runat="server">
        <br />
    <div class="body">
        <br />      
        <h4><i class="icon-users2"></i>User Setup</h4><br />
        <dx:BootstrapPageControl ID="BootstrapPageControl1" runat="server">
            <TabPages>
                <dx:BootstrapTabPage Text="Create User">
                    <ContentCollection>
                        <dx:ContentControl>
         <div style="display: none;">
            <h2>Users and Role Management</h2>
        </div>

            <div>
                <asp:Label ID="lblReturn_Data" runat="server"></asp:Label>
            </div>    

           <div>
               Search for User: &nbsp;
               <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox> &nbsp;
               <asp:Button ID="btnSearch" Text="Search" runat="server" CssClass="btn btn-blue-grey"/>

           </div>
                    <asp:Label ID="lblError" runat="server" ForeColor="Maroon"></asp:Label>
                    <hr />     

                   <div style="display: none;">
                        Select user to modify: &nbsp;
                        <asp:DropDownList ID="cboUsers" AutoPostBack="false" runat="server" Font-Bold="true" Width="350px"></asp:DropDownList>
                        &nbsp;<asp:Button ID="btnUsers" Text="Get Data" runat="server" />
                    </div>  
                              
                    <table style="width: 100%;" class="tab-center">
                        <tr>
                            <td style=" text-align: left; vertical-align:top; border: 0px solid #ccc; width: 370px;" >
                                <div>
                                    <h3>List of Users</h3>
                                </div>
                                
                                <div style="border: 0px solid #ccc; height: 300px; width: 370px; overflow: auto; margin-right: 5px; padding-right: 5px;">
                                    <asp:GridView ID="GV_User_List" runat="server" Font-Size="Small" Width="100%" CssClass="Grid"
                                        DataKeyNames="fld_user_rec_no"  AutoGenerateColumns="false"
                                        PageSize="40"   GridLines="Both"  AllowPaging="true" AllowSorting="true"
                                         ShowHeader="true" ShowFooter="true"
                                        PagerSettings-Position="TopAndBottom" PagerSettings-Mode="NextPreviousFirstLast"
                                        PagerSettings-FirstPageText="First" PagerSettings-NextPageText="Next"
                                        PagerSettings-PreviousPageText="Previous" PagerSettings-LastPageText="Last"
                                         EmptyDataText="No records has been added">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Edit" HeaderText="Select" HeaderStyle-Width="80px" HeaderStyle-HorizontalAlign="Left" />

                                            <asp:TemplateField HeaderText="SNo" HeaderStyle-Width="70" ItemStyle-Width="70">
                                                <ItemTemplate>
                                                    &nbsp;&nbsp; <%# Container.DataItemIndex + 1 %>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                            
                                            <asp:BoundField DataField="fld_user_id" HeaderText="User ID" HeaderStyle-Width="110" ItemStyle-Width="110" SortExpression="fld_user_id" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"  />
                                            <asp:BoundField DataField="fld_user_name" HeaderText="User Name" HeaderStyle-Width="130" ItemStyle-Width="130" SortExpression="fld_user_name" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"   />
                                            <asp:BoundField DataField="fld_user_email" Visible="false" HeaderText="User Email" HeaderStyle-Width="130" ItemStyle-Width="130" SortExpression="fld_user_name" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"   />
                                            
                                        </Columns>

                                    </asp:GridView>

                                </div>

                            </td>

                            <td align="left" valign="top" style="width: 100%;" >
                                <div>
                                    <h3>Create Users</h3>
                                </div>
                                <table border="0">                                    
                                    <tr>
                                        <td>User ID (Auto):</td>
                                        <td><asp:TextBox ID="txtUser_ID" Enabled="false" MaxLength="10" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>User Full Name</td>
                                        <td><asp:TextBox ID="txtUser_Name" MaxLength="25" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Email Address:</td>
                                        <td><asp:TextBox ID="txtUser_Email" MaxLength="25" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td>User Company</td>
                                        <td>
                                            <asp:TextBox ID="txtUser_Comp" MaxLength="25" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr style="display: none;">
                                        <td>User Business Group</td>
                                        <td><asp:TextBox ID="txtUser_Group" MaxLength="25" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="btnUser_Sumbit" Text="Submit" runat="server" CssClass="btn btn-green"/>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                        </tr>
                    </table>

                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapTabPage>
                <%--TAB2--%>
                <dx:BootstrapTabPage Text="Manage User Roles">
                    <ContentCollection>
                        <dx:ContentControl>
                   <table border="0" class="tab-center">
                        <tr>
                            <td colspan="1">
                                <asp:Label ID="lblUser_Role_ID" runat="server" Text="User ID here..."></asp:Label>
                            </td>
                            <td colspan="1">
                                <asp:Label ID="lblUser_Role_Name" runat="server" Text="User name here..."></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <!-- left frame -->
                            <td>
                                <div>
                                    <h2>Available System Roles</h2>
                                </div>

                                <table>
                                    <tr>
                                        <td colspan="2" valign="top">
                                            <asp:GridView ID="GV_All_Roles" runat="server" AutoGenerateColumns="false" Width="100%" CssClass="Grid"
                                               DataKeyNames="fld_role_rec_no" Font-Size="Small"
                                                EmptyDataText="No records has been added">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SNo" HeaderStyle-Width="70" ItemStyle-Width="70">
                                                        <ItemTemplate>
                                                            &nbsp;&nbsp; <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField  HeaderStyle-Width="70" ItemStyle-Width="70" ItemStyle-HorizontalAlign="Center">
                                                        <HeaderTemplate>
                                                            <asp:CheckBox ID="chkAllX" Text="All" runat="server" onclick = "checkAll(this);" />
                                                        </HeaderTemplate> 

        	                                            <ItemTemplate>                                                    
        		       		                                <asp:CheckBox ID="chkSel" runat="server" onclick="Check_Click(this);" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                            
                                                    <asp:BoundField DataField="fld_role_num" HeaderText="Role Code" HeaderStyle-Width="110" ItemStyle-Width="110" SortExpression="fld_role_num" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"  />
                                                    <asp:BoundField DataField="fld_role_name" HeaderText="Role Name" HeaderStyle-Width="130" ItemStyle-Width="130" SortExpression="fld_role_name" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"   />
                                            
                                                </Columns>


                                            </asp:GridView>

                                        </td>
                                    </tr>
                                </table>
                                <div style="text-align: center;">
                                    <asp:Button ID="Button1" Text="Move Selected Roles to User >>" runat="server" CssClass="btn btn-blue-grey"/>
                                </div>

                            </td>

                            <!-- Right frame -->
                            <td align="left" valign="top">
                                <div>
                                    <h2>Assigned User Roles</h2>
                                </div>
                                <table border="0">
                                    <tr>
                                        <td colspan="2">
                                            <asp:GridView ID="GV_User_Roles" runat="server">

                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                                <div style="text-align: center;">
                                    <asp:Button ID="Button4" Text="<< Remove Roles Assigned to User" runat="server" CssClass="btn btn-danger"/>
                                </div>

                            </td>
                        </tr>
                    </table>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapTabPage>

                <dx:BootstrapTabPage Text="Create Roles">
                    <ContentCollection>
                        <dx:ContentControl>
                    <table border="0" class="tab-center">
                        <tr>
                            <td align="left" valign="top">
                                <div>
                                    <h2>Create Roles</h2><br />
                                </div>
                                <table border="0">
                                    <tr>
                                        <td>Role Name:</td>
                                        <td><asp:TextBox ID="txtRoleMast_Name" MaxLength="100" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><asp:CheckBox ID="chkRole_Status" Text="Activate Role" runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="Button2" Text="Submit" runat="server" CssClass="btn btn-green"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div>
                                                <asp:Label ID="lblRole_Master" Font-Size="Large" Font-Bold="true" runat="server" Text="List of Roles"></asp:Label>
                                            </div>
                                            <hr />
                                            
                                            <asp:GridView ID="GV_Role_Master" runat="server" AutoGenerateColumns="false" Width="100%" CssClass="Grid"
                                               DataKeyNames="fld_role_rec_no" Font-Size="Small"
                                                EmptyDataText="No records has been added">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SNo" HeaderStyle-Width="70" ItemStyle-Width="70">
                                                        <ItemTemplate>
                                                            &nbsp;&nbsp; <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                            
                                                    <asp:BoundField DataField="fld_role_num" HeaderText="Role Code" HeaderStyle-Width="110" ItemStyle-Width="110" SortExpression="fld_role_num" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"  />
                                                    <asp:BoundField DataField="fld_role_name" HeaderText="Role Name" HeaderStyle-Width="130" ItemStyle-Width="130" SortExpression="fld_role_name" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"   />
                                            
                                                </Columns>


                                            </asp:GridView>

                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapTabPage>

                <dx:BootstrapTabPage Text="Create Function">
                    <ContentCollection>
                        <dx:ContentControl>
                    <table border="0" class="tab-center">
                        <tr>
                            <td align="left" valign="top">
                                <div>
                                    <h2>Create Function</h2><br />
                                </div>
                                <table border="0">
                                    <tr>
                                        <td>Function Name:</td>
                                        <td><asp:TextBox ID="TextBox2" MaxLength="100" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><asp:CheckBox ID="CheckBox1" Text="Activate Function" runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td>Select Role:</td>
                                        <td>
                                            <asp:DropDownList ID="cboRole_List_Function" AutoPostBack="true" runat="server" Width="300px">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="Button3" Text="Submit" runat="server" CssClass="btn btn-green"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div>
                                                <asp:Label ID="lblFunction_Master" Font-Size="Large" Font-Bold="true" runat="server" Text="List of Functions/Task"></asp:Label>
                                            </div>
                                            <hr />
                                            <asp:GridView ID="GV_Function_Master" runat="server" AutoGenerateColumns="false" Width="100%" CssClass="Grid"
                                               DataKeyNames="fld_task_rec_no" Font-Size="Small"
                                                EmptyDataText="No records has been added">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="SNo" HeaderStyle-Width="70" ItemStyle-Width="70">
                                                        <ItemTemplate>
                                                            &nbsp;&nbsp; <%# Container.DataItemIndex + 1 %>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                            
                                                    <asp:BoundField DataField="fld_task_num" HeaderText="Task Code" HeaderStyle-Width="110" ItemStyle-Width="110" SortExpression="fld_task_num" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"  />
                                                    <asp:BoundField DataField="fld_task_name" HeaderText="Task Name" HeaderStyle-Width="130" ItemStyle-Width="130" SortExpression="fld_task_name" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"   />
                                                    <asp:BoundField DataField="fld_role_name" HeaderText="Role Name" HeaderStyle-Width="130" ItemStyle-Width="130" SortExpression="fld_role_name" ItemStyle-HorizontalAlign="Left"  ConvertEmptyStringToNull="true"   />
                                            
                                                </Columns>

                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                        </dx:ContentControl>
                    </ContentCollection>
                </dx:BootstrapTabPage>
            </TabPages>
        </dx:BootstrapPageControl>

  

    </div>

        </form>

</asp:Content>
