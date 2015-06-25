<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Account.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="author" content="Job Helper" />
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>Job Helper</title>

    <link rel="stylesheet" href="/styles/styles.css" />
    <link rel="stylesheet" href="/styles/bootstrap.css" />
</head> 
    

<body>
    <form id="form1" runat="server">
   <header id="header" class="row">
       <div class="col-md-12">
           <h1 id="webname">
               Job Helper
           </h1>
           <div class="btn-group btn-group-justified">
               <div class="btn-group">
                   <button type="button" class="btn btn-default">Home</button>
               </div>
               <div class="btn-group">
                   <button type="button" class="btn btn-default ">Profile</button>
               </div>
                <div class="btn-group">
                   <button type="button" class="btn btn-default ">Jobs</button>
               </div>
                <div class="btn-group">
                   <button type="button" class="btn btn-default ">Questionnaires</button>
               </div>
           </div>
         </div>
       </header> 
       <div id="container" class="row">
           <div class="col-md-8 col-md-offset-2">
               <div class="col-md-8">
                   <h2 class="text-center">Applicant Submitions
               </h2>
               <table class="table table-striped">
                   <tr>
                       <td>Name</td>
                       <td>Position</td>
                       <td>Job ID</td>
                       <td>Submitted Date</td>
                   </tr>
                   <tr>
                       <td>
                           <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Applicant_Name" DataValueField="Applicant_Name"></asp:ListBox>
                           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Applicant_Info]"></asp:SqlDataSource>
                       </td>
                   </tr>
                   <tr>
                       <td>

                           &nbsp;</td>
                   </tr>
               </table>
                   </div>
               <div class="col-md-4 text-center">
                   <ul>
                       <li>
                           <h3 class="text-center">
                              <a href="#profile">Edit Profile</a>
                           </h3>
                       </li>
                       <li>
                           <h3 class="text-center">
                               <a href="#jobs">Manage Job Openings</a>
                           </h3>
                       </li>
                       <li>

                       </li>
                   </ul>
                   
               </div>
           </div>
       </div>
    </form>
</body>
</html>
