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
        InfoLabel.Visible = false;
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            PublicPage.Visible = false;

        
    }

    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        Response.Redirect("login.aspx");
    }
    protected void Edit_Profile_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            Response.Redirect("~/Applicant/Edit_Profile.aspx");
    
    }
    protected void UploadCV_Click(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
            Response.Redirect("~/Applicant/UploadCV.aspx");
    }

    protected void PhotoSubmit_Click(object sender, EventArgs e)
    {
            try
            {
                string TargetLocation = Server.MapPath("~/Images/Photoes/");
                String url = TargetLocation + PhotoUpload.FileName;
                if(PhotoUpload.FileContent.Length>307200)
                {
                    InfoLabel.Visible = true;
                    InfoLabel.Text = "Please choose a photo smaller than 300KB!";
                }
                else
                {
                    PhotoUpload.SaveAs(url);
                    //InfoLabel.Visible = true;
                    //InfoLabel.Text = "File name: " +
                    //PhotoUpload.PostedFile.FileName + "<br>" + PhotoUpload.PostedFile.ContentLength + " kb<br>" + "Content type: " +PhotoUpload.PostedFile.ContentType;
                    PhotoUrl.Text = "~/Images/Photoes/" + PhotoUpload.FileName;
                    HeadshotSql1.Update();
                    PhotoUpload.Visible = false;
                    PhotoSubmit.Visible = false;
                    ImageButton2.Visible = true;
                    AddPhotoLink.Visible = true;
                    AddPhotoLink.Text = "Change another photo";
                }
            }
            catch (Exception ex)
            {
                InfoLabel.Visible = true;
                InfoLabel.Text = "ERROR: " + ex.Message.ToString();
            }

    }
    protected void AddPhotoLink_Click(object sender, EventArgs e)
    {
        PhotoUpload.Visible = true;
        PhotoSubmit.Visible = true;
        ImageButton2.Visible = false;
        AddPhotoLink.Visible = false;
    }
    protected void PublicPage_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_ProfilePublic.aspx");
    }
}