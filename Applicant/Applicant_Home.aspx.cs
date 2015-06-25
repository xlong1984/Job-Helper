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

    }
    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] != null)
        {
            ScriptManager.RegisterStartupScript(Page, GetType(),"", "warning();", true);
        }
        else
            Response.Redirect("/Applicant/login.aspx");
    }
    protected void RegBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Applicant/Registration.aspx");
    }
}