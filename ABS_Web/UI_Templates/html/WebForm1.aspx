
<%@ Page Title="" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.vb" Inherits="ABS_Web.UI_Templates.html.WebForm1" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .Grid {
            border: 1px solid #ccc;
            border-collapse: collapse;
            background-color: #fff;
        }
 
        .Grid th {
            background-color: #f7f7f7;
            color: #333;
             border: 1px solid #ccc;
            /*font-weight: bold;*/
            padding: 2px;
        }
 
        .Grid td {
            padding: 1px;
            border: 1px solid #ccc;
        }

        .Grid tr:nth-child(odd) {background-color:#fff;}
	    .Grid tr:nth-child(even) {background-color:#f1f1f1;}

    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="div_main" class="div_main" >    

         <div style="display: none;">
            <h2>Users and Role Management</h2>
        </div>
        <asp:UpdatePanel ID="UP_USER_ROLE" runat="server">
        <ContentTemplate>
            <div>
                <asp:Label ID="lblReturn_Data" runat="server"></asp:Label>
            </div>    

           <div>
               Search for User: &nbsp;
               <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox> &nbsp;
               <asp:Button ID="btnSearch" Text="Search" runat="server" />

           </div>
                    <asp:Label ID="lblError" runat="server" ForeColor="Maroon"></asp:Label>
                    <hr />     
        <ajaxToolkit:tabcontainer ID="TabContainer1" runat="server" ScrollBars="Both" ActiveTabIndex="0" Width="100%">
            <ajaxToolkit:TabPanel ID="TabPanel1" runat="server" ScrollBars="Both" HeaderText="Create User" Width="100%">
                <ContentTemplate> 
                    <div style="display: none;">
                        Select user to modify: &nbsp;
                        <asp:DropDownList ID="cboUsers" AutoPostBack="false" runat="server" Font-Bold="true" Width="350px"></asp:DropDownList>
                        &nbsp;<asp:Button ID="btnUsers" Text="Get Data" runat="server" />
                    </div>  
                              
                    <table style="width: 100%;" >
                        <tr>
                            <td align="left" valign="top" style="border: 0px solid #ccc; width: 370px;" >
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
                                            <asp:CommandField ShowSelectButton="True" ButtonType="Button" SelectText="Modify" HeaderText="Select" HeaderStyle-Width="80px" HeaderStyle-HorizontalAlign="Left" />

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
                                            <asp:Button ID="btnUser_Sumbit" Text="Submit" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            
            <ajaxToolkit:TabPanel ID="TabPanel2" runat="server" ScrollBars="Both" HeaderText="Manage User Roles" Width="100%">
                <ContentTemplate>
                    <table border="0">
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
                                    <asp:Button ID="Button1" Text="Move Selected Roles to User >>" runat="server" />
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
                                    <asp:Button ID="Button4" Text="<< Remove Roles Assigned to User" runat="server" />
                                </div>

                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

            <ajaxToolkit:TabPanel ID="TabPanel3" runat="server" ScrollBars="Both" HeaderText="Create Roles" Width="100%">
                <ContentTemplate>
                    <table border="0">
                        <tr>
                            <td align="left" valign="top">
                                <div>
                                    <h2>Create Roles</h2>
                                </div>
                                <table border="0">
                                    <tr>
                                        <td>Role Name:</td>
                                        <td><asp:TextBox ID="txtRoleMast_Name" MaxLength="100" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Activate Role:</td>
                                        <td><asp:CheckBox ID="chkRole_Status" runat="server" /></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Button ID="Button2" Text="Submit" runat="server" />
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
                </ContentTemplate>
            </ajaxToolkit:TabPanel>

            <ajaxToolkit:TabPanel ID="TabPanel4" runat="server" ScrollBars="Both" HeaderText="Create Function" Width="100%">
                <ContentTemplate>
                    <table border="0">
                        <tr>
                            <td align="left" valign="top">
                                <div>
                                    <h2>Create Function</h2>
                                </div>
                                <table border="0">
                                    <tr>
                                        <td>Function Name:</td>
                                        <td><asp:TextBox ID="TextBox2" MaxLength="100" runat="server"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>Activate Function:</td>
                                        <td><asp:CheckBox ID="CheckBox1" runat="server" /></td>
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
                                            <asp:Button ID="Button3" Text="Submit" runat="server" />
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
                </ContentTemplate>
            </ajaxToolkit:TabPanel>
            
        </ajaxToolkit:tabcontainer>
    
        </ContentTemplate>
    </asp:UpdatePanel>

    </div>

</asp:Content>
