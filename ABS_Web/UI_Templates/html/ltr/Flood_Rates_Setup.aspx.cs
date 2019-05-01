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
    public partial class Flood_Rates_Setup : System.Web.UI.Page
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
                    string query = "INSERT INTO [dbo].[ABSFETAB] (RT_FE_YEAR, RT_FE_NUM, RT_FE_RATE, RT_FE_DESCR, RT_FE_FLAG, RT_FE_KEYDTE, RT_FE_OPERID) VALUES ('"+txtUwYear.Text+"','"+txtSubRisk.Text+"', '"+txtTransact.Text+"', '"+txtTransactDesc.Text+"', '"+"A"+"', '"+DateTime.Now+"', '"+"ADM"+"')";
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
                    lblMessage.Text = "Data Saved Succesfully!";
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "An Error Occued: " + ex.Message;
            }
        }
    }
}