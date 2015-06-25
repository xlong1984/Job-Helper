using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            DataView db = (DataView)QuestionnaireSql.Select(DataSourceSelectArguments.Empty);
            foreach (DataRowView dbv in db)
            {
                Label1.Text = dbv["Q1"].ToString();
                Label2.Text = dbv["Q2"].ToString();
                Label3.Text = dbv["Q3"].ToString();
                Label4.Text = dbv["Q4"].ToString();
                Label5.Text = dbv["Q5"].ToString();
                Label6.Text = dbv["Q6"].ToString();
                Label7.Text = dbv["Q7"].ToString();
                Label8.Text = dbv["Q8"].ToString();
                Label9.Text = dbv["Q9"].ToString();
                Label10.Text = dbv["Q10"].ToString();
                Label11.Text = dbv["Q11"].ToString();
                Label12.Text = dbv["Q12"].ToString();
                Label13.Text = dbv["Q13"].ToString();
                Label14.Text = dbv["Q14"].ToString();
                Label15.Text = dbv["Q15"].ToString();
            }
            //QuestionnaireSql.Insert();
        }
    }

    protected void BackBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Applicant/Applicant_ProfilePublic.aspx");
    }
}