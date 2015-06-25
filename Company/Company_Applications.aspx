<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Applications.aspx.cs" Inherits="aspx_Company_Applications" MasterPageFile="~/MasterPage_Company.master" %>

<asp:Content ID="Content_Company_Home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
         #application {
             background-color: white;
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
    <div id="application" class="container">
          
           <div class="center_container">  
        <asp:GridView ID="GridView1" AllowSorting="True"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="641px" OnRowCommand="GridView1_RowCommand">
                   <AlternatingRowStyle BackColor="#E9E7E2" ForeColor="" />
                   <Columns>
                       <asp:BoundField DataField="Fullname" HeaderText="Fullname" SortExpression="Fullname" >
                       </asp:BoundField>
                       <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" >
                       </asp:BoundField>
                       <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />

                        
                       <asp:ButtonField ButtonType="Button" ControlStyle-CssClass="but but_red" CommandName="View" HeaderText="Applicant's Profile" Text="View" />

                        
                   </Columns>
                   <EditRowStyle BackColor="#E9E7E2" ForeColor="white" />
                   <FooterStyle BackColor="#E9E7E2" Font-Bold="True" ForeColor="black" />
                   <HeaderStyle BackColor="#506C8C" Font-Bold="True" ForeColor="white" />
                   <PagerStyle BackColor="#E9E7E2" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#E9E7E2" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#FFFFD1" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
               </asp:GridView>
                
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [Fullname], [Email], [Position] FROM [Applicant] WHERE ([Orgnization] = @Orgnization)">
                   <SelectParameters>
                       <asp:SessionParameter Name="Orgnization" SessionField="Orgnization" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
                
           </div>
   
   </div>
    </asp:Content>
