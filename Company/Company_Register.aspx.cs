using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class aspx_Company_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Button1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox_CUN.Text!=null)
        {
            Button1.Focus();
        }
        SqlDataSource1.Insert();
        Response.Redirect("Company_Profile.aspx");
    }


}