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
    public partial class Function_Setup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
            //    using (SqlConnection conn = new SqlConnection(CS))
            //    {
            //        //string query = "SELECT * FROM ABSROLEMST";
            //        //SqlCommand command = new SqlCommand("SELECT ROLE_NO, ROLE_NAME FROM ABSROLEMST", conn);
            //        //conn.Open();

            //        //Role_Drop.DataSource = command.ExecuteReader();
            //        //Role_Drop.DataBind();
            //        //Role_Drop.Fields = "ROLE_NAME";
            //    }
            //}
            //catch (Exception ex)
            //{
            Role_Drop.DataBind();
            //}
        }
    }
}