using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ResetBtn.CausesValidation = false;
    }


    protected void SubmitBtn_Click(object sender, EventArgs e)
    {
        try
        {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
                conn.Open();//open database;
                String checkuser = "Select count(*) from [Profiles] where Email='" + UserNameTB.Text + "'";
                SqlCommand comm = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User Already Exists!");
                }
           
                else
                {
                    String insertQuery = "insert into [Profiles] ([FullName],[Email],[Password],[Phone],[Street],[City],[State],[ZipCode],[Country]) values(@Uname,@email,@password,@phone,@street,@city,@state,@zipcode,@country)";
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    com.Parameters.AddWithValue("@Uname", UserNameTB.Text);
                    com.Parameters.AddWithValue("@email", EmailTB.Text);
                    com.Parameters.AddWithValue("@password", PassTB.Text);
                    com.Parameters.AddWithValue("@phone", PhoneTB.Text);
                    com.Parameters.AddWithValue("@street", StreetTB.Text);
                    com.Parameters.AddWithValue("@city", CityTB.Text);
                    com.Parameters.AddWithValue("@state", DropDownListSta.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@zipcode", ZipTB.Text);
                    com.Parameters.AddWithValue("@country", DropDownListCountry.SelectedItem.ToString());

                    com.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                    Response.Write("Registration is successful");
                }
                
                conn.Close();//close database;
               
        }
        catch(Exception ex)
        {
            Response.Write("Error"+ex.ToString());
        }
    
    }
    protected void ResetBtn_Click(object sender, EventArgs e)
    {
        UserNameTB.Text = "";
        PassTB.Text = "";
        RePassTB.Text = "";
        EmailTB.Text = "";
        PhoneTB.Text = "";
        StreetTB.Text = "";
        CityTB.Text = "";
        ZipTB.Text = "";
        DropDownListSta.Text = "Select State";
        DropDownListCountry.Text = "Select Country";
    }
    protected void UserNameTB_TextChanged(object sender, EventArgs e)
    {

    }
}