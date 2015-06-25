<%@ Page Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Chatroom_login.aspx.cs" Inherits="Applicant_Chatroom_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <style>
  
        .form-control {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            text-align: left;
            width: 300px;
        }
       #chatroom_login {
           height: 300px;
           margin-left: 300px;
           width: 600px;
           margin-top: 90px;
           margin-bottom: 50px;
       }
       .leaf {
           border-radius: 40px 40px 40px 40px;
       }
       #chatroom_content{
           margin-left:130px;
           margin-right:100px;
           margin-top:40px;
         
       }
       .but {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 30px;
            margin-left: 5px;
            margin-top: 20px;
            font-size: 14px;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            border-radius: 4px;
        }
       
        .but_blue {
            color:white;
            background-color:#3399FF;
            border-color:white;
        }
         .but_blue:hover {
             background-color:#1F5C99;
         }
       
    </style>
    
    <div class="container_chatlog">
       
    <div id="chatroom_login" class="form-group leaf" style="background-image: url('http://localhost:49981/Images/if-i-had-a-flower-by-nicola-pearson-if-i-had-a-flower.jpg'); background-repeat: no-repeat;" >
       <div id="chatroom_content">
           <br />
        <h3 style="color: #FFFFFF">Please enter your Full name: </h3>
        <asp:TextBox ID="TextBox_Name" CssClass="form-control" runat="server">

        </asp:TextBox>  
        <br />
        <asp:Button ID="Button1" CssClass="but but_blue" runat="server" Text="Join" OnClick="Button1_Click" />
       </div>     
       </div>
            </div>
    
</asp:Content>