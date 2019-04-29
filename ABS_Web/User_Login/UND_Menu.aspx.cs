using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ABS_Web.Model;
using System.Data.SqlClient;
using System.Configuration;

namespace ABS_Web.User_Login
{
    public partial class UND_Menu : System.Web.UI.Page
    {
        protected string strLANDING_ITEMS;
        protected string strApp_Name;
        protected string strApp_Image;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label label = new Label();
            //label.Text = "ABS";
            //ASPxPanel1.Controls.Equals(label.Text);
            lblUser.Text = Convert.ToString(Session["loginname"]);
            string myEmail = Convert.ToString(Session["loginemail"]);

            strLANDING_ITEMS = "";

            // load application roles granted a user
            DataTable mydt = (new clsABS_UserRoles().ABS_User_Role_DataLoad(myEmail));
            try
            {
                if (mydt == null || mydt.Rows.Count == 0) {
                    Error1.Text = "Sorry! No Application Role assigned to you yet";
                }
                else
                {
                    
                    strApp_Name = "";
                    strApp_Image = "";

                    strLANDING_ITEMS = "";
                    strLANDING_ITEMS = strLANDING_ITEMS + "<table class'tab-center' border='0' cellpadding='5' cellspacing='5' rule='all' >";
                    strLANDING_ITEMS = strLANDING_ITEMS + "<tr>";

                    // http://localhost:44302/UI_Templates/html/ltr/UnderWriter
                    if (mydt.Rows.Count > 0)
                    {
                        //DISPLAY APP ICONS BASED ON ASSIGNED ROLES:
                        for (int c = 0; c < mydt.Rows.Count - 1; c++)
                        {
                            if (mydt.Rows[c]["user_role_name"].ToString().ToLower() == "underwriting")
                            {
                                strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("../UI_Templates/html/ltr/UnderWriter.aspx", "Underwriting", "006-document.png"));
                            }
                            //next
                            if (mydt.Rows[c]["user_role_name"].ToString().ToLower() == "claim")
                            {
                                strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("#", "Claim", "014-play.png"));
                            }
                            // next
                            if (mydt.Rows[c]["user_role_name"].ToString().ToLower() == "information technology")
                            {
                                strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("#", "Information Technology", "013-target.png"));
                            }
                            // next
                            if (mydt.Rows[c]["user_role_name"].ToString().ToLower() == "finance")
                            {
                                strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("#", "Finance", "015-banknote.png"));
                            }
                        }
                        strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("../UI_Templates/html/ltr/General_Settings.aspx", "General Settings", "008-gears.png"));

                    }
                    else
                    {
                        Error1.Text = "Sorry! No Application Role assigned to you yet";
                    }
                    
                    //strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("../UI_Templates/html/ltr/UnderWriter.aspx", "Underwriting-1", "006-document.png"));
                    //strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("#", "Claim", "014-play.png"));
                    //strLANDING_ITEMS = strLANDING_ITEMS + (new clsABS_UserRoles().ABS_User_Role_AddMenu("#", "Reinsurance", "005-message.png"));

                    strLANDING_ITEMS = strLANDING_ITEMS + "</tr>";
                    strLANDING_ITEMS = strLANDING_ITEMS + "</table>";
                }
            }
            catch ( Exception ex)
            {
                string strerr = ex.Message;
                Error1.Text = strerr;
            }
            mydt = null;
            
        }


        //Underwriting Module:
        protected void UND_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI_Templates/html/ltr/UnderWriter.aspx");
        }

        //User Setup:
        protected void link_Setup_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UI_Templates/html/ltr/General_Settings.aspx");
        }

        protected void Log_Out_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login_Page.aspx");
        }
    }

    //CLASS ABS UserRoles:
    public class clsABS_UserRoles
    {
        public DataTable ABS_User_Role_DataLoad(string strEmail)
        {

            //Ipolicy_DBEntities1 mydb = new Ipolicy_DBEntities1();
            //var mytbl = ( from p in mydb.ABSROLEUSERS.OrderBy(p=> p.USER_ROLE_NAME) select p);
            // use the ABSROLEUSER tbale

            
            DataTable mydt = new DataTable();

            string strcon = ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
            string myQuery = " select user_role_name from ABSROLEUSERS where user_role_user_name = '" + strEmail + "'";

            SqlConnection mycon = new SqlConnection(strcon);
            SqlCommand mycmd = new SqlCommand(myQuery);
            SqlDataAdapter mysda = new SqlDataAdapter();

            mycon.Open();
            mycmd.Connection = mycon;
            mycmd.CommandType = CommandType.Text;
            mysda.SelectCommand = mycmd;
            mysda.Fill(mydt);
            mycon.Close();
            return mydt;
 
        }

        public string ABS_User_Role_AddMenu(string strApp_RoleURL, string strApp_RoleName, string strApp_RoleImage)
        {
            string strMenu = "";
            strMenu = strMenu + "<td style='background-color: white;'>";
            strMenu = strMenu + " <a href='" + strApp_RoleURL + "'>" + " <img src='" + strApp_RoleImage + "' style='height: 150px; width: 150px; padding - right: 200px; '/> <br />" + strApp_RoleName + "</a> ";
            strMenu = strMenu + "</td>";

            return strMenu;
        }
    }
}