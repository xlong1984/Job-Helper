<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_Profile.aspx.cs" Inherits="aspx_Company_Profile" MasterPageFile="~/MasterPage_Company.master" %>

<asp:Content ID="Content_Company_Home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <style>
        .whole {
            background-color: #736086;
            border-radius: 40px 40px 40px 40px;
            color: white;
            padding-left: 40px;
            padding-top: 20px;
        }
        .text-left{
            text-align:left;
        }
        .head-color{
            color:white;
            text-align:left;
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
            color:#736086 ;
            background-color: white;
            border-color:white;
        }
         .but_red:hover{
            background-color:#d43f3a;
            color:white;
        }
        .welcome{
            margin-left:30px;
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
        .logout_h:hover {
            color: blue;
        }
        .logout {
            padding-left: 50px;
        }
       

    </style>
    <div class="container">
        <div class="center_container">
           <div class="whole">
                <asp:Label ID="Label_Welcome" runat="server" Text="Label" CssClass="welcome" style="text-align: center" ></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="logout_h" NavigateUrl="~/Company/Company_Logout.aspx" >Log out</asp:HyperLink>
                <asp:FormView ID="FormView1"  runat="server" DataSourceID="SqlDataSource1"  Font-Size="Large"  DataKeyNames="Id" Height="521px" Width="914px" >
                <EditItemTemplate>
                    <div class="text-left">
                    <h2 class="head-color">Account Information</h2>
                    Id:
                    <asp:Label ID="IdLabel1"  runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    <br />
                    UserName:
                    <asp:TextBox ID="UserNameTextBox" class="inputbox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    <br />
                    RegisterEmail:
                    <asp:TextBox ID="RegisterEmailTextBox" class="inputbox"  runat="server" Text='<%# Bind("RegisterEmail") %>' />
                    <br />
                    <br />
                    Password:
                    <asp:TextBox ID="PasswordTextBox" class="inputbox"  runat="server" Text='<%# Bind("Password") %>' />
                    <br />
                    <br />
                    <h2 class="text-center head-color">Company Information</h2>
                    Orgnization:
                    <asp:TextBox ID="OrgnizationTextBox" class="inputbox"  runat="server" Text='<%# Bind("Orgnization") %>' />
                    <br />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" class="inputbox"  runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    <br />
                    Industry:
                    <asp:TextBox ID="IndustryTextBox" class="inputbox"  runat="server" Text='<%# Bind("Industry") %>' />
                    <br />
                    <br />
                    CompanyWeb:
                    <asp:TextBox ID="CompanyWebTextBox" class="inputbox"  runat="server" Text='<%# Bind("CompanyWeb") %>' />
                    <br />
                    <br />
                    <h2 class="text-center head-color">Personal Information</h2>
                    FullName:
                    <asp:TextBox ID="FullNameTextBox" class="inputbox" runat="server" Text='<%# Bind("FullName") %>' />
                    <br />
                    <br />
                    Title:
                    <asp:TextBox ID="TitleTextBox" class="inputbox"  runat="server" Text='<%# Bind("Title") %>' />
                    <br />
                    <br />
                    EmailAddress:
                    <asp:TextBox ID="EmailAddressTextBox" class="inputbox"  runat="server" Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    <br />
                    Phone:
                    <asp:TextBox ID="PhoneTextBox" class="inputbox"  runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    <br />
                    Street:
                    <asp:TextBox ID="StreetTextBox" class="inputbox"  runat="server" Text='<%# Bind("Street") %>' />
                    <br />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" class="inputbox"  runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox"  class="inputbox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    <br />
                    ZipCode:
                    <asp:TextBox ID="ZipCodeTextBox" class="inputbox"  runat="server" Text='<%# Bind("ZipCode") %>' />
                    <br />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" class="inputbox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="UpdateButton" CssClass="but but_red" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    
                    <asp:LinkButton ID="UpdateCancelButton" CssClass="but but_red" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
               </div>
                </EditItemTemplate>
                    <EditRowStyle Font-Size="Large" />
                    <HeaderStyle  forecolor="#333399"/>
                <InsertItemTemplate>
                    <div class="text-left">
                    Id:
                    <asp:TextBox ID="IdTextBox" class="inputbox" runat="server" Text='<%# Bind("Id") %>' />
                    <br />
                    <br />
                    UserName:
                    <asp:TextBox ID="UserNameTextBox" class="inputbox" runat="server" Text='<%# Bind("UserName") %>' />
                    <br />
                    <br />
                    RegisterEmail:
                    <asp:TextBox ID="RegisterEmailTextBox" class="inputbox" runat="server" Text='<%# Bind("RegisterEmail") %>' />
                    <br />
                    <br />
                    Password:
                    <asp:TextBox ID="PasswordTextBox" class="inputbox" runat="server" Text='<%# Bind("Password") %>' />
                    <br />
                    <br />
                    Orgnization:
                    <asp:TextBox ID="OrgnizationTextBox" class="inputbox" runat="server" Text='<%# Bind("Orgnization") %>' />
                    <br />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" class="inputbox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    <br />
                    Industry:
                    <asp:TextBox ID="IndustryTextBox" class="inputbox" runat="server" Text='<%# Bind("Industry") %>' />
                    <br />
                    <br />
                    CompanyWeb:
                    <asp:TextBox ID="CompanyWebTextBox" class="inputbox" runat="server" Text='<%# Bind("CompanyWeb") %>' />
                    <br />
                    <br />
                    FullName:
                    <asp:TextBox ID="FullNameTextBox" class="inputbox" style="text-align:center" runat="server" Text='<%# Bind("FullName") %>' />
                    <br />
                    <br />
                    Title:
                    <asp:TextBox ID="TitleTextBox" class="inputbox" runat="server" Text='<%# Bind("Title") %>' />
                    <br />
                    <br />
                    EmailAddress:
                    <asp:TextBox ID="EmailAddressTextBox" class="inputbox" runat="server" Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    <br />
                    Phone:
                    <asp:TextBox ID="PhoneTextBox" class="inputbox" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    <br />
                    Street:
                    <asp:TextBox ID="StreetTextBox" class="inputbox" runat="server" Text='<%# Bind("Street") %>' />
                    <br />
                    <br />
                    City:
                    <asp:TextBox ID="CityTextBox" class="inputbox" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    <br />
                    State:
                    <asp:TextBox ID="StateTextBox" class="inputbox" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    <br />
                    ZipCode:
                    <asp:TextBox ID="ZipCodeTextBox" class="inputbox" runat="server" Text='<%# Bind("ZipCode") %>' />
                    <br />
                    <br />
                    Country:
                    <asp:TextBox ID="CountryTextBox" class="inputbox" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CssClass="but but_red" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="but but_red" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </div>
                </InsertItemTemplate>
                <ItemTemplate>
                    <div class="text-left"> 
                        <h2>Account Information</h2>

                    UserName:
                    <asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' />
                    <br/>
                   
                    RegisterEmail:
                    <asp:Label ID="RegisterEmailLabel" runat="server" Text='<%# Bind("RegisterEmail") %>' />
                    <br />
                    Password:
                    <asp:Label ID="PasswordLabel" runat="server" Text='<%# Bind("Password") %>' />
                    <br />
                        <h2>Company Information</h2>
                    Orgnization:
                    <asp:Label ID="OrgnizationLabel" runat="server" Text='<%# Bind("Orgnization") %>' />
                    <br />
                    Description:
                    <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    Industry:
                    <asp:Label ID="IndustryLabel" runat="server" Text='<%# Bind("Industry") %>' />
                    <br />
                    CompanyWeb:
                    <asp:Label ID="CompanyWebLabel" runat="server" Text='<%# Bind("CompanyWeb") %>' />
                    <br />
                    <h2>Personal Information</h2>    
                    FullName:
                    <asp:Label ID="FullNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
                    <br />
                    Title:
                    <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
                    <br />
                    EmailAddress:
                    <asp:Label ID="EmailAddressLabel" CssClass="control-label" runat="server" Text='<%# Bind("EmailAddress") %>' />
                    <br />
                    Phone:
                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                    <br />
                    Street:
                    <asp:Label ID="StreetLabel" runat="server" Text='<%# Bind("Street") %>' />
                    <br />
                    City:
                    <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                    <br />
                    State:
                    <asp:Label ID="StateLabel" runat="server" Text='<%# Bind("State") %>' />
                    <br />
                    ZipCode:
                    <asp:Label ID="ZipCodeLabel" runat="server" Text='<%# Bind("ZipCode") %>' />
                    <br />
                    Country:
                    <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" CssClass="but but_red" Text="Edit" />
                    &nbsp;
                    &nbsp;
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" CssClass="but but_red" Text="New" />
                    <br/>
                    
                </div>
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT Id, UserName, RegisterEmail, Password, Orgnization, Description, Industry, CompanyWeb, FullName, Title, EmailAddress, Phone, Street, City, State, ZipCode, Country FROM Company WHERE (UserName = @username)" DeleteCommand="DELETE FROM [Company] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Company] ([UserName], [RegisterEmail], [Password], [Orgnization], [Description], [Industry], [CompanyWeb], [FullName], [Title], [EmailAddress], [Phone], [Street], [City], [State], [ZipCode], [Country]) VALUES (@UserName, @RegisterEmail, @Password, @Orgnization, @Description, @Industry, @CompanyWeb, @FullName, @Title, @EmailAddress, @Phone, @Street, @City, @State, @ZipCode, @Country)" UpdateCommand="UPDATE [Company] SET [UserName] = @UserName, [RegisterEmail] = @RegisterEmail, [Password] = @Password, [Orgnization] = @Orgnization, [Description] = @Description, [Industry] = @Industry, [CompanyWeb] = @CompanyWeb, [FullName] = @FullName, [Title] = @Title, [EmailAddress] = @EmailAddress, [Phone] = @Phone, [Street] = @Street, [City] = @City, [State] = @State, [ZipCode] = @ZipCode, [Country] = @Country WHERE [Id] = @Id">
               
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="RegisterEmail" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Orgnization" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Industry" Type="String" />
                    <asp:Parameter Name="CompanyWeb" Type="String" />
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="new" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="RegisterEmail" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Orgnization" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Industry" Type="String" />
                    <asp:Parameter Name="CompanyWeb" Type="String" />
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="EmailAddress" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Street" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="Country" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
                </asp:SqlDataSource>
          </div>
          
        </div>
    </div>
    </asp:Content>

