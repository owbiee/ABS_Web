using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABS_Web_NS_Utility
{
    public class ABS_Class_Populate
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
    }
}