using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABS_Web.User_Login
{
    public partial class UND_Menu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
    }
}