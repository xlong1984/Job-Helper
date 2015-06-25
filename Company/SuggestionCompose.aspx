<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Company.master" AutoEventWireup="true" CodeFile="SuggestionCompose.aspx.cs" Inherits="Applicant_SuggestionCompose" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
            function warning() {
                alert("Your message has been sent successfully!");
            }
    </script>
        <asp:Panel ID="TitlePanel" runat="server">
        <div class="row">
            <div class="col-xs-1">

            </div>
            <div class="col-xs-3">
              <h3 style="width:100%"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/SuggestionTitleLogon.png" Height="50px" Width="50px" />&nbsp;New Suggestion</h3> 
            </div>
        </div>
    </asp:Panel>
     <hr style="width:100%"/>
    <div class="row">
         <div class="col-xs-1">

         </div>
         <div class="col-xs-3" style="height:600px; text-align: center;">
             <br />
             <h3><asp:LinkButton ID="ComposeBtn" runat="server" OnClick="ComposeBtn_Click">Compose</asp:LinkButton></h3>
             <br />
             <h3><asp:LinkButton ID="SentBtn" runat="server" OnClick="SentBtn_Click">Sent</asp:LinkButton></h3>
             <br />
          
         </div>
         <div class="col-xs-5" style="height:600px">
             <table style="width: 100%;">
                 <tr>
                     <td>&nbsp;To:&nbsp;</td>
                     <td>&nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
                     
                 </tr>
                 <tr>
                     <td>&nbsp;Message:</td>
                     <td>&nbsp;</td>
                     
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>&nbsp;<asp:TextBox ID="msgTB" runat="server" TextMode="MultiLine" CssClass="form-control" Height="200px" Width="300px"></asp:TextBox></td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td></td>
                     <td>&nbsp;</td>
                 </tr>
                 <tr>
                     <td>&nbsp;</td>
                     <td>
                         <asp:Button ID="MsgSendBtn" runat="server" Text="Send" Width="80px" OnClick="MsgSendBtn_Click" />&nbsp;&nbsp;
                         <asp:Button ID="EraseBtn" runat="server" Text="Clear" Width="80px" OnClick="EraseBtn_Click"/>
                     </td>
                 </tr>
             </table>

         </div>
     </div>
</asp:Content>

