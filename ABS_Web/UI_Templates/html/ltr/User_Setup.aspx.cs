using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.Web;
using System.Text;


namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class User_Setup : System.Web.UI.Page
    {
        //DB Connection Strings:
        string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //lstSystem_Roles.Items.Clear();
                //lstUser_Roles.Items.Clear();
                Keyed_Date.Value = DateTime.Now;
                txtCreatedBy.Text = Convert.ToString(Session["loginname"]);
                Add_Actions.Enabled = false;
                Add_Roles.Enabled = false;
            }

        }

        //Register User:
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    if (Button1.Text == "Register")
                    {
                        //string strQuery = "";

                        conn.Open();
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO [dbo].[ABSPASSTAB] (PWD_GROUP_ID, PWD_ID, PWD_USER_NAME, PWD_CODE, PWD_EMAIL_NUM, PWD_MOBILE_NUM, PWD_KEYDTE, PWD_OPERID) VALUES('" + 001 + "','" + Group_Name.SelectedItem.Value + "','" + txtUserName.Text + "','" + "CAI" + "', '" + txtEmail.Text + "', '" + Phone_No.Text + "', '" + DateTime.Now.ToString() + "', '" + txtCreatedBy.Text + "')";
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Grid_Register.DataBind();

                        //strQuery = "insert into table1 (fld, fld2, fld3) values (@p1, @p2, @P3)";
                        //cmd.Parameters.Clear();
                        //cmd.Parameters.AddWithValue("@p1", "001");
                        //cmd.Parameters.AddWithValue("@p2", BootstrapTextBox1.Text);
                        //int c = cmd.ExecuteNonQuery();


                        lblError.Text = "User Registeration Successful!";
                        ScriptManager.RegisterStartupScript(Page, GetType(), "Status", "PopupRegister();", true);

                        InsertRole();
                    }
                    else if(Button1.Text == "Update")
                    {
                        conn.Open();
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "UPDATE [dbo].[ABSPASSTAB] SET PWD_ID='"+Group_Name.Text+"', PWD_USER_NAME='"+txtUserName.Text+"',PWD_EMAIL_NUM='"+txtEmail.Text+"', PWD_MOBILE_NUM='"+Phone_No.Text+"' WHERE PWD_REC_NO='"+txtRefID.Text+"'";
                        cmd.ExecuteNonQuery();
                        conn.Close();
                        Grid_Register.DataBind();
                    }
                    
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

            //Button1.Text = "Register";
        }

        //INSERT INTO ABSROLEUSERS:
        public void InsertRole()
        {
            try
            {

                using (SqlConnection conn = new SqlConnection(CS))
                {
                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;

                    //Loop through Selected User Functions ListBox:
                    foreach (ListEditItem item in lstUser_Roles1.Items)
                    {
                        cmd.CommandText = "INSERT INTO [dbo].[ABSROLEUSERS] (USER_ROLE_ID, USER_ROLE_USER_ID, USER_ROLE_USER_NAME, USER_ROLE_NUM, USER_ROLE_NAME, USER_ROLE_KEYDTE) VALUES('" + 001 + "','" +txtCreatedBy.Text + "','" + txtEmail.Text + "','" + 002 + "', '" + item + "', '" + DateTime.Now.ToString() +"')";
                        cmd.ExecuteNonQuery();
                    }

                    conn.Close();
                   
                    
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }


        //On Select Row:
        protected void ASPxGridView1_SelectionChanged(object sender, EventArgs e)
        {
            //GridView gridView = new GridView()

            //List<object> list = ASPxGridView1.GetSelectedFieldValues(ASPxGridView1.KeyFieldName);
           
           
            
        }

        //Select User From GridView:
        protected void GridUser_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow view = GridUser.SelectedRow;

            txt_Username.Text = view.Cells[1].Text;
            txt_Email.Text = view.Cells[2].Text;

        }



        protected void Grid_Register_SelectedIndexChanged(object sender, EventArgs e)
        {
            //  OnSelectedIndexChanged="Grid_Register_SelectedIndexChanged"
            GridViewRow view = Grid_Register.SelectedRow;
            
            txtUserName.Text = view.Cells[5].Text;
            txtEmail.Text = view.Cells[6].Text;
            txtCreatedBy.Text = view.Cells[9].Text;
            txtRefID.Text = view.Cells[1].Text;
            Keyed_Date.Text = view.Cells[8].Text;
            Phone_No.Text = view.Cells[7].Text;
            Button1.Text = "Update";
            txtEmail.Enabled = false;
            lblError.Text = "";
        }

        protected void Grid_Register_SelectedIndexChanged1(object sender, EventArgs e)
        {
            try
            {
                GridViewRow view = Grid_Register.SelectedRow;

                txtUserName.Text = view.Cells[4].Text;
                txtEmail.Text = view.Cells[5].Text;
                //txtCreatedBy.Text = view.Cells[9].Text;
                txtRefID.Text = view.Cells[1].Text;
                //Keyed_Date.Text = view.Cells[8].Text;
                Phone_No.Text = view.Cells[6].Text;
                Group_Name.Text = view.Cells[3].Text;
                Button1.Text = "Update";
                txtEmail.Enabled = false;
                Add_Roles.Enabled = true;
                lblError.Text = "";
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }

        }

        //Assign Roles:
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (ListBox2.SelectedIndex == -1)
            {
                lblErrRole.Text = "Select a Role!";
            }
            else
            {
                ListBox1.Items.Add(ListBox2.SelectedItem);
            }

        }

        //Remove Roles:
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (ListBox1.SelectedIndex == -1)
            {
                lblErrRole.Text = "Select a User Role!";
            }
            else
            {
                ListBox2.Items.Add(ListBox1.SelectedItem);
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow view = GridView1.SelectedRow;
            Staff_Name.Text = view.Cells[1].Text;
            Staff_Email.Text = view.Cells[2].Text;

            LoadRoles();
        }

        //Function ListBox Select: Assign Function
        protected void Button5_Click(object sender, EventArgs e)
        {
            if(ListBoxFunc.SelectedIndex == -1)
            {
                lblErrFunc.Text = "Select User Functions";
            }
            else
            {
                foreach(ListEditItem item in ListBoxFunc.SelectedItems)
                {
                    Func_ListBox.Items.Add(item);
                }
            }
            
        }

        //Remove Function:
        protected void Button6_Click(object sender, EventArgs e)
        {
            if(Func_ListBox.SelectedIndex == -1)
            {
                lblErrFunc.Text = "Select Function";
            }
            else
            {
                foreach(ListEditItem item in Func_ListBox.SelectedItems)
                {
                    ListBoxFunc.Items.Add(item);
                }
            }
            
        }

        //Register selected User Roles to ABSROLECHK:
        protected void Button2_Click(object sender, EventArgs e)
        {
            //NO CODE HERE...
        }

        //Save Functions to ABSROLEDETAILS:
        protected void Save_Func_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;

                    //Loop through Selected User Functions ListBox:
                    foreach(ListEditItem item in Func_ListBox.Items)
                    {
                        cmd.CommandText = "INSERT INTO [dbo].[ABSROLEDETAILS] (STAFF_NAME, STAFF_EMAIL, USER_ROLE, USER_FUNC, ROLE_FLAG, CREATED_BY, KEYED_DATE) VALUES('" + Staff_Name.Text + "','" + Staff_Email.Text + "','" + BootstrapComboBox2.Text + "','" + item + "', '"+"A"+"', '"+ Convert.ToString(Session["loginname"]) + "', '"+DateTime.Now.ToString()+"')";
                        cmd.ExecuteNonQuery();
                    }

                    conn.Close();
                    ListBoxFunc.Items.Clear();
                    Func_ListBox.Items.Clear();
                    lblErrFunc.Text = "User Roles Saved Successfully!";
                }
            }
            catch(Exception ex)

            {
                lblErrFunc.Text = ex.Message;
            }
        }

        //LOAD FUNCTIONS FROM ABSROLETASK ON ROLE SELECT:
        protected void BootstrapComboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(BootstrapComboBox2.SelectedItem != null)
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(CS))
                    {

                        SqlCommand cmd = new SqlCommand("SELECT TASK_NAME FROM [dbo].[ABSROLETASK] WHERE TASK_ROLE_NUM = '" + BootstrapComboBox2.Text + "'", conn);
                        conn.Open();
                        ListBoxFunc.DataSource = cmd.ExecuteReader();
                        ListBoxFunc.DataBind();
                    }
                }
                catch(Exception ex)
                {
                    lblErrFunc.Text = ex.Message;
                }
            }
        }

        //Select User From ABSROLEDETAILS: Assign CRUD Actions
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow viewRow = GridView2.SelectedRow;
            Id.Text = viewRow.Cells[1].Text;
            Name.Text = viewRow.Cells[2].Text;
            Email.Text = viewRow.Cells[3].Text;
            Role.Text = viewRow.Cells[4].Text;
            Function.Text = viewRow.Cells[5].Text;
            Insert.Text = viewRow.Cells[6].Text;
            Update.Text = viewRow.Cells[7].Text;
            Delete.Text = viewRow.Cells[8].Text;
            Approve.Text = viewRow.Cells[9].Text;
            CreatedBy.Text = viewRow.Cells[10].Text;
            KeyedDate.Text = viewRow.Cells[11].Text;
            //Staff_Email.Text = viewRow.Cells[1].Text;
            Add_Actions.Enabled = true;

        }

        //UPDATE CRUD ACTIONS IN ABSROLEDETAILS:
        protected void Add_Actions_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand command = new SqlCommand();
                    conn.Open();
                    command = conn.CreateCommand();
                    command.CommandType = CommandType.Text;
                    command.CommandText = "UPDATE [dbo].[ABSROLEDETAILS] SET ROLE_INSERT='"+Insert.SelectedItem.Text+"', ROLE_UPDATE='"+Update.SelectedItem.Text+"',ROLE_DELETE='"+Delete.SelectedItem.Text+"',ROLE_APPROVE='"+Approve.SelectedItem.Text+"' WHERE ROLE_ID = '"+Id.Text+"'";
                    command.ExecuteNonQuery();
                    conn.Close();
                    GridView2.DataBind();
                    Action_Error.Text = "Actions Registered Successfully!";
                    Add_Actions.Enabled = false;

                    ScriptManager.RegisterStartupScript(Page, GetType(), "JsStatus", "Popup();", true);
                }
            }
            catch(Exception ex)
            {
                Action_Error.Text = ex.Message;
            }
        }
                   
        //Assign Selected Roles to User:
        protected void btnMoveRole_Click(object sender, EventArgs e)
        {
            //Loop through all selected Roles:
            foreach (ListEditItem item in lstSystem_Roles1.SelectedItems)
            {
                lstUser_Roles1.Items.Add(item);
            }

        }

        //Remove Selected Roles from User:
        protected void btnMRemoveRole_Click(object sender, EventArgs e)
        {
            foreach (ListEditItem item in lstUser_Roles1.SelectedItems)
            {
                lstSystem_Roles1.Items.Add(item);
            }
        }

        //Add Roles to Existing Users:
        protected void Add_Roles_Click(object sender, EventArgs e)
        {
            InsertRole();
        }

        //On Email Text_Changed: Load Assigned Roles:
        protected void Staff_Email_TextChanged(object sender, EventArgs e)
        {
            

        }

        protected void Staff_Email_ValueChanged(object sender, EventArgs e)
        {
            
        }

        private void LoadRoles()
        {
            if (Staff_Email.Text != "")
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("SELECT USER_ROLE_NAME FROM [dbo].[ABSROLEUSERS] WHERE USER_ROLE_USER_NAME = '" + Staff_Email.Value + "'", conn);
                        conn.Open();
                        BootstrapComboBox2.DataSource = cmd.ExecuteReader();
                        BootstrapComboBox2.DataBind();
                    }
                }
                catch (Exception ex)
                {
                    lblErrFunc.Text = ex.Message;
                }
            }
        }
    }
}

