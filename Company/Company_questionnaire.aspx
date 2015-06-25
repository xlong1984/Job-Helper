<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_questionnaire.aspx.cs" Inherits="Company_Company_questionnaire"  MasterPageFile="../MasterPage_Company.master" %>

<asp:Content ID="Content_Company_Home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
       #questionnaire{
           color:black;
       }
        .form-control {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            text-align: left;
            width: 300px;
        }
         .container {
            width: 100%;
            margin-right: 0px;
            margin-left: -15px;
            display: table;
        }
        .center_container {
             margin-left: 25%;
             width: 700px;
             display: block;
             padding-top: 80px;
             margin-bottom:50px;
         }
        .but {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 30px;
            margin-left: 60px;
            margin-top: 20px;
            font-size: 14px;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            border-radius: 4px;
        }
       
        .but_red {
            color:white;
            background-color:#d43f3a;
            border-color:white;
        }
         .but_red:hover {
             background-color: grey;
         }
         .blue_h:hover {
             color: blue;
         }
    </style>
    <div id="questionnaire" class="container">
        <div class="center_container">
            <h2>Create a New Questionniare&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="blue_h" href="DoQuestionnaire.aspx">View Existed</a></h2>
          
             <label>1. Your Question</label>
            <asp:TextBox ID="Textbox_q1" Cssclass="form-control" runat="server"></asp:TextBox>
              <br />
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq1_a1" Cssclass="form-control" runat="server"></asp:TextBox>
              
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq1_a2" Cssclass="form-control" runat="server"></asp:TextBox>
                
            <br />
            <label>2. Your Question</label>
            <asp:TextBox ID="Textboxq2" Cssclass="form-control" runat="server"></asp:TextBox>
            <br />
            
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq2_a1" Cssclass="form-control" runat="server"></asp:TextBox>
             
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq2_a2" Cssclass="form-control" runat="server"></asp:TextBox>
                
            <br />
            <label>3. Your Question</label>
            <asp:TextBox ID="Textboxq3" Cssclass="form-control" runat="server"></asp:TextBox>
             <br />
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq3_a1" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq3_a2" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <br />

            <label>4. Your Question</label>
            <asp:TextBox ID="Textboxq4" Cssclass="form-control" runat="server"></asp:TextBox>
             <br />
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq4_a1" Cssclass="form-control" runat="server"></asp:TextBox>
              
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq4_a2" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <br />

             <label>5. Your Question</label>
            <asp:TextBox ID="Textboxq5" Cssclass="form-control" runat="server"></asp:TextBox>
          <br />
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq5_a1" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq5_a2" Cssclass="form-control" runat="server"></asp:TextBox>
          
            <br />
      

        <label>6. Your Question</label>
            <asp:TextBox ID="Textboxq6" Cssclass="form-control" runat="server"></asp:TextBox>
       
            <br />
             <label>Option 1</label>
             <asp:TextBox ID="Textboxq6_a1" Cssclass="form-control" runat="server"></asp:TextBox>
              
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq6_a2" Cssclass="form-control" runat="server"></asp:TextBox>
                <br />
          <label>7. Your Question</label>
            <asp:TextBox ID="Textboxq7" Cssclass="form-control" runat="server"></asp:TextBox>
      
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq7_a1" Cssclass="form-control" runat="server"></asp:TextBox>
              
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq7_a2" Cssclass="form-control" runat="server"></asp:TextBox>
                
            <br />

          <label>8. Your Question</label>
            <asp:TextBox ID="Textboxq8" Cssclass="form-control" runat="server"></asp:TextBox>
       
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq8_a1" Cssclass="form-control" runat="server"></asp:TextBox>
                 
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq8_a2" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <br />

            <label>9. Your Question</label>
            <asp:TextBox ID="Textboxq9" Cssclass="form-control" runat="server"></asp:TextBox>
     
              <label>Option 1</label>
             <asp:TextBox ID="Textboxq9a1" Cssclass="form-control" runat="server"></asp:TextBox>
             
            <label>Option 2</label>
            <asp:TextBox ID="Textboxq9a2" Cssclass="form-control" runat="server"></asp:TextBox>
                
            <br />

            <label>10. Your Question</label>
            <asp:TextBox ID="TextboxQ10" Cssclass="form-control" runat="server"></asp:TextBox>
     
              <label>Option 1</label>
             <asp:TextBox ID="TextboxQ10A1" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <label>Option 2</label>
            <asp:TextBox ID="TextboxQ10A2" Cssclass="form-control" runat="server"></asp:TextBox>
              
              <label>Option 3</label>
             <asp:TextBox ID="TextboxQ10A3" Cssclass="form-control" runat="server"></asp:TextBox>
                 
            <br />

                        <label>11. Your Question</label>
            <asp:TextBox ID="Textboxq11" Cssclass="form-control" runat="server"></asp:TextBox>
         
              <label>Option 1</label>
             <asp:TextBox ID="TextboxQ11A1" Cssclass="form-control" runat="server"></asp:TextBox>
              
            <label>Option 2</label>
            <asp:TextBox ID="TextboxQ11A2" Cssclass="form-control" runat="server"></asp:TextBox>
                
              <label>Option 3</label>
             <asp:TextBox ID="TextboxQ11A3" Cssclass="form-control" runat="server"></asp:TextBox>
                
            <br />

             <label>12. Your Question</label>
            <asp:TextBox ID="TextboxQ12" Cssclass="form-control" runat="server"></asp:TextBox>
       
              <label>Option 1</label>
             <asp:TextBox ID="TextboxQ12A1" Cssclass="form-control" runat="server"></asp:TextBox>
              
            <label>Option 2</label>
            <asp:TextBox ID="TextboxQ12A2" Cssclass="form-control" runat="server"></asp:TextBox>
                 
              <label>Option 3</label>
             <asp:TextBox ID="TextboxQ12A3" Cssclass="form-control" runat="server"></asp:TextBox>
                
              <label>Option 4</label>
             <asp:TextBox ID="TextboxQ12A4" Cssclass="form-control" runat="server"></asp:TextBox>
               
              <label>Option 5</label>
             <asp:TextBox ID="TextboxQ12A5" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <br />

            <label>13. Your Question</label>
            <asp:TextBox ID="TextboxQ13" Cssclass="form-control" runat="server"></asp:TextBox>
         
              <label>Option 1</label>
             <asp:TextBox ID="TextboxQ13A1" Cssclass="form-control" runat="server"></asp:TextBox>
               
            <label>Option 2</label>
            <asp:TextBox ID="TextboxQ13A2" Cssclass="form-control" runat="server"></asp:TextBox>
                
             
              <label>Option 3</label>
             <asp:TextBox ID="TextboxQ13A3" Cssclass="form-control" runat="server"></asp:TextBox>
                  
              <label>Option 4</label>
             <asp:TextBox ID="TextboxQ13A4" Cssclass="form-control" runat="server"></asp:TextBox>
             
            <br />

                        <label>14. Your Question</label>
            <asp:TextBox ID="TextboxQ14" Cssclass="form-control" runat="server"></asp:TextBox>
        
              <label>Option 1</label>
             <asp:TextBox ID="TextboxQ14A1" Cssclass="form-control" runat="server"></asp:TextBox>
             
            <label>Option 2</label>
            <asp:TextBox ID="TextboxQ14A2" Cssclass="form-control" runat="server"></asp:TextBox>
                
              <label>Option 3</label>
             <asp:TextBox ID="TextboxQ14A3" Cssclass="form-control" runat="server"></asp:TextBox>
             
              <label>Option 4</label>
             <asp:TextBox ID="TextboxQ14A4" Cssclass="form-control" runat="server"></asp:TextBox>
                 
            <br />

         <label>9. Your Question</label>
            <asp:TextBox ID="q9" Cssclass="form-control" rows="10" runat="server" TextMode="MultiLine"> </asp:TextBox>
        <br />

     <label>10. Your Question</label>
            <asp:TextBox ID="q10" Cssclass="form-control" rows="10" runat="server" TextMode="MultiLine"> </asp:TextBox>
       <br />
     <asp:Button ID="submit" CssClass="but but_red" runat="server" Text="SUBMIT" OnClick="submit_Click" />
            <br />
    
    </div>
        </div>
</asp:Content>
