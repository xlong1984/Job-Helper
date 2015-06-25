<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Search_Result.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <script type="text/javascript">
            function warning() {
                alert("You have applied this position!");
            }
    </script>
    <style>

        .SearchPanel {
            position: relative;
            left: 25%;
            width:530px;
            
        }
        
        .auto-style1 {
            text-align: center;
        }
        
    </style>
    
        <table class="SearchPanel">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" style="text-align: center" Text="Search for positions or companies:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:TextBox ID="SearchBox" runat="server" BorderColor="#0066FF" BorderStyle="Solid" Width="300px" ToolTip="Enter the positions or companies you are interested" TextMode="Search"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SearchBox" ErrorMessage="Please Enter A Positions or Companies." ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="SearchBtn" runat="server" Text="Search" Width="100px" OnClick="SearchBtn_Click1" CssClass="btn btn-large btn-primary" />
                </td>
            </tr>
            <tr>
                <td aria-selected="undefined">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="Id" OnRowCommand="GridView1_RowCommand1">
                        <Columns>
                            <asp:BoundField DataField="Orgnization" HeaderText="Orgnization" SortExpression="Orgnization" >
                            <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" >
                            <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="PositionID" HeaderText="PositionID" SortExpression="PositionID" >
                            <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" >
                            <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" >
                            <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" >
                            <HeaderStyle CssClass="text-center" />
                            </asp:BoundField>
                            <asp:ButtonField ButtonType="Button" CommandName="Add" Text="Apply" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Posi]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT * FROM [Search]" DeleteCommand="DELETE FROM [Search] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Search] ([Orgnization], [Position], [PositionID], [Name], [EmailAddress], [Description]) VALUES (@Orgnization, @Position, @PositionID, @Name, @EmailAddress, @Description)" UpdateCommand="UPDATE [Search] SET [Orgnization] = @Orgnization, [Position] = @Position, [PositionID] = @PositionID, [Name] = @Name, [EmailAddress] = @EmailAddress, [Description] = @Description WHERE [Id] = @Id">
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

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Applicant]"></asp:SqlDataSource>
    <br />

</asp:Content>

