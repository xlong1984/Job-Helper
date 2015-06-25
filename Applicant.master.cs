using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class aspx_Applicant : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ImgBtn1.CausesValidation = false;
        HomeBtn.CausesValidation = false;
        ProfileBtn.CausesValidation = false;
        ApplicationBtn.CausesValidation = false;
        JCBtn.CausesValidation = false;
        SuggestionBtn.CausesValidation = false;
        ChatBtn.CausesValidation = false;
        

    }
    protected void ImgBtn1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.bu.edu");
    }
    protected void HomeBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_Home.aspx");
    }
    protected void ProfileBtn_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            Response.Redirect("~/Applicant/Applicant_Profile.aspx");
    }
    protected void ApplicationBtn_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            Response.Redirect("~/Applicant/Applicant_Applications.aspx");
    }
    protected void JCBtn_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        Response.Redirect("~/Applicant/Search.aspx");
    }
    protected void SuggestionBtn_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            Response.Redirect("~/Applicant/Applicant_SuggestionOut.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/homepage.aspx");
    }
    protected void ChatBtn_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            Response.Redirect("~/Applicant/Chatroom_login.aspx");
    }
}
