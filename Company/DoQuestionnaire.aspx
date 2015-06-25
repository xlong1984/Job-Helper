<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoQuestionnaire.aspx.cs" Inherits="Company_DQ1" %>
<%@ Register TagPrefix = "sstchur" Namespace = "sstchur.web.survey" Assembly = "sstchur.web.survey" %>


<html>
  <head>
    <script runat = "server">
      public void Page_Load(object server, EventArgs e)
      {
        
          pnlSurvey.Visible = true;
          pnlPreviouslyCompleted.Visible = false;
        
      }
    </script>
    
    <style type = "text/css">
      body, table, td
      {
        font-family: arial;
        font-size: 12px;
        color: #336699;
      }
        .auto-style1 {
            width: 498px;
        }
    </style>
  </head>
  
  <body bgcolor = "#ffffff">
    
    <table border = 0 cellpadding = 0 cellspacing = 0 width = 100% height = 100%>
      <tr valign = "top" align = "center">
        <td width = 100% height = 100%>
  
          <table border = 0 cellpadding = 10 cellspacing = 0 width = 500 style = "border: solid 1px #000000;">
            <tr valign = "top" align = "left">
              <td class="auto-style1" dir="ltr">
                <br/>
                
          
                <asp:Panel id = "pnlSurvey" Visible = "true" runat = "server">
                  <form runat = "server">
                    <sstchur:WebSurvey id = "ws"
                                       SurveyFile = "~/Company/Question.xml"
                                       AnswersFile = "~/Company/answers.xml"
                                       runat = "server"/>
                       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Applicant/QAnswers.aspx">Click here to see and save your answers.</asp:HyperLink>
                  </form>                    
                </asp:Panel>
                
                <asp:Panel id = "pnlPreviouslyCompleted" Visible = "false" runat = "server">
                  Thank you for taking our survey.
                </asp:Panel>
              </td>
            </tr>
          </table>
            
        </td>
      </tr>
    </table>
  </body>
</html>
