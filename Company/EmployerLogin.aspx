<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EmployerLogin.aspx.cs" Inherits="Company_EmployerLogin"MasterPageFile="~/MasterPage_Company.master" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
         .outer{
             text-align: center;
             color:black;
             margin-top:100px;
             margin-bottom:50px;
         }
         .log_in {
             width: 335px;
             color: black;
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
            width: 350px;
        }
         .btn {
             display: inline-block;
             padding: 6px 12px;
             margin-bottom: 0;
             font-size: 14px;
             text-align: center;
             vertical-align: middle;
             cursor: pointer;
             border-radius: 4px;
         }
         .button_red {
             color: #fff;
             background-color: #d9534f;
         }
         #username {
             width: 336px;
             height: 63px;
         }
         #username_text {
             width: 409px;
             height: 63px;
         }
         #alert{
              height: 63px;
         }
         #password {
             width: 336px;
             height: 32px;
         }
         #password_text {
             width: 409px;
             height: 32px;
         }
         #password_alert{
              height: 32px;
         }
         .button_css{
               width: 409px;
         }
    </style>
    <div class="outer">
        <strong>
        Login Page<br />
        </strong>

   
        <table class="log_in" align="center">
            <tr>
                <td id="username">Username</td>
                <td id="username_text">
                    <asp:TextBox ID="TextBox_LoginUN" runat="server" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
                <td id="alert">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator_LoginUN" runat="server" ControlToValidate="TextBox_LoginUN" ErrorMessage="Please enter the user name" ForeColor="#996600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td id="password">Password</td>
                <td id="password_text">
                    <asp:TextBox ID="TextBox_LoginPW" runat="server" Width="180px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
                <td id="password_alert">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_LoginPW" ErrorMessage="Please enter the password" ForeColor="#996600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center" class="button_css">
                    <asp:Button ID="Button1" runat="server" class="btn button_red" OnClick="Button1_Click" Text="Login" />
                </td>
                <td colspan="3">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Company/Company_Register.aspx">New User Register Here</asp:HyperLink>
                </td>
            </tr>
        </table>
         </div>
  </asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
   
</asp:Content>


