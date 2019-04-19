using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class Role_Setup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BootstrapButton1_Click(object sender, EventArgs e)
        {
            try
            {
                string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    // INSERT INTO TABLE1(FLD_ID,FLD_NAME FLD_DATE) VALUES('001','UNDERWRITING','04/16/2019');

                    string strSQL = "";

                    //DataSet myds = new DataSet();

                    strSQL = "SELECT TOP 1 * FROM ABSROLEMST ";
                   
                    strSQL = "INSERT INTO ABSROLEMST (ROLE_ID, ROLE_NUM, ROLE_NAME, ROLE_KEYDTE) ";
                    strSQL += " VALUES(";
                    strSQL += "'001'" + ",'" + txtRoleCode.Text + "'" + ",'" + txtRoleName.Text + "'";
                    strSQL += ",'" + System.DateTime.Now.ToString() + "'";
                    strSQL += " )";

                    //strSQL = "insert into ABSROLEMST (ROLE_ID, ROLE_NUM, ROLE_NAME, ROLE_KEYDTE) VALUES(?, ? ?) ";

                    strSQL = "INSERT INTO ABSROLEMST (ROLE_ID, ROLE_NUM, ROLE_NAME, ROLE_FLAG, ROLE_KEYDTE) VALUES(@p01, @p02, @p03, @p04, @p05) ";

                    SqlCommand cmd = new SqlCommand(strSQL, conn);
                    //cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandType = CommandType.Text;

                    cmd.Parameters.Clear();
                    cmd.Parameters.Add("@p01", SqlDbType.VarChar, 3).Value = "001";
                    cmd.Parameters.Add("@p02", SqlDbType.VarChar, 5).Value = txtRoleCode.Text;
                    cmd.Parameters.Add("@p03", SqlDbType.VarChar, 50).Value = txtRoleName.Text;
                    cmd.Parameters.Add("@p04", SqlDbType.VarChar, 5).Value = "A";
                    cmd.Parameters.Add("@p05", SqlDbType.DateTime).Value = System.DateTime.Now;

                    conn.Open();
                    int ReturnCode = cmd.ExecuteNonQuery();

                    if (ReturnCode == 0)
                    {
                        lblError.Text = "Role not saved!";
                    }
                    else
                    
                    {
                        lblError.Text = "Role Added Sucessfully!";

                    }
                  
                   
                    txtRoleCode.Text = "";
                    txtRoleName.Text = "";

                    //Grid_Role.DataBind();
                    ASPxGridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message;
            }

            //BootstrapButton1.Text = "Add";

        }
    }
}