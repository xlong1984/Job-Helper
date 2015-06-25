using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            
            //ScriptManager.RegisterStartupScript(Page, GetType(), "", "warning();", true);
            Response.Redirect("~/Applicant/login.aspx");
        }
        SearchBtn.Focus();
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

   protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Add")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];
            ListItem item1 = new ListItem();
            ListItem item2 = new ListItem();
            item1.Text = Server.HtmlDecode(row.Cells[0].Text);
            item2.Text = Server.HtmlDecode(row.Cells[1].Text);
            string company = item1.Text.ToString();
            string position = item2.Text.ToString();
            string Email = Session["Applicant"].ToString();
            string fullname = Session["Username"].ToString();
            Session["Position"] = position;

            int n;
            int m;
            int count = 0;
            SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn2.Open();//open database;
            String number = "Select count(*) from [Applicant]";
            SqlCommand comm = new SqlCommand(number, conn2);
            n = Convert.ToInt32(comm.ExecuteScalar());

            DataView dv = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            if (dv == null)
            {
                ;
            }
            else
            {
                for (m = 0; m <= (n - 1); m++)
                {
                    DataRow row1 = dv.Table.Rows[m];
                    string comparecompany = Convert.ToString(row1["Orgnization"]);
                    string comparename = Convert.ToString(row1["Fullname"]);
                    string compareposition = Convert.ToString(row1["Position"]);
                    if (comparecompany == company && comparename == fullname && compareposition == position)
                    {

                    }
                    else
                    {
                        count++;
                    }
                    

                }
                if (count == n)
                {
                    SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                    conn1.Open();
                    String insertQuery = "insert into [Applicant] (Orgnization,Email,Position,Fullname) values(@Orgnization,@Email,@Position,@fullname)";
                    SqlCommand com = new SqlCommand(insertQuery, conn1);
                    com.Parameters.AddWithValue("@Orgnization", company);
                    com.Parameters.AddWithValue("@Email", Email);
                    com.Parameters.AddWithValue("@Position", position);
                    com.Parameters.AddWithValue("@fullname", fullname);
                    com.ExecuteNonQuery();
                    conn1.Close();

                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
                    conn.Open();
                    String insertQuery1 = "insert into [Applications] (Orgnization,Position,Applicant) values(@Orgnization,@Position,@fullname)";
                    SqlCommand com1 = new SqlCommand(insertQuery1, conn);
                    com1.Parameters.AddWithValue("@Orgnization", company);
                    com1.Parameters.AddWithValue("@Position", position);
                    com1.Parameters.AddWithValue("@fullname", fullname);
                    com1.ExecuteNonQuery();
                    conn.Close();

                    Response.Redirect("~/Company/DoQuestionnaire.aspx");
                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, GetType(), "", "warning();", true);
                }
            }

            


            /*String checkuser = "Select count(*) from [Applicant] where Fullname='" + Email + "'";
            SqlCommand comm1 = new SqlCommand(checkuser, conn2);
            int temp = Convert.ToInt32(comm1.ExecuteScalar().ToString());
            String checkposition = "Select count(*) from [Applicant] where Position='" + position + "'";
            SqlCommand comm1 = new SqlCommand(checkposition, conn2);
            int temp1 = Convert.ToInt32(comm1.ExecuteScalar().ToString());
            String checkcompany = "Select count(*) from [Applicant] where Orgnization='" + company + "'";
            SqlCommand comm2 = new SqlCommand(checkcompany, conn2);
            int temp2 = Convert.ToInt32(comm2.ExecuteScalar().ToString());
            conn2.Close();
            if (temp == 1)
            {
                Response.Write("User Already Applied This Job!");
            }
            else
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn1.Open();
                String insertQuery = "insert into [Applicant] (Orgnization,Email,Position,Fullname) values(@Orgnization,@Email,@Position,@fullname)";
                SqlCommand com = new SqlCommand(insertQuery, conn1);
                com.Parameters.AddWithValue("@Orgnization", company);
                com.Parameters.AddWithValue("@Email", Email);
                com.Parameters.AddWithValue("@Position", position);
                com.Parameters.AddWithValue("@fullname", fullname);
                com.ExecuteNonQuery();
                conn1.Close();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ApplicantConnectionString"].ConnectionString);
                conn.Open();
                String insertQuery1 = "insert into [Applications] (Orgnization,Position,Applicant) values(@Orgnization,@Position,@fullname)";
                SqlCommand com1 = new SqlCommand(insertQuery1, conn);
                com1.Parameters.AddWithValue("@Orgnization", company);
                com1.Parameters.AddWithValue("@Position", position);
                com1.Parameters.AddWithValue("@fullname", fullname);
                com1.ExecuteNonQuery();
                conn.Close();

                Response.Redirect("~/Company/DoQuestionnaire.aspx");
            }*/
        }
    }
}