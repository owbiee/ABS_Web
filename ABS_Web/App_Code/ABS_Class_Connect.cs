using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ABS_Web_NS_Connect
{
    public class ABS_Class_Connect
    {
        public string ABS_Get_Con()
        {
            string myCon = System.Configuration.ConfigurationManager.ConnectionStrings["Ipolicy_DBConnectionString"].ConnectionString;
            return myCon;
        }
    }
}