using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            //ScriptManager.RegisterStartupScript(Page, GetType(), "", "warning();", true);
            Response.Redirect("~/Applicant/login.aspx");
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
            conn.Open();//open database;
            String delete = "Delete from [Search]";
            SqlCommand comm = new SqlCommand(delete, conn);
            comm.ExecuteScalar();
            conn.Close();
        }
    }
    
    protected void SearchBtn_Click1(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
            conn.Open();//open database;
            String delete = "Delete from [Search]";
            SqlCommand comm = new SqlCommand(delete, conn);
            comm.ExecuteScalar();
            conn.Close();
            
            string Orgnization;
            string Position;
            string PositionID;
            string Name;
            string EmailAddress;
            string Description;
            string word = SearchBox.Text.ToString();
            string compare;
            int b;
            int n = word.Length;
            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn1.Open();
            String number = "Select count(*) from [Posi]";
            SqlCommand com10_1 = new SqlCommand(number, conn1);
            b = Convert.ToInt32(com10_1.ExecuteScalar());
            conn1.Close();
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            if (dv == null)
            {
                ;
            }
            else
            {
                try
                {
                    for (int c = 0; c <= (b-1); c++)
                    {
                        DataRow row = dv.Table.Rows[c];
                        string orgnization = Convert.ToString(row["Orgnization"]);
                        int i = orgnization.Length;
                        if (i < n)
                        {
                            Response.Redirect("Search_Result.aspx");
                        }
                        if (i == n)
                        {
                            if (orgnization == word)
                            {
                                Orgnization = Convert.ToString(row["Orgnization"]);
                                Position = Convert.ToString(row["Position"]);
                                PositionID = Convert.ToString(row["PositionID"]);
                                Name = Convert.ToString(row["Name"]);
                                EmailAddress = Convert.ToString(row["EmailAddress"]);
                                Description = Convert.ToString(row["Description"]);


                                conn.Open();//open database;
                                String insertQuery = "insert into [Search] (Orgnization,Position,PositionID,Name,EmailAddress,Description) values(@Orgnization,@Position,@PositionID,@Name,@EmailAddress,@Description)";
                                SqlCommand com1_4 = new SqlCommand(insertQuery, conn);
                                com1_4.Parameters.AddWithValue("@Orgnization", Orgnization);
                                com1_4.Parameters.AddWithValue("@Position", Position);
                                com1_4.Parameters.AddWithValue("@PositionID", PositionID);
                                com1_4.Parameters.AddWithValue("@Name", Name);
                                com1_4.Parameters.AddWithValue("@EmailAddress", EmailAddress);
                                com1_4.Parameters.AddWithValue("@Description", Description);


                                com1_4.ExecuteNonQuery();                                


                                conn.Close();//close database;
                            }
                        }
                        if (i > n)
                        {
                            for (int m = 0; m <= (i - n); m++)
                            {
                                compare = orgnization.Substring(m, n);
                                if (compare == word)
                                {
                                    Orgnization = Convert.ToString(row["Orgnization"]);
                                    Position = Convert.ToString(row["Position"]);
                                    PositionID = Convert.ToString(row["PositionID"]);
                                    Name = Convert.ToString(row["Name"]);
                                    EmailAddress = Convert.ToString(row["EmailAddress"]);
                                    Description = Convert.ToString(row["Description"]);


                                    conn.Open();//open database;
                                    String insertQuery = "insert into [Search] (Orgnization,Position,PositionID,Name,EmailAddress,Description) values(@Orgnization,@Position,@PositionID,@Name,@EmailAddress,@Description)";
                                    SqlCommand com1_4 = new SqlCommand(insertQuery, conn);
                                    com1_4.Parameters.AddWithValue("@Orgnization", Orgnization);
                                    com1_4.Parameters.AddWithValue("@Position", Position);
                                    com1_4.Parameters.AddWithValue("@PositionID", PositionID);
                                    com1_4.Parameters.AddWithValue("@Name", Name);
                                    com1_4.Parameters.AddWithValue("@EmailAddress", EmailAddress);
                                    com1_4.Parameters.AddWithValue("@Description", Description);


                                    com1_4.ExecuteNonQuery();
                                    
                                    
                                    
                                    conn.Close();
                                }

                            }

                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex.ToString());
                }
            }
     
               
            
            if (dv == null)
            {
                ;
            }
            else
            {
                try
                {
                    for (int c = 0; c <= (b-1); c++)
                    {
                        DataRow row = dv.Table.Rows[c];
                        string position = Convert.ToString(row["Position"]);
                        int i = position.Length;
                        if (i < n)
                        {
                            Response.Redirect("Search_Result.aspx");
                        }
                        if (i == n)
                        {
                            if (position == word)
                            {
                                Orgnization = Convert.ToString(row["Orgnization"]);
                                Position = Convert.ToString(row["Position"]);
                                PositionID = Convert.ToString(row["PositionID"]);
                                Name = Convert.ToString(row["Name"]);
                                EmailAddress = Convert.ToString(row["EmailAddress"]);
                                Description = Convert.ToString(row["Description"]);


                                conn.Open();//open database;
                                String insertQuery = "insert into [Search] (Orgnization,Position,PositionID,Name,EmailAddress,Description) values(@Orgnization,@Position,@PositionID,@Name,@EmailAddress,@Description)";
                                SqlCommand com1_4 = new SqlCommand(insertQuery, conn);
                                com1_4.Parameters.AddWithValue("@Orgnization", Orgnization);
                                com1_4.Parameters.AddWithValue("@Position", Position);
                                com1_4.Parameters.AddWithValue("@PositionID", PositionID);
                                com1_4.Parameters.AddWithValue("@Name", Name);
                                com1_4.Parameters.AddWithValue("@EmailAddress", EmailAddress);
                                com1_4.Parameters.AddWithValue("@Description", Description);


                                com1_4.ExecuteNonQuery();
                                


                                conn.Close();//close database;
                            }
                        }
                        if (i > n)
                        {
                            for (int m = 0; m <= (i - n); m++)
                            {
                                compare = position.Substring(m, n);
                                if (compare == word)
                                {
                                    Orgnization = Convert.ToString(row["Orgnization"]);
                                    Position = Convert.ToString(row["Position"]);
                                    PositionID = Convert.ToString(row["PositionID"]);
                                    Name = Convert.ToString(row["Name"]);
                                    EmailAddress = Convert.ToString(row["EmailAddress"]);
                                    Description = Convert.ToString(row["Description"]);


                                    conn.Open();//open database;
                                    String insertQuery = "insert into [Search] (Orgnization,Position,PositionID,Name,EmailAddress,Description) values(@Orgnization,@Position,@PositionID,@Name,@EmailAddress,@Description)";
                                    SqlCommand com1_4 = new SqlCommand(insertQuery, conn);
                                    com1_4.Parameters.AddWithValue("@Orgnization", Orgnization);
                                    com1_4.Parameters.AddWithValue("@Position", Position);
                                    com1_4.Parameters.AddWithValue("@PositionID", PositionID);
                                    com1_4.Parameters.AddWithValue("@Name", Name);
                                    com1_4.Parameters.AddWithValue("@EmailAddress", EmailAddress);
                                    com1_4.Parameters.AddWithValue("@Description", Description);


                                    com1_4.ExecuteNonQuery();
                                    


                                    conn.Close();
                                }

                            }

                        }
                    }                    
                }
                catch (Exception ex)
                {
                    Response.Write("Error" + ex.ToString());
                }
            }
            Response.Redirect("Search_Result.aspx");
        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }
}