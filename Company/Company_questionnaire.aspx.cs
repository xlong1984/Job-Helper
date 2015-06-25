using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.XPath;
using System.Xml.Linq;


public partial class Company_Company_questionnaire : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["new"] == null)
        {
            Response.Redirect("EmployerLogin.aspx");
        }
        else
        {
            submit.Focus();
        }
        
    }
    protected void submit_Click(object sender, EventArgs e)
    {      
        XDocument xmldoc = XDocument.Load(Server.MapPath("Question.xml"));
        //Page1 Question1 
        XElement xElementQ1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id ='P1']/Statement");
        xElementQ1.Value = Textbox_q1.Text;
        //Page1 Question1 Answer1
        XElement xElementQ1A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id='P1']/Responses/Response[@id='A1']");
        xElementQ1A1.Value = Textboxq1_a1.Text;
        //Page1 Question1 Answer2
        XElement xElementQ1A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id='P1']/Responses/Response[@id='A2']");
        xElementQ1A2.Value = Textboxq1_a2.Text;

        //Page1 Question2 
        XElement xElementQ2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id ='P2']/Statement");
        xElementQ2.Value = Textboxq2.Text;
        //Page1 Question2 Answer1
        XElement xElementQ2A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id='P2']/Responses/Response[@id='A1']");
        xElementQ2A1.Value = Textboxq2_a1.Text;
        //Page1 Question2 Answer2
        XElement xElementQ2A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id='P2']/Responses/Response[@id='A2']");
        xElementQ2A2.Value = Textboxq2_a2.Text;

        //Page1 Question2 
        XElement xElementQ3 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id ='P3']/Statement");
        xElementQ3.Value = Textboxq3.Text;
        //Page1 Question2 Answer1
        XElement xElementQ3A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id='P3']/Responses/Response[@id='A1']");
        xElementQ3A1.Value = Textboxq3_a1.Text;
        //Page1 Question2 Answer2
        XElement xElementQ3A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_PersonalInfo']/Question[@id='P3']/Responses/Response[@id='A2']");
        xElementQ3A2.Value = Textboxq3_a2.Text;


        //P2   Q4-6
        XElement xElementQ4 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id ='P4']/Statement");
        xElementQ4.Value = Textboxq4.Text;
        XElement xElementQ4A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id='P4']/Responses/Response[@id='A1']");
        xElementQ4A1.Value = Textboxq4_a1.Text;
        XElement xElementQ4A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id='P4']/Responses/Response[@id='A2']");
        xElementQ4A2.Value = Textboxq4_a2.Text;

        XElement xElementQ5 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id ='P5']/Statement");
        xElementQ5.Value = Textboxq5.Text;
        XElement xElementQ5A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id='P5']/Responses/Response[@id='A1']");
        xElementQ5A1.Value = Textboxq5_a1.Text;
        XElement xElementQ5A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id='P5']/Responses/Response[@id='A2']");
        xElementQ5A2.Value = Textboxq5_a2.Text;

        XElement xElementQ6 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Personality']/Question[@id ='P6']/Statement");
        xElementQ6.Value = Textboxq6.Text;

        //P3   Q7-9
        XElement xElementQ7 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id ='P7']/Statement");
        xElementQ7.Value = Textboxq7.Text;
        XElement xElementQ7A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id='P7']/Responses/Response[@id='A1']");
        xElementQ7A1.Value = Textboxq7_a1.Text;
        XElement xElementQ7A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id='P7']/Responses/Response[@id='A2']");
        xElementQ7A2.Value = Textboxq7_a2.Text;

        XElement xElementQ8 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id ='P8']/Statement");
        xElementQ8.Value = Textboxq8.Text;
        XElement xElementQ8A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id='P8']/Responses/Response[@id='A1']");
        xElementQ8A1.Value = Textboxq8_a1.Text;
        XElement xElementQ8A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id='P8']/Responses/Response[@id='A2']");
        xElementQ8A2.Value = Textboxq8_a2.Text;

        XElement xElementQ9 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id ='P9']/Statement");
        xElementQ9.Value = Textboxq9.Text;
        XElement xElementQ9A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id='P9']/Responses/Response[@id='A1']");
        xElementQ9A1.Value = Textboxq9a1.Text;
        XElement xElementQ9A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills1']/Question[@id='P9']/Responses/Response[@id='A2']");
        xElementQ9A2.Value = Textboxq9a2.Text;

        //P4    Q10-12
        XElement xElementQ10 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id ='P10']/Statement");
        xElementQ10.Value = TextboxQ10.Text;
        XElement xElementQ10A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P10']/Responses/Response[@id='A1']");
        xElementQ10A1.Value = TextboxQ10A1.Text;
        XElement xElementQ10A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P10']/Responses/Response[@id='A2']");
        xElementQ10A2.Value = TextboxQ10A2.Text;
        XElement xElementQ10A3 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P10']/Responses/Response[@id='A3']");
        xElementQ10A3.Value = TextboxQ10A3.Text;

        XElement xElementQ11 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id ='P11']/Statement");
        xElementQ11.Value = Textboxq11.Text;
        XElement xElementQ11A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P11']/Responses/Response[@id='A1']");
        xElementQ11A1.Value = TextboxQ11A1.Text;
        XElement xElementQ11A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P11']/Responses/Response[@id='A2']");
        xElementQ11A2.Value = TextboxQ11A2.Text;
        XElement xElementQ11A3 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P11']/Responses/Response[@id='A3']");
        xElementQ11A3.Value = TextboxQ11A3.Text;

        XElement xElementQ12 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id ='P12']/Statement");
        xElementQ12.Value = TextboxQ12.Text;
        XElement xElementQ12A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P12']/Responses/Response[@id='A1']");
        xElementQ12A1.Value = TextboxQ12A1.Text;
        XElement xElementQ12A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P12']/Responses/Response[@id='A2']");
        xElementQ12A2.Value = TextboxQ12A2.Text;
        XElement xElementQ12A3 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P12']/Responses/Response[@id='A3']");
        xElementQ12A3.Value = TextboxQ12A3.Text;
        XElement xElementQ12A4 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P12']/Responses/Response[@id='A4']");
        xElementQ12A4.Value = TextboxQ12A4.Text;
        XElement xElementQ12A5 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Techskills2']/Question[@id='P12']/Responses/Response[@id='A5']");
        xElementQ12A5.Value = TextboxQ12A5.Text;

        //p5    q13-15
        XElement xElementQ13 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id ='P13']/Statement");
        xElementQ13.Value = TextboxQ13.Text;
        XElement xElementQ13A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P13']/Responses/Response[@id='A1']");
        xElementQ13A1.Value = TextboxQ13A1.Text;
        XElement xElementQ13A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P13']/Responses/Response[@id='A2']");
        xElementQ13A2.Value = TextboxQ13A2.Text;
        XElement xElementQ13A3 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P13']/Responses/Response[@id='A3']");
        xElementQ13A3.Value = TextboxQ13A3.Text;
        XElement xElementQ13A4 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P13']/Responses/Response[@id='A4']");
        xElementQ13A4.Value = TextboxQ13A4.Text;

        XElement xElementQ14 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id ='P14']/Statement");
        xElementQ14.Value = TextboxQ14.Text;
        XElement xElementQ14A1 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P14']/Responses/Response[@id='A1']");
        xElementQ14A1.Value = TextboxQ14A1.Text;
        XElement xElementQ14A2 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P14']/Responses/Response[@id='A2']");
        xElementQ14A2.Value = TextboxQ14A2.Text;
        XElement xElementQ14A3 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P14']/Responses/Response[@id='A3']");
        xElementQ14A3.Value = TextboxQ14A3.Text;
        XElement xElementQ14A4 = xmldoc.XPathSelectElement("WebSurvey/Group[@id = 'grp_Workkills1']/Question[@id='P14']/Responses/Response[@id='A4']");
        xElementQ14A4.Value = TextboxQ14A4.Text;

        xmldoc.Save(Server.MapPath("Question.xml"));
        //Response.Redirect("Question.xml"); // load file in browser
        Response.Redirect("Websurvey.aspx");

    }
}
