<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Company.master" AutoEventWireup="true" CodeFile="Applicant_ProfilePublic.aspx.cs" Inherits="aspx_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
      function warning() {
                alert("This applicant hasn't uploaded a CV!");
       }
    </script>
    <style>
        .tableEdit {
          position: relative;
          margin: auto auto auto 20%;
          width: 80%;
          table-layout: fixed;
            top: 4px;
            left: -22px;
        }
        .auto-style1 {
            text-align: center;
            width: 296px;
        }
        .auto-style2 {
            width: 71px;
            height: 21px;
        }
        .auto-style4 {
            text-align: left;
            height: 24px;
        }
        .tdstyle5 {
            width: 84px;
            height: 25px;
        }
        .auto-style6 {
            text-align: left;
            height: 25px;
        }
    .auto-style7 {
        width: 84px;
        height: 24px;
    }
        </style>
      <div id="container" class="row">
           <div class="col-md-8 col-md-offset-2">

               <div class="col-md-8">
                   <h2 class="text-center">&nbsp;&nbsp;&nbsp; Welcome to
                       <asp:Label ID="PublicNameLabel" runat="server"></asp:Label>
                       &#39;s page!</h2>
            
               <table class="table table-striped">
                   <tr>
                       <td>
                           <asp:FormView ID="FormView4" runat="server" DataSourceID="HeadshotSql1" Height="225px">
                               <ItemTemplate>
                                   <table>
                                       <tr>
                                           <td>
                                               <asp:Image ID="PhotoImage" runat="server" Height="225px" ImageAlign="Middle" ImageUrl='<%# Bind("Photo") %>' Width="225px" />
                                           </td>
                                       </tr>
                                   </table>
                               </ItemTemplate>
                           </asp:FormView>
                           <br />
                           <asp:SqlDataSource ID="HeadshotSql1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT Photo FROM Profiles WHERE (Email = @Email)" UpdateCommand="UPDATE Profiles SET Photo = @newphoto WHERE (Email = @email)">
                               <SelectParameters>
                                   <asp:SessionParameter Name="Email" SessionField="Applicant_1" />
                               </SelectParameters>
                               <UpdateParameters>
                                   <asp:ControlParameter ControlID="PhotoUrl" Name="newphoto" PropertyName="Text" />
                                   <asp:SessionParameter Name="email" SessionField="new" />
                               </UpdateParameters>
                           </asp:SqlDataSource>
                           
                       </td>
                       <td>
                           <asp:FormView ID="FormView1" runat="server" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="ProfileSql" GridLines="Both" Height="195px" Width="250px" CellSpacing="2" DataKeyNames="id">
                               <EditItemTemplate>
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   Email:
                                   <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                   <br />
                                   Phone:
                                   <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                                   <br />
                                   Street:
                                   <asp:TextBox ID="StreetTextBox" runat="server" Text='<%# Bind("Street") %>' />
                                   <br />
                                   City:
                                   <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                   <br />
                                   State:
                                   <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                                   <br />
                                   ZipCode:
                                   <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' />
                                   <br />
                                   Country:
                                   <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                                   <br />
                                  
                                   <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </EditItemTemplate>
                               <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                      
                               <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                               <HeaderTemplate>
                                   <table class="nav-justified">
                                       <tr>
                                           <td>Basic Information:</td>
                                       </tr>
                                   </table>
                               </HeaderTemplate>
                               <InsertItemTemplate>
                                   UserName:
                                   <asp:TextBox ID="UserNameTextBox" runat="server" Text='<%# Bind("UserName") %>' />
                                   <br />
                                   Email:
                                   <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                   <br />
                                   Phone:
                                   <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                                   <br />
                                   Street:
                                   <asp:TextBox ID="StreetTextBox" runat="server" Text='<%# Bind("Street") %>' />
                                   <br />
                                   City:
                                   <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                                   <br />
                                   State:
                                   <asp:TextBox ID="StateTextBox" runat="server" Text='<%# Bind("State") %>' />
                                   <br />
                                   ZipCode:
                                   <asp:TextBox ID="ZipCodeTextBox" runat="server" Text='<%# Bind("ZipCode") %>' />
                                   <br />
                                   Country:
                                   <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                                   <br />
                                   <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                               </InsertItemTemplate>
                               <ItemTemplate>
                                   <table class="nav-justified">
                                       <tr>
                                           <td style="text-align: right; " class="tdstyle5">Name:</td>
                                           <td class="auto-style4">
                                               <asp:Label ID="UNameLabel" runat="server" Text='<%# Bind("FullName") %>' />
                                           </td>
                                           
                                       </tr>
                                       <tr>
                                           <td style="text-align: right; " class="tdstyle5">Email:</td>
                                           <td class="auto-style6">
                                               <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                                           </td>
                                           
                                       </tr>
                                       <tr>
                                           <td style="text-align: right; " class="auto-style7">Phone:</td>
                                           <td class="auto-style4" colspan="2">
                                               <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                                           </td>
                                           
                                       </tr>
                                       <tr>
                                           <td colspan="2" style="text-align:center; " class="auto-style2"><strong>Address:</strong></td>
                                       </tr>
                                       <tr>
                                           <td colspan="2" style="width: 71px;align-items:center; text-align: center;">
                                               <asp:Label ID="StrLabel" runat="server" Text='<%# Bind("Street") %>' />
                                           </td>
                                           <td>&nbsp;</td>
                                       </tr>
                          
                                   </table>
                                   <table class="nav-justified">
                                       <tr>
                                           <td style="text-align: right; width: 127px; height: 15px;">
                                               <asp:Label ID="CLabel" runat="server" style="text-align: right" Text='<%# Bind("City") %>' />
                                           </td>
                                           <td class="text-left" style="height: 20px">,<asp:Label ID="SLabel" runat="server" Text='<%# Bind("State") %>' />
                                           </td>
                                       </tr>
                                   </table>
                                   <table class="nav-justified">
                                       <tr>
                                           <td style="text-align: right; width: 104px">
                                               <asp:Label ID="ZLabel" runat="server" Text='<%# Bind("ZipCode") %>' />
                                           </td>
                                           <td class="text-left">,<asp:Label ID="ConLabel" runat="server" Text='<%# Bind("Country") %>' /></td>
                                       </tr>
                                   </table>
                                   <br />
                               </ItemTemplate>
                               <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                               <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                           </asp:FormView>
                       </td>
                       <td>
                        <div>
                       <ul>
                            <li>
                           <h4>
                               <asp:LinkButton ID="SendMsg" runat="server" Text="Send a Message" OnClick="SendMsg_Click" ></asp:LinkButton>
                           </h4>
                            </li>
                            <li>
                            <h4>
                               <asp:LinkButton ID="ReviewCV" runat="server" Text="Review CV" OnClick="ReviewCV_Click"></asp:LinkButton>
                           </h4>
                            </li>
                           <li>
                               <h4>
                                   <asp:LinkButton ID="QResults" runat="server" Text="Questionnaire Results" OnClick="QResults_Click"></asp:LinkButton>
                                   <asp:Label ID="CVurlLabel" runat="server"></asp:Label>
                                   <asp:SqlDataSource ID="CVSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT [Resume] FROM [Profiles] WHERE ([FullName] = @FullName)">
                                       <SelectParameters>
                                           <asp:SessionParameter Name="FullName" SessionField="Username" Type="String" />
                                       </SelectParameters>
                                   </asp:SqlDataSource>
                                  
                               </h4>
                           </li>
                                 
                   </ul>
                   
               </div>
                       </td>
                   </tr>
                   </table>                
                   </div>              
           </div>
       
        <asp:SqlDataSource ID="ProfileSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" InsertCommand="INSERT INTO Profiles(University_1, Major_1, Year_1, University_2, Major_2, Year_2, University_3, Major_3, Year_3) VALUES (@newuniv1, @newmajor1, @newyear1, @newuniv2, @newmajor2, @newyear2, @newuniv3, @newmajor3, @newyear3)" SelectCommand="SELECT id, FullName, Password, Email, Phone, Street, City, State, ZipCode, Country, University_1, University_2, University_3, Major_1, Major_2, Major_3, Year_1, Year_2, Year_3, Skill_1, Skill_2, Skill_3, Skill_4, Profiles.* FROM Profiles WHERE (Email = @email)">
            <InsertParameters>
                <asp:ControlParameter ControlID="Univ1Label" Name="newuniv1" PropertyName="Text" />
                <asp:ControlParameter ControlID="Major1Label" Name="newmajor1" PropertyName="Text" />
                <asp:ControlParameter ControlID="Year1Label" Name="newyear1" PropertyName="Text" />
                <asp:ControlParameter ControlID="Univ2Label" Name="newuniv2" PropertyName="Text" />
                <asp:ControlParameter ControlID="Major2Label" Name="newmajor2" PropertyName="Text" />
                <asp:ControlParameter ControlID="Year2Label" Name="newyear2" PropertyName="Text" />
                <asp:ControlParameter ControlID="Univ3Label" Name="newuniv3" PropertyName="Text" />
                <asp:ControlParameter ControlID="Major3Label" Name="newmajor3" PropertyName="Text" />
                <asp:ControlParameter ControlID="Year3Label" Name="newyear3" PropertyName="Text" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="Applicant_1" />
            </SelectParameters>
        </asp:SqlDataSource>
        <hr/>
        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center">
                <asp:Image ID="Image2" runat="server" Height="35px" ImageUrl="~/Images/education.png" Width="40px" />
&nbsp;Educations</h3>            
            <asp:FormView ID="FormView2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ProfileSql2" ForeColor="Black" GridLines="Horizontal" Width="728px">
                <EditItemTemplate>
                    University_1:
                    <asp:TextBox ID="University_1TextBox" runat="server" Text='<%# Bind("University_1") %>' />
                    <br />
                    Year_1:
                    <asp:TextBox ID="Year_1TextBox" runat="server" Text='<%# Bind("Year_1") %>' />
                    <br />
                    Major_1:
                    <asp:TextBox ID="Major_1TextBox" runat="server" Text='<%# Bind("Major_1") %>' />
                    <br />
                    University_2:
                    <asp:TextBox ID="University_2TextBox" runat="server" Text='<%# Bind("University_2") %>' />
                    <br />
                    Year_2:
                    <asp:TextBox ID="Year_2TextBox" runat="server" Text='<%# Bind("Year_2") %>' />
                    <br />
                    Major_2:
                    <asp:TextBox ID="Major_2TextBox" runat="server" Text='<%# Bind("Major_2") %>' />
                    <br />
                    University_3:
                    <asp:TextBox ID="University_3TextBox" runat="server" Text='<%# Bind("University_3") %>' />
                    <br />
                    Year_3:
                    <asp:TextBox ID="Year_3TextBox" runat="server" Text='<%# Bind("Year_3") %>' />
                    <br />
                    Major_3:
                    <asp:TextBox ID="Major_3TextBox" runat="server" Text='<%# Bind("Major_3") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    University_1:
                    <asp:TextBox ID="University_1TextBox" runat="server" Text='<%# Bind("University_1") %>' />
                    <br />
                    Year_1:
                    <asp:TextBox ID="Year_1TextBox" runat="server" Text='<%# Bind("Year_1") %>' />
                    <br />
                    Major_1:
                    <asp:TextBox ID="Major_1TextBox" runat="server" Text='<%# Bind("Major_1") %>' />
                    <br />
                    University_2:
                    <asp:TextBox ID="University_2TextBox" runat="server" Text='<%# Bind("University_2") %>' />
                    <br />
                    Year_2:
                    <asp:TextBox ID="Year_2TextBox" runat="server" Text='<%# Bind("Year_2") %>' />
                    <br />
                    Major_2:
                    <asp:TextBox ID="Major_2TextBox" runat="server" Text='<%# Bind("Major_2") %>' />
                    <br />
                    University_3:
                    <asp:TextBox ID="University_3TextBox" runat="server" Text='<%# Bind("University_3") %>' />
                    <br />
                    Year_3:
                    <asp:TextBox ID="Year_3TextBox" runat="server" Text='<%# Bind("Year_3") %>' />
                    <br />
                    Major_3:
                    <asp:TextBox ID="Major_3TextBox" runat="server" Text='<%# Bind("Major_3") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <table class="tableEdit">
                <tr>
                    <td>
                        University:<asp:Label ID="University_1Label" runat="server" Text='<%# Bind("University_1") %>' CssClass="form-control" />
                    </td>
                    <td>
                        Year:<asp:Label ID="Year_1Label" runat="server" Text='<%# Bind("Year_1") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Major:<asp:Label ID="Major_1Label" runat="server" Text='<%# Bind("Major_1") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        University:<asp:Label ID="University_2Label" runat="server" Text='<%# Bind("University_2") %>' CssClass="form-control" />
                    </td>
                    <td>
                        Year:<asp:Label ID="Year_2Label" runat="server" Text='<%# Bind("Year_2") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Major:<asp:Label ID="Major_2Label" runat="server" Text='<%# Bind("Major_2") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td>
                        University:<asp:Label ID="University_3Label" runat="server" Text='<%# Bind("University_3") %>' CssClass="form-control" />
                    </td>
                    <td>
                        Year:<asp:Label ID="Year_3Label" runat="server" Text='<%# Bind("Year_3") %>' CssClass="form-control" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        Major:<asp:Label ID="Major_3Label" runat="server" Text='<%# Bind("Major_3") %>' CssClass="form-control" />
                    </td>
                </tr>
            </table>

                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:FormView>
            <asp:SqlDataSource ID="ProfileSql2" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT University_1, Year_1, Major_1, University_2, Year_2, Major_2, University_3, Year_3, Major_3, Email FROM Profiles WHERE (Email = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="Applicant_1" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            
        </div>
        <hr style="width:100%"/>
        <div class="col-md-8 col-md-offset-2">
            <h3 class="text-center">
                <asp:Image ID="Image3" runat="server" Height="32px" ImageUrl="~/Images/skill.png" Width="32px" />
&nbsp;Skills/Interests</h3>

            <asp:FormView ID="FormView3" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="ProfileSql3" ForeColor="Black" GridLines="Horizontal" Width="700px">
                <EditItemTemplate>
                    Skill_1:
                    <asp:TextBox ID="Skill_1TextBox" runat="server" Text='<%# Bind("Skill_1") %>' />
                    <br />
                    Skill_2:
                    <asp:TextBox ID="Skill_2TextBox" runat="server" Text='<%# Bind("Skill_2") %>' />
                    <br />
                    Skill_3:
                    <asp:TextBox ID="Skill_3TextBox" runat="server" Text='<%# Bind("Skill_3") %>' />
                    <br />
                    Skill_4:
                    <asp:TextBox ID="Skill_4TextBox" runat="server" Text='<%# Bind("Skill_4") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    Skill_1:
                    <asp:TextBox ID="Skill_1TextBox" runat="server" Text='<%# Bind("Skill_1") %>' />
                    <br />
                    Skill_2:
                    <asp:TextBox ID="Skill_2TextBox" runat="server" Text='<%# Bind("Skill_2") %>' />
                    <br />
                    Skill_3:
                    <asp:TextBox ID="Skill_3TextBox" runat="server" Text='<%# Bind("Skill_3") %>' />
                    <br />
                    Skill_4:
                    <asp:TextBox ID="Skill_4TextBox" runat="server" Text='<%# Bind("Skill_4") %>' />
                    <br />
                    Email:
                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <table class="tableEdit">
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Skill_1Label" runat="server" Text='<%# Bind("Skill_1") %>' CssClass="form-control" />
                            </td>
                            <td class="text-right">
                                <asp:Label ID="Skill_2Label" runat="server" Text='<%# Bind("Skill_2") %>' CssClass="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="Skill_3Label" runat="server" Text='<%# Bind("Skill_3") %>' CssClass="form-control" />
                            </td>
                            <td class="text-right">
                                <asp:Label ID="Skill_4Label" runat="server" Text='<%# Bind("Skill_4") %>' CssClass="form-control" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="text-right">&nbsp;</td>
                        </tr>
                    </table>
                    <br />

                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:FormView>
            <hr style="width:100%"/>
            <asp:SqlDataSource ID="ProfileSql3" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT Skill_1, Skill_2, Skill_3, Skill_4, Email FROM Profiles WHERE (Email = @email)">
                <SelectParameters>
                    <asp:SessionParameter Name="email" SessionField="Applicant_1" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
         </div>
</asp:Content>

