using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        InfoLabel.Visible = false;
        InfoLabel2.Visible = false;
    }
    protected void BackBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_Profile.aspx");
    }
}