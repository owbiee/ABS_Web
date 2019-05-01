using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace ABS_Web
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Upload/"));
                List<ListItem> files = new List<ListItem>();
                foreach (string filePath in filePaths)
                {
                    files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                }
                GridView2.DataSource = files;
                GridView2.DataBind();
            }
        }

        //UPLOAD:
        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string fileName = Path.GetFileName(FileUpload2.PostedFile.FileName);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Upload/") + fileName);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        //DELETE:
        protected void lnkDelete_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            File.Delete(filePath);
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        //DOWNLOAD:
        protected void lnkDownload_Click(object sender, EventArgs e)
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
    }


}