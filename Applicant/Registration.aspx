<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration"MasterPageFile="~/Applicant.master" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>

        .RegTable {
        margin: 0px;
        position: relative;
        width: 100%;
        display: table;
        left: 30%;
    }
        .tdstyle2 {
            height: 22px;
            width: 230px;
            text-align: left;
        }
        .tdstyle3 {
            height: 62px;
            width: 230px;
            text-align: left;
        }
        .tdstyle5 {
            height: 40px;
            width: 230px;
            text-align: left;
        }
        .tdstyle6 {
            height: 37px;
            width: 230px;
        }
        .tdstyle8 {
            text-align: right;
            height: 22px;
            width: 190px;
        }
        .tdstyle9 {
            text-align: right;
            height: 62px;
            width: 190px;
        }
        .tdstyle10 {
            text-align: right;
            width: 190px;
        }
        .tdstyle11 {
            text-align: right;
            height: 40px;
            width: 190px;
        }
        .tdstyle12 {
            text-align: right;
            height: 24px;
            width: 190px;
        }
        .tdstyle13 {
            text-align: right;
            height: 37px;
            width: 190px;
        }

        .tdstyle14 {
            width: 230px;
            text-align: left;
        }
        .tdstyle15 {
            text-align: left;
            height: 40px;
        }
        .tdstyle16 {
            text-align: left;
            height: 62px;
        }

        .tdstyle17 {
            height: 37px;
            width: 230px;
            text-align: left;
        }

        </style>
    <div>
    
        <table class="RegTable">
            <tr>
                <td></td>
               <td><h3>Basic Information:</h3></td> 
                <td></td>
            </tr>
            <tr>
                <td class="tdstyle8">FullName:</td>
                <td class="tdstyle2">
                    <asp:TextBox ID="UserNameTB" runat="server" Width="180px" CssClass="form-control" OnTextChanged="UserNameTB_TextChanged"></asp:TextBox>
                </td>
                <td class="text-left" style="height: 22px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTB" ErrorMessage="User Name is required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle8">E-mail:</td>
                <td class="tdstyle2">
                    <asp:TextBox ID="EmailTB" runat="server" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="text-left" style="height: 22px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTB" ErrorMessage="E-mail is required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTB" ErrorMessage="You must enter the valid E-mail ID!" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle8">Phone:</td>
                <td class="text-left">
                    <asp:TextBox ID="PhoneTB" runat="server" CssClass="form-control" Width="180px"></asp:TextBox>
                </td>
                <td class="tdstyle15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Phone Number is Required!" ForeColor="#CC3300" ControlToValidate="PhoneTB"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid phone number!" ForeColor="#CC3300" ControlToValidate="PhoneTB" ValidationExpression="[0-9]{6,10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle10">Passoword:</td>
                <td class="tdstyle14">
                    <asp:TextBox ID="PassTB" runat="server" TextMode="Password" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="text-left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PassTB" ErrorMessage="Password is required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle11">Confirm Password:</td>
                <td class="tdstyle5">
                    <asp:TextBox ID="RePassTB" runat="server" TextMode="Password" Width="180px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="tdstyle15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RePassTB" ErrorMessage="Confirmed Password is required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PassTB" ControlToValidate="RePassTB" ErrorMessage="Both password must be the same!" ForeColor="#CC3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="tdstyle10">&nbsp</td>
                <td class="tdstyle6"><h3>Address:</h3></td>
                <td class="text-left">&nbsp;</td>
            </tr>
            <tr>
                <td class="text-left">Street:
                    <asp:TextBox ID="StreetTB" runat="server" CssClass="form-control" Height="25px" Width="100px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="StreetTB" ErrorMessage="Street is Required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
                <td class="text-left">City:
                    <asp:TextBox ID="CityTB" runat="server" CssClass="form-control" Height="25px" Width="80px"></asp:TextBox>
 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="CityTB" ErrorMessage="Invalid City!" ForeColor="#CC3300" ValidationExpression="[a-zA-Z]+"></asp:RegularExpressionValidator>
 
                </td>
                <td class="text-left">State:
                    <asp:DropDownList ID="DropDownListSta" runat="server" CssClass="form-control" Width="120px">
                        <asp:ListItem>Select State</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>CA</asp:ListItem>
                        <asp:ListItem>IL</asp:ListItem>
                        <asp:ListItem>OH</asp:ListItem>
                        <asp:ListItem>FL</asp:ListItem>
                        <asp:ListItem>TX</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="DropDownListSta" ErrorMessage="State is Required!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-left">Zipcode:
                    <asp:TextBox ID="ZipTB" runat="server" CssClass="form-control" Height="25px" Width="80px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Zipcode Invalid!" ForeColor="#CC3300" ControlToValidate="ZipTB" ValidationExpression="[0-9]{4,5}"></asp:RegularExpressionValidator>
                </td>
                <td class="text-left">Country:
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px" CssClass="form-control" >
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem Value="USA"></asp:ListItem>
                        <asp:ListItem Value="UK"></asp:ListItem>
                        <asp:ListItem Value="China"></asp:ListItem>
                        <asp:ListItem Value="Germany"></asp:ListItem>
                        <asp:ListItem Value="France"></asp:ListItem>
                        <asp:ListItem Value="Other"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCountry" ErrorMessage="Select Country is required!" ForeColor="#CC3300" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
                <td class="text-left">
                    <br />
                </td>
            </tr>
            <tr>
            <td class="tdstyle10">&nbsp;</td>
                <td class="tdstyle6">
                    <asp:Button ID="SubmitBtn" runat="server" Text="Submit" Width="93px" OnClick="SubmitBtn_Click" CssClass="btn btn-large btn-primary" />  
                    &nbsp;<asp:Button ID="ResetBtn" runat="server" Text="Reset All" OnClick="ResetBtn_Click" CssClass="btn btn-large btn-primary" /></td>
                <td class="text-left">&nbsp;</td>
            </tr>
            </table>
    
    </div>

    <div>
    
    </div>

        </asp:Content>