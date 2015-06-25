<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Edit_Profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .tdstyle1 {
            width: 125px;
            text-align: right;
        }
        .tdstyle2 {
            text-align: left;
            width: 162px;
        }
        .tdstyle3 {
            width: 162px;
        }
        .tdstyle4 {
            text-align: left;
            width: 156px;
        }
            .tableEdit1 {
                position: relative;
                margin: auto auto auto 25%;
                width: 80%;
                table-layout: fixed;
            }
            .tableEdit2 {
                position: relative;
                margin: auto auto auto 25%;
                width: 80%;
                table-layout: fixed;
            }
            .tableEdit3 {
                position: relative;
                margin: auto auto auto 12%;
                width: 80%;
                table-layout: fixed;
            }
            .auto-style1 {
                text-align: center;
                height: 20px;
            }
            .auto-style2 {
                height: 20px;
            }
            .auto-style3 {
                text-align: center;
                width: 260px;
            }
            .auto-style4 {
                text-align: center;
            }
            </style>

        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center">
                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/Images/basic.png" Width="30px" />
&nbsp;Basic Information</h3>            
        </div>

          <div>
              <table class="tableEdit1">
                  <tr>
                      <td style="height:40px" class="auto-style4">Name:</td>
                      <td><asp:TextBox ID="NewNameTB" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                      <td class="text-left">
                          <asp:RequiredFieldValidator ID="NameFieldValidator1" runat="server" ControlToValidate="NewNameTB" ErrorMessage="Name cannot be blank!" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                      </td>
                  </tr>
                  <tr>
                      <td style="height:40px" class="auto-style4">Phone:</td>
                      <td><asp:TextBox ID="NewPhoneTB" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                      <td class="text-left"></td>
                  </tr>
                  <tr>
                      <td style="height:40px" class="auto-style4">Street:</td>
                      <td><asp:TextBox ID="NewStrTB" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                      <td class="text-left"></td>
                  </tr>
                  <tr>
                      <td style="height:40px" class="auto-style4">City:</td>
                      <td><asp:TextBox ID="NewCityTB" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                      <td class="text-left"></td>
                  </tr>
                  <tr>
                      <td style="height:40px" class="auto-style4">ZipCode:</td>
                      <td><asp:TextBox ID="NewZipTB" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                      <td class="text-left">
                          <asp:RegularExpressionValidator ID="ZipExpressionValidator1" runat="server" ControlToValidate="NewZipTB" ErrorMessage="Invaild ZipCode!" ForeColor="#CC3300" ValidationExpression="[0-9]{5}"></asp:RegularExpressionValidator>
                      </td>
                  </tr>
                  <tr>
                      <td style="height:40px" class="auto-style4">State:<asp:DropDownList ID="DropDownListNewSta" runat="server" CssClass="fom">
                          <asp:ListItem>Select State</asp:ListItem>
                          <asp:ListItem>MA</asp:ListItem>
                          <asp:ListItem>CA</asp:ListItem>
                          <asp:ListItem>FL</asp:ListItem>
                          <asp:ListItem>TX</asp:ListItem>
                          <asp:ListItem></asp:ListItem>
                          </asp:DropDownList></td>
                      <td class="text-left">Country:<asp:DropDownList ID="DropDownListNewCoun" runat="server">
                          <asp:ListItem>Select Country</asp:ListItem>
                          <asp:ListItem>United States</asp:ListItem>
                          <asp:ListItem>United Kingdom</asp:ListItem>
                          <asp:ListItem>P.R.China</asp:ListItem>
                          <asp:ListItem>Japan</asp:ListItem>
                          <asp:ListItem>France</asp:ListItem>
                          <asp:ListItem></asp:ListItem>
                          </asp:DropDownList></td>
                      <td class="text-left"></td>
                  </tr>
                  <tr>
                      <td>&nbsp;</td>
                      <td>
                          &nbsp;</td>
                      <td class="text-left">
                          &nbsp;</td>
                  </tr>
                  <tr>
                    <td class="text-right">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Button ID="UpdataBtn" runat="server" OnClick="UpdateBtn_Click" Text="Update" Width="80px" CssClass="btn btn-large btn-primary"/>&nbsp;
                    </td>
                    <td class="text-left">
                          &nbsp;</td>
                </tr>
              </table>
       </div>
    <hr />
        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center">
                <asp:Image ID="Image3" runat="server" Height="35px" ImageUrl="~/Images/education.png" Width="40px" />
&nbsp;Educations</h3>            
            <br />
            <table class="tableEdit2">
                <tr>
                    <td class="auto-style3">
                        University:
                        <asp:TextBox ID="NewUnivTB1" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox>
                    </td>
                    <td>
                        <div class="text-left">
                        Year:
                        </div>
                        <asp:TextBox ID="NewYearTB1" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-right">
                        <br />
                        <asp:DropDownList ID="DropDownListMajor1" runat="server" Width="150px" CssClass="form-control">
                            <asp:ListItem>Select Major</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                            <asp:ListItem>CE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        University:
                        <asp:TextBox ID="NewUnivTB2" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox>
                    </td>
                    <td>
                        <div class="text-left">
                        Year:
                        </div>
                        <asp:TextBox ID="NewYearTB2" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-right">
                        <br />
                        <asp:DropDownList ID="DropDownListMajor2" runat="server" Width="150px" CssClass="form-control">
                            <asp:ListItem>Select Major</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                            <asp:ListItem>CE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        University:
                        <asp:TextBox ID="NewUnivTB3" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox>
                    </td>
                    <td>
                        <div class="text-left">
                        Year:
                        </div>
                        <asp:TextBox ID="NewYearTB3" runat="server" Width="150px" CssClass="form-control" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-right">
                        <br />
                        <asp:DropDownList ID="DropDownListMajor3" runat="server" Width="150px" CssClass="form-control">
                            <asp:ListItem>Select Major</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                            <asp:ListItem>CE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="UpdateBtn2" runat="server" Width="80px" Text="Update" OnClick="UpdateBtn2_Click" CssClass="btn btn-large btn-primary"/>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
      <hr style="width:100%" />

        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center">
                <asp:Image ID="Image4" runat="server" Height="32px" ImageUrl="~/Images/skill.png" Width="32px" />
&nbsp;Skills/Interests</h3>
            <br />
            <table class="tableEdit3">
                <tr>
                    <td style="height:40px" class="auto-style4">Skill1:</td>
                    <td><asp:TextBox ID="Skill1TB" runat="server"  Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height:40px" class="auto-style4">Skill2:</td>
                    <td><asp:TextBox ID="Skill2TB" runat="server"  Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height:40px" class="auto-style4">Skill3:</td>
                    <td><asp:TextBox ID="Skill3TB" runat="server"  Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="height:40px" class="auto-style4">Skill4:</td>
                    <td><asp:TextBox ID="Skill4TB" runat="server"  Width="150px" CssClass="form-control" Height="25px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;&nbsp;</td>
                    <td class="auto-style2">&nbsp;&nbsp;</td>
                </tr>
                                <tr>
                    <td class="text-right">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="UpdateBtn3" runat="server" Width="80px" Text="Update" OnClick="UpdateBtn3_Click" CssClass="btn btn-large btn-primary" />
                    </td>
                    <td>
                        &nbsp; &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="text-right"><asp:Button ID="BackBtn" runat="server"  Text="Back" Width="80px" OnClick="BackBtn_Click" CssClass="btn btn-large btn-primary" /></td>
                    <td></td>
                </tr>
            </table>
        </div>
    <hr />

    <asp:SqlDataSource ID="editprofileSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT id, UserName, Password, Email, Phone, Street, City, State, ZipCode, Country, University_1, University_2, University_3, Major_1, Major_2, Major_3, Year_1, Year_2, Year_3, Skill_1, Skill_2, Skill_3, Skill_4 FROM Profiles" UpdateCommand="UPDATE Profiles SET FullName = @newname, Phone = @newphone, Street = @newstr, City = @newcity, State = @newstate, ZipCode = @newzip, Country = @newcountry WHERE (Email = @email)">
               <UpdateParameters>
                   <asp:ControlParameter ControlID="NewNameTB" Name="newname" PropertyName="Text" />
                   <asp:ControlParameter ControlID="NewPhoneTB" Name="newphone" PropertyName="Text" />
                   <asp:ControlParameter ControlID="NewStrTB" Name="newstr" PropertyName="Text" />
                   <asp:ControlParameter ControlID="NewCityTB" Name="newcity" PropertyName="Text" />
                   <asp:ControlParameter ControlID="DropDownListNewSta" Name="newstate" PropertyName="SelectedValue" />
                   <asp:ControlParameter ControlID="NewZipTB" Name="newzip" PropertyName="Text" />
                   <asp:ControlParameter ControlID="DropDownListNewCoun" Name="newcountry" PropertyName="SelectedValue" />
                   <asp:SessionParameter Name="email" SessionField="Applicant" />
               </UpdateParameters>
           </asp:SqlDataSource>
    <asp:SqlDataSource ID="editprofileSql2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT Email, University_1, Year_1, Major_1, University_2, Year_2, Major_2, University_3, Year_3, Major_3 FROM Profiles WHERE (Email = @email)" UpdateCommand="UPDATE Profiles SET University_1 = @newuniv1, Year_1 = @newyear1, Major_1 = @newmajor1, University_2 = @newuniv2, Year_2 = @newyear2, Major_2 = @newmajor2, University_3 = @newuniv3, Year_3 = @newyear3, Major_3 = @newmajor3 WHERE (Email = @email)">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="new" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="NewUnivTB1" Name="newuniv1" PropertyName="Text" />
            <asp:ControlParameter ControlID="NewYearTB1" Name="newyear1" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownListMajor1" Name="newmajor1" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="NewUnivTB2" Name="newuniv2" PropertyName="Text" />
            <asp:ControlParameter ControlID="NewYearTB2" Name="newyear2" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownListMajor2" Name="newmajor2" PropertyName="SelectedValue" />
            <asp:ControlParameter ControlID="NewUnivTB3" Name="newuniv3" PropertyName="Text" />
            <asp:ControlParameter ControlID="NewYearTB3" Name="newyear3" PropertyName="Text" />
            <asp:ControlParameter ControlID="DropDownListMajor3" Name="newmajor3" PropertyName="SelectedValue" />
            <asp:SessionParameter Name="email" SessionField="Applicant" />
        </UpdateParameters>
        </asp:SqlDataSource>
    <asp:SqlDataSource ID="editprofileSql3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT Email, Skill_1, Skill_2, Skill_3, Skill_4 FROM Profiles WHERE (Email = @email)" UpdateCommand="UPDATE Profiles SET Skill_1 = @newskill1, Skill_2 = @newskill2, Skill_3 = @newskill3, Skill_4 = @newskill4 WHERE (Email = @email)">
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="new" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="Skill1TB" Name="newskill1" PropertyName="Text" />
            <asp:ControlParameter ControlID="Skill2TB" Name="newskill2" PropertyName="Text" />
            <asp:ControlParameter ControlID="Skill3TB" Name="newskill3" PropertyName="Text" />
            <asp:ControlParameter ControlID="Skill4TB" Name="newskill4" PropertyName="Text" />
            <asp:SessionParameter Name="email" SessionField="Applicant" />
        </UpdateParameters>
        </asp:SqlDataSource>
</asp:Content>

