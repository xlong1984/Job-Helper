<%@ Page Language="C#" MasterPageFile="~/MasterPage_Company.master" AutoEventWireup="true" CodeFile="CompanyChatroom_login.aspx.cs" Inherits="Company_CompanyChatroom_login" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
           width: auto;
           margin-right: 240px;
           margin-top:90px;
           margin-bottom:50px;

       }
       .leaf {
           border-radius: 40px 40px 40px 40px;
       }
       #chatroom_content{
           margin-left:170px;
           margin-top:40px;
           margin-right:170px;
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
    
   
       
    <div id="chatroom_login" class="form-group leaf" style="background-image: url('/Images/wind-made-by-tiger-seo-wind-made.jpg'); background-repeat: no-repeat;" >
       <div id="chatroom_content">
           <br />
        <h3 style="color: #FFFFFF">Please enter your Full name: </h3>
        <asp:TextBox ID="TextBox_Name" CssClass="form-control" runat="server">

        </asp:TextBox>  
        <br />
        <asp:Button ID="Button1" CssClass="but but_blue" runat="server" Text="Join" OnClick="Button1_Click" />
       </div>     
       </div>

    
</asp:Content>