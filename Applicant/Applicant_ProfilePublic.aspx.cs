using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class aspx_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PublicNameLabel.Text = Session["Username"].ToString();
    }


    protected void SendMsg_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/SuggestionCompose.aspx");
    }
    protected void QResults_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/QViewResults.aspx");
    }
    protected void ReviewCV_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            DataView db = (DataView)CVSql.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView dbv in db)
            {
                CVurlLabel.Text = dbv["Resume"].ToString();
                string location = CVurlLabel.Text;
                if(location!="")
                {
                    Response.ClearContent();
                    Response.Clear();
                    Response.ContentType = "text/plain";
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + location + ";");
                    Response.TransmitFile(location);
                    Response.Flush();
                    Response.End();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "", "warning();", true);
                }
            }
        }
    }
}