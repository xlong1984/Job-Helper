using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Company_EmployerLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Button1.Focus();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox_LoginUN.Text != "")
        {
            Response.Write("<script>alert('The user name is required')</script>");
            Button1.Focus();//???
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
        conn.Open();//open database;
        String checkuser = "Select count(*) from [Company] where Username='" + TextBox_LoginUN.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "Select Password from [Company] where  Username='" + TextBox_LoginUN.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            string password = passCom.ExecuteScalar().ToString().Replace(" ", "");
            string checkOrgnizationQuery = "Select Orgnization from [Company] where  Username='" + TextBox_LoginUN.Text + "'";
            SqlCommand OrgCom = new SqlCommand(checkOrgnizationQuery, conn);
            string Orgnization = OrgCom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextBox_LoginPW.Text)
            {
                Session["New"] = TextBox_LoginUN.Text;
                Session["Orgnization"] = Orgnization;
                Response.Write("Password is correct");
                Response.Redirect("Company_Profile.aspx");
            }
            else
            {
                Response.Write("Password is incorrect");
            }
        }
        else
        {
            Response.Write("Username is incorrect");
        }
    }
}