<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Company_Contact" MasterPageFile="../MasterPage_Company.master" %>

<asp:Content ID="Content_Contact" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
        #contact_us{
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
            width: 560px;
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
    </style>
    
    <div id="contact_us" class="container">
    
         <div class="center_container">
        <h2>Have suggestions? Contact us NOW!!</h2>
        <label>Your Name<asp:RequiredFieldValidator ID="RequiredFieldValidator_CUN" runat="server" ErrorMessage="Name is required" ControlToValidate="TextBox_CUN" ForeColor="#996600"></asp:RequiredFieldValidator>
        </label>
        <asp:TextBox ID="TextBox_CUN" runat="server" CssClass="form-control" placeholder="First Name     Last Name"></asp:TextBox>
        <br />
        <label>Email Address<asp:RequiredFieldValidator ID="RequiredFieldValidator_CEMAIL" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox_CEMAIL" ForeColor="#996600"></asp:RequiredFieldValidator>
        </label>
        <asp:TextBox ID="TextBox_CEMAIL" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
        <br />
             <label>Phone Number
        </label>
        <asp:TextBox  runat="server" CssClass="form-control" placeholder="phone number"></asp:TextBox>
        <br />
             <label for="suggestion">Suggestions
        </label>
        <asp:TextBox ID="TextBox_suggestion" runat="server" CssClass="form-control" placeholder="Tell us what's your suggestion for us" Columns="0" Rows="8" TextMode="MultiLine"></asp:TextBox>
       <br />
             <button class="but but_red">Submit</button>
    </div>
       
    </div>
    </asp:Content>
    