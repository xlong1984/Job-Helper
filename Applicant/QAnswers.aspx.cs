using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Linq;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Applicant"] == null)
        {
            Button_Submit.Visible = false;
        }
       var xmlDoc2 = new XmlDocument();
       //xmlDoc2.Load(@"E:\BU\2014spring\EC512\Project\Fullsite\FullSite1.0\Company\answers.xml");
       string location = Server.MapPath("~/Company/answers.xml");
       xmlDoc2.Load(@location);
       var nodes = xmlDoc2.SelectNodes("/Answers/AnswerSet[last()]/Answer");
       Label1.Text=nodes[0].InnerText;
       Label2.Text = nodes[1].InnerText;
       Label3.Text = nodes[2].InnerText;
       Label4.Text = nodes[3].InnerText;
       Label5.Text = nodes[4].InnerText;
       Label6.Text = nodes[5].InnerText;
       Label7.Text = nodes[6].InnerText;
       Label8.Text = nodes[7].InnerText;
       Label9.Text = nodes[8].InnerText;
       Label10.Text = nodes[9].InnerText;
       Label11.Text = nodes[10].InnerText;
       Label12.Text = nodes[11].InnerText;
       Label13.Text = nodes[12].InnerText;
       Label14.Text = nodes[13].InnerText;
       Label15.Text = nodes[14].InnerText;
       if (Session["Applicant"] != null)
       {
           SqlDataSource1.Insert();
           Response.Redirect("Applicant_Profile.aspx");
       }

    }
    protected void Button_Submit_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Insert();
        Response.Redirect("Applicant_Profile.aspx");
    }

}