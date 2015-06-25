<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Applicant_Applications.aspx.cs" Inherits="aspx_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="container" class="row">
           <div class="col-md-8 col-md-offset-2">
               <div class="col-md-8">
                   <h2 class="text-center">Applications submitted</h2>
               </div>
               <div class="table">
                   <asp:SqlDataSource ID="AppDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT Position, Orgnization FROM Applications WHERE (Applicant = @fullname)">
                       <SelectParameters>
                           <asp:SessionParameter Name="fullname" SessionField="Username" />
                       </SelectParameters>
                   </asp:SqlDataSource>
                   
               <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="AppDataSource1" ForeColor="#333333" GridLines="None" Height="234px" Width="751px" CaptionAlign="Left" AutoGenerateColumns="False" >
                       <AlternatingRowStyle BackColor="White" ForeColor="#284775" HorizontalAlign="Left" />
                       <Columns>
                           <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" >
                           <HeaderStyle CssClass="text-center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="Orgnization" HeaderText="Orgnization" SortExpression="Orgnization" >
                           <HeaderStyle CssClass="text-center" />
                           </asp:BoundField>
                       </Columns>
                       <EditRowStyle BackColor="#999999" HorizontalAlign="Left" />
                       <EmptyDataRowStyle HorizontalAlign="Left" />
                       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />
                       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Left" />
                       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" />
                       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Left" />
                       <SortedAscendingCellStyle BackColor="#E9E7E2" HorizontalAlign="Left" />
                       <SortedAscendingHeaderStyle BackColor="#506C8C" />
                       <SortedDescendingCellStyle BackColor="#FFFDF8" />
                       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   </asp:GridView>
                   
               </div>
           </div>
       </div>
</asp:Content>

