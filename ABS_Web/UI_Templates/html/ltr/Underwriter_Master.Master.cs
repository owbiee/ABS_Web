using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class Underwriter_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //
        protected void LNK_POL1101_Click(object sender, EventArgs e)
        {
            //LNK_POL1101.Text = System.DateTime.Now.ToString();
            string struid = "1001";
            Response.Redirect("/UI_Templates/html/ltr/POL1101.aspx?uid=" + struid + ";typ=valmenu");
        }

    }
}