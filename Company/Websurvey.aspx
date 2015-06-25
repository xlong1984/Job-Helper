<%@ Register TagPrefix = "sstchur" Namespace = "sstchur.web.survey" Assembly = "sstchur.web.survey" %>
<%@ Page Language = "C#" %>


      <html>
          <body>
    
        <script runat="server">
            public void Page_Load(object server, EventArgs e)
            {

        pnlSurvey.Visible = true;
            pnlPreviouslyCompleted.Visible = false;

            }
        </script>
        <link rel="stylesheet" href="/styles/styles.css" />
        <link rel="stylesheet" href="/styles/bootstrap.css" />
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
          <div class="navbar-wrapper">
        <div class="navbar navbar-inverse navbar-static-top " role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle nav-color" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="/homepage.aspx"><span><img class="job_icon" src="/Images/download 2.png" /></span>Job Helper</a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="/Company/Company_Home.aspx">Home</a></li>
                <li><a href="/Company/Company_Profile.aspx">Profile</a></li>
                <li><a href="/Company/Company_Applications.aspx">Application</a></li>
                <li class="dropdown">
                  <a href="/Company/Company_position.aspx" class="dropdown-toggle" data-toggle="dropdown">Positions <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="/Company/Company_position.aspx">Positions</a></li>
                    <li><a href="/Company/Company_questionnaire.aspx">Questionnaires</a></li>
                  </ul>
                </li>
                <li><a href="#contact">Contact</a></li>
              </ul>
            </div>
          </div>
        </div>
     </div>



              <div class="container">
                <asp:Panel id = "pnlSurvey" Visible = "false" runat = "server" style="text-align:left">
                  <form runat = "server">
                    <sstchur:WebSurvey id = "ws"
                                       SurveyFile = "Question.xml"
                                       AnswersFile = "answers.xml"
                                       runat = "server"/>
                  </form>                    
                </asp:Panel>
                
                <asp:Panel id = "pnlPreviouslyCompleted" Visible = "false" runat = "server">
                  Thank you for taking our survey.
                </asp:Panel>
        </div>

              
    <div id="moreInfo" class="row more-pad" style="background-color: #222">

      <!-- Three columns of text below the carousel -->
      <div class="col-lg-6 col-lg-offset-3"  style="color: #999; background-color: #222;">
        <div class="pad">
        <div class="col-lg-4">
         <a href="http://www.twitter.com"><img src="/Images/twitter.png"  height="53px" /></a>
    
            <h2>Twitter</h2>
            <p>Connect with us on twitter.We post new positions about everyday.</p>
          
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
         <a href="http://www.facebook.com"><img src="/Images/facebook.png" height="53px" /></a>     
             <h2>Facebook</h2>
            <p>Connect with us on facebook.We post new positions about everyday.</p>
         
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <a href="https://mail.google.com/"><img src="/Images/mail.png"  height="53px" /></a>
             <h2>Email</h2>
            <p>Contact with us through email.Tell us what is your suggestions and thoughts.</p>
          
        </div><!-- /.col-lg-4 -->
         
         
        <script>
            $('#coll').click(function () {
                $(this).addClass("slideDown");
            });
      </script>  
        
        <script src="/scripts/bootstrap.js"></script>
         </div>
    
          </div>
        
        </div>
      <footer class="row" style="background-color: #000000">
          <div class="col-lg-6 col-lg-offset-3" id="foot">
             @lisence since 2014,designed for Boston University EC512 Project
          </div>
         </footer> 
   
              </body>
          </html>
     
