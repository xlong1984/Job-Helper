using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Company_CompanyChatroom_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int judge = 0;
        judge = Convert.ToInt32(Request["value"]);
        if (!IsPostBack)
        {
            if (judge == 1)
            {
                Response.Write("<script>alert('The user has logged in')</script>");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Application.Lock();
        int num;
        string name;
        string zs_name;
        string[] user;
        num = int.Parse(Application["userNum"].ToString());
        if (TextBox_Name.Text == "")
        {
            Response.Write("<script>alert('The user name is required')</script>");
            TextBox_Name.Focus();
        }
        else
        {
            name = TextBox_Name.Text.Trim();
            zs_name = Application["user"].ToString();
            user = zs_name.Split(',');
            for (int i = 0; i <= num - 1; i++)
            {
                if (name == user[i].Trim())
                {
                    int judge = 1;
                    Response.Redirect("login.aspx?value=" + judge);
                }
            }
            if (num == 0)
            {
                Application["user"] = name.ToString();
            }
            else
            {
                Application["user"] = Application["user"] + "," + name.ToString();
            }
            num += 1;
            Application["userNum"] = num;
            Session["userName"] = TextBox_Name.Text.Trim();
            Application.UnLock();
            Response.Redirect("~/Company/CompanyChatroom.aspx");
        }
    }
}