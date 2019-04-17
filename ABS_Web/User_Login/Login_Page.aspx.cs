using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using ABS_Web.Model;
using ABS_Web;

namespace ABS_Web.User_Login
{
    public partial class Login_Page : System.Web.UI.Page
    {
        //Database Entities;
        Ipolicy_DBEntities1 entities = new Ipolicy_DBEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            //On Page Load Event
            //if(Page.IsPostBack)
            //{
            //    Button1.Enabled = true;
            //}
        }
       

        //Login Click
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                //Button1.Enabled = false;
                //Check if Username & Password Exists in Ipolicy_DB:
                var result = entities.ABSPASSTABs.FirstOrDefault(i => i.PWD_USER_NAME.Equals(BootstrapTextBox1.Text)
                && i.PWD_CODE.Equals(BootstrapTextBox2.Text));

                if (result != null)
                {
                    string myuid = "";
                    //myuid = BootstrapTextBox1.Text;
                    myuid = result.PWD_ID;
                    Session["loginname"] = myuid;
                    Response.Redirect("UND_Menu.aspx");

                }
                else
                {
                    Label3.Text = "Invalid Login Credentials!";
                    //Button1.Enabled = true;
                }
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
        }
    }
}