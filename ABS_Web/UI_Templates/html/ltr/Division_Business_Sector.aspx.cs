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
    public partial class Division_Business_Sector : System.Web.UI.Page
    {
        //DB Connection Strings:
        string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSectorID.Text = "001";
        }

        //SAVE DATA:
        protected void btn_Save_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(CS))
                {
                    conn.Open();
                    string query = "INSERT INTO [dbo].[ABSBUSECTAB] (CTBS_ID, CTBS_NUM, CTBS_LONG_DESCR, CTBS_SHORT_DESCR, CTBS_HOD_NAME, CTBS_FLAG, CTBS_KEYDTE, CTBS_OPERID) VALUES ('"+txtSectorID.Text+"', '"+txtSectorCode.Text+"', '"+txtFullDesc.Text+"', '"+txtShortDesc.Text+"', '"+txtHODName.Text+"', '"+"A"+"', '"+DateTime.Now+"', '"+"ADM"+"')";
                    SqlCommand sqlcmd = new SqlCommand(query, conn);
                    sqlcmd.CommandType = CommandType.Text;
                    //sqlcmd.Parameters.Clear();

                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_ID_1", txtSectorID.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_NUM_2", txtSectorCode.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_LONG_DESCR_3", txtFullDesc.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_OTHERNAME_4", txtShortDesc.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR1_5", txtHODName.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR2_6", txtUnitLegend.Text);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_FLAG_16", "A");
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_KEYDTE_17", DateTime.Now);
                    //sqlcmd.Parameters.AddWithValue("@CTINSRD_OPERID_18", "ADM");

                    sqlcmd.ExecuteNonQuery();


                    conn.Close();
                    sqlcmd.Dispose();

                    sqlcmd = null;
                    //conn = null;
                    lblMessage.Text = "Data Saved Successfully!";
                }
            }
            catch(Exception ex)
            {
                lblMessage.Text = "Sector Code already exists!";
                
            }
        }
    }
}