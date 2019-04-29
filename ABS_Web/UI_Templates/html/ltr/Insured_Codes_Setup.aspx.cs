using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ABS_Web.Model;
using ABS_Web.UI.html;
using ABS_Web.UI.Underwriting;
using System.Data.SqlClient;
using System.Data;
//using ABS_Web.App_Code;

namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class Insured_Codes_Setup : System.Web.UI.Page
    {       
        Ipolicy_DBEntities1 DbEntities = new Ipolicy_DBEntities1();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                new ABS_Web_NS_Utility.ABS_Class_Populate().ABS_Populate_ComboBox("STATE", txtState);
                txtInsuredID.Text = "001";
                txtInsuredCode.Text="I0000004";
                txtInsuredName.Text="MTN NIGERIA LIMITED";
                txtOtherNames.Text="";
                txtAddress1.Text="10 Downing Street";
                txtAddress2.Text= "101 B Close";
                txtAddress3.Text= "";
                //InsuredType.Text="CLASS A";
                txtOccupation.Text="TELECOMS";
                txtAgentPhone.Text="8084657711";
                txtInsuredPhone.Text="9077761123";
                txtInsuredPhone.Text="";
                txtEmail.Text="enquiries@mtnnigeria.com";
                txtInsuredName.Text="";
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_TAG", "");
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_FLAG", "A");
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_KEYDTE", DateTime.Now);
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_OPERID", "ADM");
                
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_DOB", DBNull.Value);
                
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_DOB", DOB.Text); // save the date in the format MM/dd/yyyy
                
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_GENDER", txtGender.SelectedItem.Value);
                //sqlcmd.Parameters.AddWithValue("CTINSRD_ORIGIN", txtState.SelectedItem.Text);
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_LGA", txtLocalGovt.Text);
                //sqlcmd.Parameters.AddWithValue("@CTINSRD_BIZORIGIN", txtState.Text); // store value of txtOrign
                txtCountry.Text="Nigeria";
                txtBVN.Text="9008077123001";
                
            }

            //INSTANCE OF THE OBJECT (MASTER PAGE): 
            New_Master new_Master = new New_Master();

            //GET USERNAME CONTROL FROM MASTER PAGE:
            var userControl = new_Master.FindControl("lblUser");

            //CHECK IF EMAIL COLUMN IN ABSROLEDETAILS = USER EMAIL:
            var result = DbEntities.ABSROLEDETAILS.FirstOrDefault(i => i.STAFF_EMAIL.Equals(userControl));

            if (result != null)
            {
                
                if (result.USER_FUNC.Equals("Insured Codes Setup"))
                {
                    Response.Redirect("Insured_Codes_Setup.aspx");
                }
                else
                {
                    Response.Redirect("Error_Page.aspx");
                }
            }


        }

        //SAVE:
        protected void Btn_Save_Click(object sender, EventArgs e)
        {

            // get database connection string
            string strCONN = (new ABS_Web_NS_Connect.ABS_Class_Connect().ABS_Get_Con());

            SqlConnection sqlcon = new SqlConnection();
            sqlcon.ConnectionString = (strCONN);

            if (sqlcon.State == System.Data.ConnectionState.Closed)
            {
                sqlcon.Open();
            }

            // "ABSInsuredSave"
            string strSP_Name = "ABSSP_INSRDTAB_INSERT";

            SqlCommand sqlcmd = new SqlCommand(strSP_Name, sqlcon);
            sqlcmd.CommandType = CommandType.StoredProcedure;
            sqlcmd.Parameters.Clear();

            sqlcmd.Parameters.AddWithValue("@CTINSRD_ID_1", txtInsuredID.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_NUM_2", txtInsuredCode.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_LONG_DESCR_3", txtInsuredName.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_OTHERNAME_4", txtOtherNames.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR1_5", txtAddress1.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR2_6", txtAddress2.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_ADDR3_7", txtAddress3.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_TYPE_8", InsuredType.Value);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_OCCUP_9", txtOccupation.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_TEL_NUM1_10", txtAgentPhone.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_TEL_NUM2_11", txtInsuredPhone.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_GSM_NUM_12", txtInsuredPhone.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_EMAIL_NUM_13", txtEmail.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_SHORT_DESCR_14", "");
            sqlcmd.Parameters.AddWithValue("@CTINSRD_TAG_15", "");
            sqlcmd.Parameters.AddWithValue("@CTINSRD_FLAG_16", "A");
            sqlcmd.Parameters.AddWithValue("@CTINSRD_KEYDTE_17", DateTime.Now);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_OPERID_18", "ADM");

            if (DOB.Text == "")
            {
                sqlcmd.Parameters.AddWithValue("@CTINSRD_DOB", DBNull.Value);
            }
            else
            {
                sqlcmd.Parameters.AddWithValue("@CTINSRD_DOB", DOB.Text); // save the date in the format MM/dd/yyyy
            }

            sqlcmd.Parameters.AddWithValue("@CTINSRD_GENDER", txtGender.SelectedItem.Value);
            sqlcmd.Parameters.AddWithValue("CTINSRD_ORIGIN", txtState.SelectedItem.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_LGA", txtLocalGovt1.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_BIZORIGIN", txtState.SelectedItem.Text); // store value of txtOrign
            sqlcmd.Parameters.AddWithValue("@CTINSRD_NATION", txtCountry.Text);
            sqlcmd.Parameters.AddWithValue("@CTINSRD_BV_NUM", txtBVN.Text);

            try
            {
                sqlcmd.ExecuteNonQuery();
                //lblMsg.Visible = true;
                lblMsg.Text = "Data Saved successfully";
                //lblMsg.Visible = false;

                sqlcon.Close();
                sqlcmd.Dispose();

                sqlcmd = null;
                sqlcon = null;

            }
            catch( Exception ex)
            {
                //lblMsg.Visible = true;
                lblMsg.Text = "Error has occured. Reason: " + ex.Message.ToString();
            }

            
        }
    }
}