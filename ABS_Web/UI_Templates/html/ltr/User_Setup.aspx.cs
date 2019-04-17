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

namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class User_Setup : System.Web.UI.Page
    {
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
                string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
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
    }
}