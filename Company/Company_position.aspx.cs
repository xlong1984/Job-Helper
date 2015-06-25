using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Company_Company_position : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] == null)
        {
            Response.Redirect("EmployerLogin.aspx");
        }
        else
        {
            submit.Focus();
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (Textbox_job_position.Text != "")
        {            
            submit.Focus();
        }
        if (Textbox_job_position.Text != "" && Textbox_job_id.Text != "" && Textbox_person_name.Text != "" && Textbox_person_email.Text != "" && Textbox_job_description.Text!="")
        {
            SqlDataSource1.Insert();
            Textbox_job_position.Text = "";
            Textbox_job_id.Text = "";
            Textbox_person_name.Text = "";
            Textbox_person_email.Text = "";
            Textbox_job_description.Text = "";
            if (CheckBox_Questionnaire.Checked == true)
            {
                Response.Redirect("Company_questionnaire.aspx");
            }
            else
            {
                Response.Redirect("Company_edit_positions.aspx");
            }
           
        }
    }
}