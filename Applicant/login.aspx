<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/Applicant.master"%>


 <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>

         .logintable {
             margin: auto;
             position: relative;
             top: 0px;
             left: -16px;
             width: 348px;
         }
         .tdstyle2 {
             width: 235px;
             height: 80px;
         }
         .tdstyle3 {
             text-align: right;
             height: 15px;
             width: 235px;
         }
         .tdstyle4 {
             width: 235px;
             height: 41px;
         }
         .tdstyle5 {
             width: 235px;
         }

     .auto-style1 {
        text-align: center;
    }
    .auto-style2 {
        width: 235px;
        height: 41px;
        text-align: center;
    }

     </style>
     <div class="tdstyle1" style="text-align: center">
    
        <strong>Login Page</strong></div>
        <table class="logintable">
            <tr>
                <td class="tdstyle2" style="text-align: right; ">Email:&nbsp; </td>
                <td class="tdstyle1" style="width: 164px; height: 80px">
                    <asp:TextBox ID="TextUserName" runat="server" Width="180px" CssClass="form-control" ToolTip="Enter the email address you registered."></asp:TextBox>
                </td>
                <td class="text-left" style="height: 80px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextUserName" ErrorMessage="Please enter the use name" ForeColor="#996600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle3">Password:</td>
                <td style="height: 15px; width: 164px;" class="auto-style1">
                    <asp:TextBox ID="TextPassword" runat="server" TextMode="Password" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
                <td style="height: 15px" class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPassword" ErrorMessage="Please enter the password" ForeColor="#996600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td style="width: 164px; height: 41px" class="auto-style1">
                    <asp:Button ID="Button_Login" runat="server" OnClick="Button_Login_Click" Text="Login" CssClass="btn btn-large btn-primary" />
                </td>
                <td class="text-left" style="height: 41px">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Applicant/Registration.aspx">New User Register Here</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="tdstyle5" style="text-align: right">&nbsp;</td>
                <td style="width: 164px; text-align: center;">
                    <asp:Label ID="InfoLabel" runat="server" ForeColor="#CC3300" Text="Password is Incorrect!" Visible="False"></asp:Label>
                </td>
                <td class="text-left">&nbsp;</td>
            </tr>
        </table>

</asp:Content>