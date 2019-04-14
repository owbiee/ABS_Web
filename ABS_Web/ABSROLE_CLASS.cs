﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ABS_Web.App_Code
{
    public  class ABSROLE_CLASS
    {
        SqlConnection conn = new SqlConnection("data source=DEV-001\\SQLEXPRESS; initial catalog=Ipolicy_DB; integrated security=true;");

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
