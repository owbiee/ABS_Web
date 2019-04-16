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

namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class User_Setup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtDate.Value = DateTime.Now;
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

                    string Password = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");

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

                    if(ReturnCode == -1)
                    {
                        lblError.Text = "User already exist!";
                    }
                    else
                    {
                        lblError.Text = "Registration Sucessful!";

                        txtUserName.Text = "";
                        txtPassword.Text = "";
                        txtCreatedBy.Text = "";
                        txtEmail.Text = "";
                    }
                }
            }
            catch(Exception ex)
            {
                lblError.Text = ex.Message;
            }
        }

        protected void ASPxGridView1_SelectionChanged(object sender, EventArgs e)
        {
              ASPxGridView1.Selection.SelectRow(0);
        }
    }
}