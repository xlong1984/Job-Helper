using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        Button_Login.Focus();
    }

    protected void Button_Login_Click(object sender, EventArgs e)
    {
        if (TextUserName.Text != "")
        {
            Button_Login.Focus();
        }
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
        conn.Open();//open database;
        String checkuser = "Select count(*) from [Profiles] where Email='" + TextUserName.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkPasswordQuery = "Select Password from [Profiles] where Email='" + TextUserName.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
            string password = passCom.ExecuteScalar().ToString().Replace(" ","");
            string checkUserName = "Select FullName from [Profiles] where Email='" + TextUserName.Text + "'";
            SqlCommand UCom = new SqlCommand(checkUserName, conn);
            string FullName = UCom.ExecuteScalar().ToString().Replace(" ", "");
            if (password == TextPassword.Text)
            {
                Session["Applicant"] = TextUserName.Text;
                Session["Username"] = FullName;
                Response.Write("Password is correct");
                Response.Redirect("Applicant_Profile.aspx");
            }
            else
            {
                InfoLabel.Text = "Password is incorrect!";
                InfoLabel.Visible = true;
                //Response.Write("Password is incorrect");
            }
        }
        else
        {
            InfoLabel.Text = "Username is incorrect!";
            InfoLabel.Visible = true;
            //Response.Write("Username is incorrect");
        }
    }
}