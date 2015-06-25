using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Applicant_Chatroom : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Application.Lock();
        string[] messages = Application["chats"].ToString().Split(',');
        for (int i = 0; i <= messages.Length - 1; i++)
        {
            TextBox_Content.Text += messages[i] + "\n";
        }
        int current = Convert.ToInt32(Application["current"]);
        ArrayList ItemList = new ArrayList();
        string zs_name;
        string[] user;
        int num = Convert.ToInt32(Application["userNum"]);
        zs_name = Application["user"].ToString();
        user = zs_name.Split(',');
        for (int i = (num - 1); i >= 0; i--)
        {
            if (user[i].ToString() != "")
            {
                ItemList.Add(user[i].ToString());
            }
        }
        ListBox1.DataSource = ItemList;
        ListBox1.DataBind();
        Application.UnLock();
    }

    protected void Button_Send_Click(object sender, EventArgs e)
    {
        TextBox_Content.Text = "";
        int current = Convert.ToInt32(Application["current"]);
        Application["chats"] = Application["chats"].ToString() + "," + Session["userName"].ToString() + " :" + TextBox_Message.Text.Trim() + "(" + DateTime.Now.ToString() + ")" + "\n";
        current += 1;
        Application["current"] = current;
        string chats = Application["chats"].ToString();
        string[] chat = chats.Split(',');
        for (int i = chat.Length - 1; i >= 0; i--)
        {
            if (current == 0)
            {
                TextBox_Content.Text = chat[i].ToString();
            }
            else
            {
                TextBox_Content.Text = chat[i].ToString() + "\n" + TextBox_Content.Text;
            }
        }
        Application.UnLock();
        TextBox_Message.Text = "";
        TextBox_Message.Focus();
    }
    protected void Button_Logout_Click(object sender, EventArgs e)
    {
        Application.Lock();
        string userName = Application["user"].ToString();
        Application["user"] = userName.Replace(Session["userName"].ToString(), "");
        Application.UnLock();
        Response.Write("<script>window.opener=null;window.close();</script>");
    }
}