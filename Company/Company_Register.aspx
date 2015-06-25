<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="Company_Register.aspx.cs" Inherits="aspx_Company_Register" MasterPageFile="~/MasterPage_Company.master" %>

<asp:Content ID="Content_Company_Home" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style>
        #register{
            color:black;
        }
        .form-control {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            text-align: left;
            width: 560px;
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
    
    <div id="register" class="container">
        <div class="center_container">
            
                <h2>Account Information</h2>
                <div class="form-group">
                    <label>
                        User Name&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CUN" runat="server" ErrorMessage="Username is required" ControlToValidate="TextBox_CUN" ForeColor="#996600"></asp:RequiredFieldValidator>
                        &nbsp;
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CUN" runat="server" CssClass="form-control" placeholder="your login name"></asp:TextBox>
                    <label>
                        Resgister Email&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CEMAIL" runat="server" ErrorMessage="Email is required" ControlToValidate="TextBox_CEMAIL" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CEMAIL" runat="server" placeholder="email address" CssClass="form-control"></asp:TextBox>
                    <label for="exampleInputPassword1">
                        Password&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CPW" runat="server" ErrorMessage="Username is required" ControlToValidate="TextBox_CPW" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CPW" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <label for="exampleInputPassword1">
                        Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CCPW" runat="server" ErrorMessage="Please reenter the password" ControlToValidate="TextBox_CCPW" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator_CCPW" runat="server" ControlToCompare="TextBox_CPW" ControlToValidate="TextBox_CCPW" ErrorMessage="The two passwords entered must be the same" ForeColor="#996600"></asp:CompareValidator>
                    &nbsp;<asp:TextBox ID="TextBox_CCPW" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>

                </div>
                <h2>Company Information</h2>
                <div class="form-group">
                    <label>
                        Organization Name&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CORG" runat="server" ErrorMessage="Orgnization is required" ControlToValidate="TextBox_CORG" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CORG" runat="server" placeholder="Company Name" CssClass="form-control"></asp:TextBox>

                    <label>
                        Description&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CDescription" runat="server" ErrorMessage="Description is required" ControlToValidate="TextBox_CDes" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CDes" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>
                        Industry&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CIndustry" runat="server" ErrorMessage="Industry information is required" ControlToValidate="DropDownList_CINDUSTRY" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:DropDownList ID="DropDownList_CINDUSTRY" runat="server" CssClass="form-control">
                        <asp:ListItem>Select Industry</asp:ListItem>
                        <asp:ListItem Value="Accounting"></asp:ListItem>
                        <asp:ListItem Value="Agriculture"></asp:ListItem>
                        <asp:ListItem Value="Architecture"></asp:ListItem>
                        <asp:ListItem Value="Communications/Media"></asp:ListItem>
                        <asp:ListItem Value="Consulting/Healthcare"></asp:ListItem>
                        <asp:ListItem Value="Consulting/Technology"></asp:ListItem>
                        <asp:ListItem Value="Consulting/Management"></asp:ListItem>
                        <asp:ListItem Value="Education"></asp:ListItem>
                        <asp:ListItem Value="Energy/Utility"></asp:ListItem>
                        <asp:ListItem Value="Engineering-Biomedical"></asp:ListItem>
                        <asp:ListItem Value="Engineering-Chemical"></asp:ListItem>
                        <asp:ListItem Value="Engineering-Computer"></asp:ListItem>
                        <asp:ListItem Value="Engineering-Electrical"></asp:ListItem>
                        <asp:ListItem Value="Finance"></asp:ListItem>
                    </asp:DropDownList>

                    <label>
                        Company Website&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CWB" runat="server" ErrorMessage="Company website is required" ControlToValidate="TextBox_CWEB" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;
                </div>
                <asp:TextBox ID="TextBox_CWEB" runat="server" CssClass="form-control"></asp:TextBox>
                <h2>Contact Information</h2>
                <div class="form-group" aria-busy="False">
                    <label>
                        Full Name&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CFN" runat="server" ErrorMessage="Fullname is required" ControlToValidate="TextBox_CFN" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CFN" runat="server" CssClass="form-control"></asp:TextBox>


                    &nbsp;&nbsp;<label>Title&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CTitile" runat="server" ErrorMessage="Title is required" ControlToValidate="TextBox_CTITLE" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox_CTITLE" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>
                        Email address&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CEA" runat="server" ErrorMessage="Email Address is required" ControlToValidate="TextBox_CEA" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CEA" runat="server" CssClass="form-control"></asp:TextBox>
                    &nbsp;<label>Phone&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CPHONE" runat="server" ErrorMessage="Phone number is required" ControlToValidate="TextBox1_CPHONE" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1_CPHONE" runat="server" CssClass="form-control"></asp:TextBox>
                    <h2>Address</h2>
                    <label>
                        Street&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CStreet" runat="server" ErrorMessage="Street is required" ControlToValidate="TextBox_CSTREET" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:TextBox ID="TextBox_CSTREET" runat="server" CssClass="form-control"></asp:TextBox>
                    <label>
                        City&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CCity" runat="server" ErrorMessage="City is required" ControlToValidate="TextBox_CCITY" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CCITY" runat="server" CssClass="form-control"></asp:TextBox>
                    &nbsp;<label>State&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CState" runat="server" ErrorMessage="State is required" ControlToValidate="TextBox_CSTATE" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CSTATE" runat="server" CssClass="form-control"></asp:TextBox>
                    &nbsp;<label>Zip Code&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CUN14" runat="server" ErrorMessage="Username is required" ControlToValidate="TextBox_CUN" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CZIP" runat="server" CssClass="form-control"></asp:TextBox>
                    &nbsp;<label>Country&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_CCountry" runat="server" ErrorMessage="Country is required" ControlToValidate="TextBox_CCOUNTRY" ForeColor="#996600"></asp:RequiredFieldValidator>
                    </label>
                    &nbsp;<asp:TextBox ID="TextBox_CCOUNTRY" runat="server" CssClass="form-control"></asp:TextBox>
                    &nbsp;
                </div>

                <div class="checkbox">
                    <label>
                        <input type="checkbox" />
                        I have read and agreed the agreement
                    </label>
                </div>
            
            <asp:Button ID="Button1" CssClass="but but_red" runat="server" OnClick="Button1_Click" Text="SUBMIT" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" InsertCommand="INSERT INTO Company(UserName, RegisterEmail, Password, Orgnization, Description, Industry, CompanyWeb, FullName, Title, EmailAddress, Phone, Street, City, State, ZipCode, Country) VALUES (@UserName, @RegisterEmail, @Password, @Orgnization, @Description, @Industry, @CompanyWeb, @FullName, @Title, @EmailAddress, @Phone, @Street, @City, @State, @ZipCode, @Country)" SelectCommand="SELECT * FROM [Company]">
                <InsertParameters>
                    <asp:ControlParameter ControlID="TextBox_CUN" Name="UserName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CEMAIL" Name="RegisterEmail" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CPW" Name="Password" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CORG" Name="Orgnization" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CDes" Name="Description" PropertyName="Text" />
                    <asp:ControlParameter ControlID="DropDownList_CINDUSTRY" Name="Industry" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="TextBox_CWEB" Name="CompanyWeb" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CFN" Name="FullName" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CTITLE" Name="Title" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CEA" Name="EmailAddress" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox1_CPHONE" Name="Phone" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CSTREET" Name="Street" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CCITY" Name="City" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CSTATE" Name="State" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CZIP" Name="ZipCode" PropertyName="Text" />
                    <asp:ControlParameter ControlID="TextBox_CCOUNTRY" Name="Country" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>