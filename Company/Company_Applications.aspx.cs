using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_Company_Applications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] == null)
        {
            Response.Redirect("EmployerLogin.aspx");
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            ListItem item1 = new ListItem();
            ListItem item2 = new ListItem();
            item1.Text = Server.HtmlDecode(row.Cells[0].Text);
            item2.Text = Server.HtmlDecode(row.Cells[1].Text);
            string Email = item2.Text.ToString();
            string name = item1.Text.ToString();
            Session["Username"] = name;
            Session["Applicant_1"] = Email;

            Response.Redirect("~/Applicant/Applicant_ProfilePublic.aspx");
        }
        
    }
}