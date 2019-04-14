using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
//using ABS_Web.UI_Templates;
//using ABS_RoleNS.ABSROLE_CLASS;
       
namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class POL1101 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("data source=DEV-001\\SQLEXPRESS; initial catalog=Ipolicy_DB; integrated security=true;");

        string strPMenu = "";
        string strPClass = "";
        string strReturnVal = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            // perm=menu
            strPMenu = Request.QueryString["pmenu"];
            strPClass = Request.QueryString["pclass"];

            if (!Page.IsPostBack)
            {

                strReturnVal = GetPermission("menu", "1001", strPMenu + "_MENU", strPClass);
                if (strReturnVal.ToUpper() != "Y")
                {
                    // redirect to access deny page
                    //Response.Redirect("redirectPage.aspx");
                }
            }


        }

        //SUBMIT
        protected void Button1_Click(object sender, EventArgs e)
        {
            //
            // check for MENU permission (can user access a mudule: e.g UNDERWRITING, CLAIM)
            //string strReturnVal = GetPermission("1001", "POLICY_MOTOR_MENU_ACCESS");

            // check for FORM action (insert, update, delete, view, print)
            strReturnVal = GetPermission("action", "1001", strPMenu + "_ACTION", strPClass);
            if (strReturnVal.ToUpper() == "Y")
            {
                TextBox1.Text = "HO/V/29/F0000001";
                Errorlbl.Text = "Can submit data";
                // insert code to save data
            }

            else
            {
                TextBox1.Text = "";
                Errorlbl.Text = "cannot insert data";
            }

        }

 
        public string GetPermission(string strType, string strUID, string strPMenu_Name, string strPClass_Name)
        {
            // Note: example for parameter [strPerm_Name]
            //  POLICY_MOTOR_MENU_ACCESS
            //  POLICY_MOTOR_CRUD_VIEW_PRINT

            string strReturnVal = "N";

            string strSQL = "";
            //strSQL = "sp_name";

            //strSQL = "select * from ABSROLEDTLS WHERE role_dtl_user_id = @p01 and role_dtl_module_name = @p02";

            strSQL = "select * from ABSROLEDTLS WHERE role_dtl_user_id = '" + strUID + "' and role_dtl_module_name = '" + strPMenu_Name + "'";

            conn.Open();
            SqlCommand mycmd = new SqlCommand(strSQL, conn);
            // sql query string
            mycmd.CommandType = CommandType.Text;

            // for stored procedure
            // mycmd.CommandType = CommandType.StoredProcedure;
            //mycmd.Parameters.Clear();
            //mycmd.Parameters.Add("p01", SqlDbType.VarChar, 10).Value = strUID;
            //mycmd.Parameters.Add("@p02", SqlDbType.VarChar, 10).Value = strPerm_YN;

            string myperm = "";

            SqlDataReader mydr = mycmd.ExecuteReader();
            if (mydr.Read())
            {
                // menu access check
                if (strType == "menu")
                {
                    myperm = (string)mydr["role_dtl_permission_yn"];
                }
                // action access check
                if (strType == "action")
                {
                    myperm = (string)mydr["role_dtl_insert_yn"];
                }
                if (myperm == "Y") { strReturnVal = "Y"; }
            }

            conn.Close();
            mydr = null;
            conn = null;

            return strReturnVal;
        }

    }
}