<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Home.aspx.cs" Inherits="Company_Applications"MasterPageFile="~/MasterPage_Company.master" %>


<asp:Content ID="Content_Company_Home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
        .login{
            margin-top:60px;
            margin-bottom:40px;
            color:black;
        }
        .center_before {
            width: 100%;
            margin-right: 0px;
            margin-left: -15px;
            display: table;
        }

    </style>
    <div class="center_before">
          
           <div class="center_container">
                  
              
        <asp:GridView ID="GridView1" CssClass="login"  AllowSorting="True"  runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                   <Columns>
                       <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                       <asp:BoundField DataField="Applicant_Name" HeaderText="Applicant_Name" SortExpression="Applicant_Name" />
                       <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                       <asp:BoundField DataField="Job_ID" HeaderText="Job_ID" SortExpression="Job_ID" />
                       <asp:BoundField DataField="Questionnaire" HeaderText="Questionnaire" SortExpression="Questionnaire" />

                        
                   </Columns>
               </asp:GridView>
                
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>
                
           </div>
   
   </div>
</asp:Content>