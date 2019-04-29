using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ABS_Web.Model;

namespace ABS_Web.UI.Underwriting
{
    public partial class New_Master : System.Web.UI.MasterPage
    {
        //Ipolicy_DBEntities2 dbEntities = new Ipolicy_DBEntities2();
        protected void Page_Load(object sender, EventArgs e)
        {
            lblUser.Text = Convert.ToString(Session["loginname"]);
        }

        public string UserName => this.lblUser.Text;

        protected void Insured_Click(object sender, EventArgs e)
        {

        }

        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{
            
        //}
    }
}