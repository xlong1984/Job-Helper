using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        BackBtn.CausesValidation = false;
        UpdataBtn.Focus();
        UpdateBtn2.CausesValidation = false;
        UpdateBtn3.CausesValidation = false;
    }
    protected void UpdateBtn_Click(object sender, EventArgs e)
    {
        editprofileSql.Update();
        Response.Redirect("~/Applicant/Applicant_Profile.aspx");
    }
    protected void UpdateBtn2_Click(object sender, EventArgs e)
    {
        editprofileSql2.Update();
        Response.Redirect("~/Applicant/Applicant_Profile.aspx");
    }
    protected void UpdateBtn3_Click(object sender, EventArgs e)
    {
        editprofileSql3.Update();
        Response.Redirect("~/Applicant/Applicant_Profile.aspx");
    }
    protected void BackBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_Profile.aspx");
    }

}