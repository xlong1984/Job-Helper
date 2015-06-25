<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Applicant_SuggestionIn.aspx.cs" Inherits="aspx_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>

    </style>
    <asp:Panel ID="TitlePanel" runat="server">
        <div class="row">
            <div class="col-xs-1">

            </div>
            <div class="col-xs-3">
              <h3 style="width:100%"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/SuggestionTitleLogon.png" Height="50px" Width="50px" />&nbsp;Suggestion InBox</h3> 
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
             
             <asp:GridView ID="InboxGridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table" DataSourceID="OutboxSql" HorizontalAlign="Center" Width="600px">
                 <HeaderStyle VerticalAlign="Middle" HorizontalAlign="Center" />

                 <Columns>
                     <asp:BoundField DataField="Orgnization" HeaderText="Orgnization" SortExpression="Orgnization" >
                     <HeaderStyle CssClass="text-center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position">
                     <HeaderStyle CssClass="text-center" />
                     </asp:BoundField>
                     <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" >
                     <HeaderStyle CssClass="text-center" />
                     </asp:BoundField>
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="OutboxSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT [Orgnization], [Position], [Message] FROM [Suggestion] WHERE ([Applicant] = @Applicant)">
                 <SelectParameters>
                     <asp:SessionParameter Name="Applicant" SessionField="Username" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>
     </div>
    </asp:Content>

