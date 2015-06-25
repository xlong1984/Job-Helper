using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_Company_Profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] != null)
        {
            Label_Welcome.Text = "Welcome "+Session["New"].ToString()+"!";
        }
        else
        {
            Response.Redirect("EmployerLogin.aspx");
        }
    }
}