using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_Company_edit_positions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (Session["new"] == null)
        {
            Response.Redirect("EmployerLogin.aspx");
        }
    }
    protected void LinkButton_iNSERT_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Orgnization"].DefaultValue =
            ((TextBox)GridView1.FooterRow.FindControl("txOrg")).Text;

        SqlDataSource1.InsertParameters["Position"].DefaultValue =
            ((DropDownList)GridView1.FooterRow.FindControl("DropDownList1")).SelectedValue;

        SqlDataSource1.InsertParameters["PositionID"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("txPoID")).Text;

        SqlDataSource1.InsertParameters["Name"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("txName")).Text;

        SqlDataSource1.InsertParameters["EmailAddress"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("txEmail")).Text;

        SqlDataSource1.InsertParameters["Description"].DefaultValue =
           ((TextBox)GridView1.FooterRow.FindControl("txDes")).Text;

        SqlDataSource1.Insert();
    }
}