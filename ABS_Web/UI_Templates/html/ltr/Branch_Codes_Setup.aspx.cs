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
    public partial class Branch_Codes_Setup : System.Web.UI.Page
    {
        //DB Connection Strings:
        string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //SAVE:
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    conn.Open();
                    
                    SqlCommand sqlcmd = new SqlCommand("", conn);
                    sqlcmd.CommandType = CommandType.StoredProcedure;

                    //sqlcmd.Parameters.Clear();

                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_ID_1", txtRecID.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_NUM_2", txtBranchCode.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_LONG_DESCR_3", txtBranchMgr.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_OTHERNAME_4", txtName.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR1_5", txtAddress.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR2_6", txtRegion.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_FLAG_16", "A");
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_KEYDTE_17", DateTime.Now);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_OPERID_18", "ADM");

                    sqlcmd.ExecuteNonQuery();


                    conn.Close();
                    sqlcmd.Dispose();

                    sqlcmd = null;
                    //conn = null;
                }
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}