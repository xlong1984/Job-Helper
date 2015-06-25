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
    }
    protected void InboxBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_SuggestionIn.aspx");
    }
    protected void OutboxBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_SuggestionOut.aspx");
    }
}