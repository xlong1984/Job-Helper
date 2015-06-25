<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Applicant_SuggestionOut.aspx.cs" Inherits="aspx_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>

    </style>
    <asp:Panel ID="TitlePanel" runat="server">
        <div class="row">
            <div class="col-xs-1">

            </div>
            <div class="col-xs-3">
              <h3 style="width:100%"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/SuggestionTitleLogon.png" Height="50px" Width="50px" />&nbsp;Suggestion OutBox</h3> 
            </div>
        </div>
    </asp:Panel>
     <hr style="width:100%"/>
    <div class="row">
         <div class="col-xs-1">

         </div>
         <div class="col-xs-3" style="height:600px; text-align: center;">
             <br />
             <h3><asp:LinkButton ID="InboxBtn" runat="server" OnClick="InboxBtn_Click">InBox</asp:LinkButton></h3>
             <br />
             <h3><asp:LinkButton ID="OutboxBtn" runat="server" OnClick="OutboxBtn_Click">OutBox</asp:LinkButton></h3>
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
                         <asp:Button ID="MsgSendBtn" runat="server" Text="Send" Width="80px" />&nbsp;&nbsp;
                         <asp:Button ID="EraseBtn" runat="server" Text="Clear" Width="80px" />
                     </td>
                 </tr>
             </table>

         </div>
     </div>
    </asp:Content>

