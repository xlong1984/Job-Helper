<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_edit_positions.aspx.cs" Inherits="Company_Company_edit_positions" MasterPageFile="../MasterPage_Company.master" %>


<asp:Content ID="Content_Company_edit_positions" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
            width: 140px;
        }
          .container {
            width: auto;
            margin-left: 30px;
            display: table;
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
       
        .but_red {
            color:white;
            background-color:#d43f3a;
            border-color:white;
        }
         .but_red:hover {
             background-color: grey;
         }
        .table_css{
            margin-bottom:40px;
            text-align:center;

        }
    </style>
    
    <div class="container">
      
        <h1>Existed Positions</h1>
         <asp:GridView ID="GridView1" CssClass="table_css" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="Id" ShowFooter="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
             <AlternatingRowStyle BackColor="#F7F7F7" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                 <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                     <EditItemTemplate>
                         <asp:Label ID="Label1"  runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label7" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:LinkButton ID="LinkButton_iNSERT" CssClass="but but_red" OnClick="LinkButton_iNSERT_Click" runat="server">Insert</asp:LinkButton>
                     </FooterTemplate>

                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Orgnization" SortExpression="Orgnization">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("Orgnization") %>'></asp:TextBox>                       
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("Orgnization") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="txOrg" CssClass="form-control" runat="server"></asp:TextBox>
                          
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Position" SortExpression="Position">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("Position") %>'></asp:TextBox>                         
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label3" runat="server" Text='<%# Bind("Position") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                             <asp:ListItem>Select position</asp:ListItem>
                             <asp:ListItem>HR</asp:ListItem>
                             <asp:ListItem>Programmer</asp:ListItem>
                             <asp:ListItem>Seller</asp:ListItem>
                             <asp:ListItem>Manager</asp:ListItem>
                         </asp:DropDownList>
                         
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="PositionID" SortExpression="PositionID">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Text='<%# Bind("PositionID") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("PositionID") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="txPoID" CssClass="form-control" runat="server"></asp:TextBox>
                         
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Name" SortExpression="Name">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label4" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="txName" CssClass="form-control" runat="server"></asp:TextBox>
                         
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="EmailAddress" SortExpression="EmailAddress">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("EmailAddress") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label5" runat="server" Text='<%# Bind("EmailAddress") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="txEmail" CssClass="form-control" runat="server"></asp:TextBox>
                         
                     </FooterTemplate>
                 </asp:TemplateField>
                 <asp:TemplateField HeaderText="Description" SortExpression="Description">
                     <EditItemTemplate>
                         <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label6" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                     </ItemTemplate>
                     <FooterTemplate>
                         <asp:TextBox ID="txDes" CssClass="form-control" runat="server"></asp:TextBox>
                         
                     </FooterTemplate>
                 </asp:TemplateField>
             </Columns>
             <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" Height="40px" />
             <HeaderStyle BackColor="#506C8C" Font-Bold="True" ForeColor="white" Height="40px" />
             <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
             <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" Height="40px" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" Height="40px"  />
             <SortedAscendingCellStyle BackColor="#F4F4FD" Height="40px"  />
             <SortedAscendingHeaderStyle BackColor="#5A4C9D" Height="40px" />
             <SortedDescendingCellStyle BackColor="#D8D8F0" Height="40px" />
             <SortedDescendingHeaderStyle BackColor="#3E3277" Height="40px" />
         </asp:GridView>
            </div>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Posi] WHERE ([Orgnization] = @Orgnization)" DeleteCommand="DELETE FROM [Posi] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Posi] ([Orgnization], [Position], [PositionID], [Name], [EmailAddress], [Description]) VALUES (@Orgnization, @Position, @PositionID, @Name, @EmailAddress, @Description)" UpdateCommand="UPDATE [Posi] SET [Orgnization] = @Orgnization, [Position] = @Position, [PositionID] = @PositionID, [Name] = @Name, [EmailAddress] = @EmailAddress, [Description] = @Description WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Orgnization" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="PositionID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Orgnization" SessionField="orgnization" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Orgnization" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="PositionID" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="EmailAddress" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
   

</asp:Content>