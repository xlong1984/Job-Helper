<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Company.master" AutoEventWireup="true" CodeFile="SuggestionSent.aspx.cs" Inherits="Applicant_InSuggestion" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="TitlePanel" runat="server">
        <div class="row">
            <div class="col-xs-1">

            </div>
            <div class="col-xs-3">
              <h3 style="width:100%"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/SuggestionTitleLogon.png" Height="50px" Width="50px" />&nbsp;Suggestion Sent</h3> 
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
             
             <asp:GridView ID="InboxGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table" DataSourceID="OutboxSql" HorizontalAlign="Center" Width="600px">
                 <HeaderStyle VerticalAlign="Middle" HorizontalAlign="Center" />

                 <Columns>
                     <asp:BoundField DataField="Applicant" HeaderText="Applicant" SortExpression="Applicant" >
                     </asp:BoundField>
                     <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" >
                     </asp:BoundField>
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="OutboxSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT [Applicant], [Message] FROM [Suggestion] WHERE ([Orgnization] = @Orgnization)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Orgnization" SessionField="Orgnization" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
     </div>
</asp:Content>

