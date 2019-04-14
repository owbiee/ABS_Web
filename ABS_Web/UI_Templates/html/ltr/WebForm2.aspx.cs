using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ABS_Web.UI_Templates.html.ltr
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Proc_Get_AllUsers();
            }
        }

        private void Proc_Get_AllUsers()
        {
            //ABS_API.STNameSpace.STWebService objABS_API = null;
            //objABS_API = new ABS_API.STNameSpace.STWebService();


            //int rowcnt = 0;

            ////'lblError.Text = "Error message"

            //string strCON = ABSWeb_Module_API.gnGET_CONNECTION_STRING();
            //string strSQL = " select PWD_REC_NO as fld_user_rec_no, PWD_ID as fld_user_id, PWD_USER_NAME as fld_user_name, PWD_USER_EMAIL as fld_user_email, PWD_KEYDTE as fld_user_keyed_date FROM ABSPASSTAB ORDER BY PWD_USER_NAME ";

            //string mytbl = objABS_API.ABS_GetData_SQLQuery(strSQL, strCON);
            //If UCase(Left(mytbl.Rows(0)(1).ToString(), 5)) = "ERROR" Then
            //    ' show error
            //    lblError.Text = mytbl.Rows(0)(1).ToString() & " - " & mytbl.Rows(0)(2).ToString()
            //Else
            //    'cboUsers.Items.Clear()
            //    'cboUsers.Items.Add(New ListItem("--- select ---", "*"))
            //    'For rowcnt = 0 To mytbl.Rows.Count - 1
            //    '    cboUsers.Items.Add(New ListItem(mytbl.Rows(rowcnt)("fld_user_name").ToString(), mytbl.Rows(0)("fld_user_id").ToString()))
            //    'Next
            //    GV_User_List.DataSource = mytbl
            //    GV_User_List.DataBind()
            //End If

            //objABS_API.Dispose()
            //objABS_API = Nothing
        }
    }
}