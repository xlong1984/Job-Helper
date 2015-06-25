using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Applicant_InSuggestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("~/Company/EmployerLogin.aspx");
        }
    }
    protected void ComposeBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/SuggestionCompose.aspx");
    }
    protected void SentBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/SuggestionSent.aspx");
    }
}