<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                    <asp:TextBox ID="SearchBox" runat="server" BorderColor="#0066FF" BorderStyle="Solid" Width="300px" ToolTip="Enter the positions or companies you are interested"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="SearchBox" ErrorMessage="Please Enter A Positions or Companies." ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    &nbsp;&nbsp;
                    <asp:Button ID="SearchBtn" runat="server" Text="Search" Width="100px" OnClick="SearchBtn_Click1" CssClass="btn btn-large btn-primary" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Orgnization" HeaderText="Organization" SortExpression="Orgnization" />
                            <asp:BoundField DataField="PositionID" HeaderText="PositionID" SortExpression="PositionID" />
                            <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                            <asp:HyperLinkField HeaderText="Apply" NavigateUrl="~/Company/DoQuestionnaire.aspx" Text="Apply" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Posi]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT [Orgnization], [PositionID], [Position], [Name], [EmailAddress], [Description] FROM [Search]"></asp:SqlDataSource>

</asp:Content>

