using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace ABS_Web_NS_Utility
{
    public class ABS_Class_Utility
    {
        public void ABS_Populate_ComboBox(string pvCODE, DevExpress.Web.Bootstrap.BootstrapComboBox pvCombo)
        {
            //DevExpress.Web.Bootstrap.BootstrapListEditItem mylist = null;
            switch (pvCODE.ToLower())
            {
                case "state":
                    pvCombo.Items.Clear();
                    //mylist = new DevExpress.Web.Bootstrap.BootstrapListEditItem("Lagos","Lagos");
                    pvCombo.Items.Add(new DevExpress.Web.Bootstrap.BootstrapListEditItem("Lagos","Lagos"));
                    pvCombo.Items.Add(new DevExpress.Web.Bootstrap.BootstrapListEditItem("Kano", "Kano"));
                    pvCombo.Items.Add(new DevExpress.Web.Bootstrap.BootstrapListEditItem("Abuja", "Abuja"));
                    break;

                default:
                    break;
            }
        }

        public string ABS_Class_GetNext_No(string pvCode, string pvParam_01, string pvParam_02)
        {

            string strSP_Name = "";
            int intc = 0;
            intc = intc + 0;

            switch (pvCode.ToUpper())
            {
                case "INS_CODE":
                    strSP_Name = "ABSSP_INSRDCNT_GET_SERIAL";
                    break;

                default:
                    break;
            }

            string myRetVal = "";

            // get database connection string
            string strCONN = (new ABS_Web_NS_Connect.ABS_Class_Connect().ABS_Get_Con());

            SqlConnection sqlcon = new SqlConnection();
            sqlcon.ConnectionString = (strCONN);
            SqlCommand sqlcmd = new SqlCommand(strSP_Name, sqlcon);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.Clear();

            sqlcmd.Parameters.AddWithValue("@param_rec_id", pvParam_01.Trim());
            myRetVal = "";
            try
            {
                //intc = sqlcmd.Parameters["outParam"].Value.ToString();
                sqlcon.Open();
                SqlDataReader sqlDR = sqlcmd.ExecuteReader();
                if (sqlDR.Read())
                {
                    if (pvCode.Trim() == "INS_CODE")
                    {
                        myRetVal = sqlDR["autoinsrd_rec_numX"].ToString();
                    }
                    else
                    {
                        myRetVal = "ERROR - Invalid parameter - " + pvCode.ToString();
                    }
                }
                else
                {
                    myRetVal = "ERROR - No data return... ";
                }


            }
            catch (Exception ex)
            {
                myRetVal = "ERROR - " + ex.Message;
            }
            finally {
                if(sqlcon.State== ConnectionState.Open) { sqlcon.Close(); }
                sqlcon.Dispose();
                sqlcmd.Dispose();

                sqlcmd = null;
                sqlcon = null;

            }

            return myRetVal;
        }
    }

    
}