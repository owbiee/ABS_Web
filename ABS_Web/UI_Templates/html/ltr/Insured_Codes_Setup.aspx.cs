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
using System.Configuration;
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
                new ABS_Web_NS_Utility.ABS_Class_Utility().ABS_Populate_ComboBox("STATE", txtState);
                txtInsuredCode.Text = "";
                txtInsuredID.Text = "001";
                txtInsuredNo.Text = "0";
                Btn_Save.Enabled = true;
                Btn_Delete.Enabled = false;

                ////txtInsuredCode.Text="I0000004";
                //txtInsuredCode.Enabled = false;
                //txtInsuredName.Text="NIGERIA WATERCORPORATION";
                //txtOtherNames.Text="";
                //txtAddress1.Text="23 IKOYI STREET";
                //txtAddress2.Text= "LAGOS";
                //txtAddress3.Text= "NIGERIA";
                ////InsuredType.Text="CLASS A";
                //txtOccupation.Text="WATER SERVICES";
                //txtAgentPhone.Text="09046577110";
                //txtInsuredPhone.Text="09007776112";
                //txtInsuredPhone.Text="";
                //txtEmail.Text="enquiries@watercorpnigeria.com";
           
                //txtCountry.Text="Nigeria";
                //txtBVN.Text="65123";


                try
                {
                    string CS = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("SELECT * FROM [dbo].[ABSATTACH_TAB]", conn);
                        conn.Open();
                        GridView2.DataSource = cmd.ExecuteReader();
                        GridView2.DataBind();
                        
                    }
                }
                catch(Exception ex)
                {

                }
                
            }

           
        }

        //SAVE:
        protected void Btn_Save_Click(object sender, EventArgs e)
        {

            // "ABSInsuredSave"
            string strSP_Name = "";
            string strINS_NUM = "";
            if (txtInsuredCode.Text.Trim() == "")
            {
                // call method to get next no
                strINS_NUM = (new ABS_Web_NS_Utility.ABS_Class_Utility().ABS_Class_GetNext_No("INS_CODE", "001", ""));
                if (strINS_NUM.Substring(0, 4) == "ERROR")
                {
                    lblMsg.Text = strINS_NUM.ToString();
                    return;
                }

                lblMsg.Text = "New ID Generaated: " + strINS_NUM.ToString();
                txtInsuredCode.Text = strINS_NUM.Trim();
                strSP_Name = "ABSSP_INSRDTAB_INSERT";
                //return;
            }
            else
            {
                strSP_Name = "ABSSP_INSRDTAB_UPDATE";
            }

            if (txtInsuredCode.Text.Trim() == "")
            {
                lblMsg.Text = "Sorry! Cannot save data. Missing insured code.";
                return;
            }


                // get database connection string
                string strCONN = (new ABS_Web_NS_Connect.ABS_Class_Connect().ABS_Get_Con());

            SqlConnection sqlcon = new SqlConnection();
            sqlcon.ConnectionString = (strCONN);

            if (sqlcon.State == System.Data.ConnectionState.Closed)
            {
                sqlcon.Open();
            }

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
                //sqlcmd.ExecuteNonQuery();
                SqlDataReader sqlDR = sqlcmd.ExecuteReader();
                if(sqlDR.Read())
                {
                    txtInsuredNo.Text = sqlDR["FLD_IDENTITY_NO"].ToString();

                }
                //lblMsg.Visible = true;
                lblMsg.Text = "Data Saved successfully";
                //lblMsg.Visible = false;
                Btn_Save.Text = "Update";
                Btn_Delete.Enabled = true;
                txtReferenceNo.Text = txtInsuredCode.Text;
                
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

        //UPLOAD FILE:
        //protected void btn_Upload_Click(object sender, EventArgs e)
        //{
        //    string fileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
        //    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + fileName);
        //    Response.Redirect(Request.Url.AbsoluteUri);
        //}

        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + System.IO.Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }

        protected void lnkDelete_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            System.IO.File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        //UPLOAD:
        protected void Upload_Click(object sender, EventArgs e)
        {
            if(txtReferenceNo.Text == "" || txtDocType.SelectedItem.Text=="" || txtDescr.Text=="")
            {
                lblMessage.Text = "Information Required!";
            }
            else
            {
                string fileName = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/") + fileName);
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            
        }

        
        protected void Btn_Save1_Click1(object sender, EventArgs e)
        {

        }
    }
}