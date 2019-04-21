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
                txtDate.Value = DateTime.Now;
                txtCreatedBy.Text = Convert.ToString(Session["loginname"]);
            }

        }

        //Register User:
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", conn);
                    cmd.CommandType = CommandType.StoredProcedure;

                    //Hash Password:
                    string Password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
                    //var pwd = Membership.CreateUser(txtUserName.Text, txtPassword.Text);

                    SqlParameter username = new SqlParameter("@UserName", txtUserName.Text);
                    SqlParameter password = new SqlParameter("@User_Pass", Password);
                    SqlParameter count = new SqlParameter("@Login_Count", txtLoginCount.Text);
                    SqlParameter email = new SqlParameter("@Email", txtEmail.Text);
                    SqlParameter createdby = new SqlParameter("@Created_By", txtCreatedBy.Text);
                    SqlParameter date = new SqlParameter("@Date_Created", txtDate.Text);

                    cmd.Parameters.Add(username);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(count);
                    cmd.Parameters.Add(email);
                    cmd.Parameters.Add(createdby);
                    cmd.Parameters.Add(date);

                    conn.Open();
                    int ReturnCode = (int)cmd.ExecuteScalar();

                    if (ReturnCode == -1)
                    {
                        lblError.Text = "User already exist!";
                    }
                    else
                     if (ReturnCode == 2)
                    {
                        lblError.Text = "User Profile Updated Sucessfully!";
                        
                    }
                    else
                    {
                        lblError.Text = "Registration Sucessful!";
                    }
                    txtRefID.Text = "";
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                    //txtCreatedBy.Text = "";
                    txtDate.Value = DateTime.Now;
                    txtEmail.Text = "";
                    txtEmail.Enabled = true;

                    Grid_Register.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

            Button1.Text = "Register";
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
            GridViewRow view = Grid_Register.SelectedRow;
            
            txtUserName.Text = view.Cells[1].Text;
            txtEmail.Text = view.Cells[2].Text;
            txtCreatedBy.Text = view.Cells[3].Text;
            txtRefID.Text = view.Cells[5].Text;
            Button1.Text = "Update";
            txtEmail.Enabled = false;
            lblError.Text = "";
        }

        //Assign Roles:
        protected void Button3_Click(object sender, EventArgs e)
        {
            if(ListBox2.SelectedIndex == -1)
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
        }

        //Function ListBox Select: Assign Function
        protected void Button5_Click(object sender, EventArgs e)
        {
            Func_ListBox.Items.Add(ListBoxFunc.SelectedItem);
        }

        //Remove Function:
        protected void Button6_Click(object sender, EventArgs e)
        {
            ListBoxFunc.Items.Add(Func_ListBox.SelectedItem);
        }

        //Register selected User Roles to ABSROLECHK:
        protected void Button2_Click(object sender, EventArgs e)
        {

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
                }
            }
            catch(Exception ex)

            {
                lblErrFunc.Text = ex.Message;
            }
        }

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
    }
}