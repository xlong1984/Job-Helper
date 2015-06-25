using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;

public partial class Applicant_SuggestionCompose : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Text = Session["Username"].ToString();
        if (Session["New"] == null)
        {
            Response.Redirect("~/Company/EmployerLogin.aspx");
        }
        MsgSendBtn.Focus();
    }
    protected void ComposeBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/SuggestionCompose.aspx");
    }
    protected void SentBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Company/SuggestionSent.aspx");
    }

    protected void MsgSendBtn_Click(object sender, EventArgs e)
    {
        if (Session["New"] == null)
        {
            Response.Redirect("~/Company/EmployerLogin.aspx");
        }
        else
        {
            string orgnization = Session["Orgnization"].ToString();
            string message = msgTB.Text.ToString();
            string applicant = (TextBox1.Text).ToString();
            //string position = Session["Position"].ToString();

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
            conn.Open();
            String Insert = "insert into [Suggestion] (Orgnization,Applicant,Message) values(@Orgnization,@Applicant,@Message)";
            SqlCommand com = new SqlCommand(Insert, conn);
            com.Parameters.AddWithValue("@Orgnization", orgnization);
            com.Parameters.AddWithValue("@Applicant", applicant);
            com.Parameters.AddWithValue("@Message", message);
            //com.Parameters.AddWithValue("@Position",position);
            com.ExecuteNonQuery().ToString();
            conn.Close();

            ScriptManager.RegisterStartupScript(Page, GetType(), "", "warning();", true);
            Response.Redirect("~/Applicant/Applicant_ProfilePublic.aspx");
            //Response.Write("Message has been sent");

        }
    }
    protected void EraseBtn_Click(object sender, EventArgs e)
    {
        msgTB.Text = null;

    }
}