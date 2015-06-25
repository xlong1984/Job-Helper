<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Company.master" AutoEventWireup="true" CodeFile="QViewResults.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="row">
        <div class="col-xs-1">

        </div>
        <div class="col-xs-5">
            <h3><asp:Image ID="TitleImg" runat="server" ImageUrl="~/Images/Get-Answers.png" Height="80px" ImageAlign="Middle" Width="80px"/>&nbsp;Review Questionnaire Results:</h3>            
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-xs-3">
        </div>
        <div class="col-xs-7">
           
            <table>
                <tr>
                    <td style="height:50px">
           
        <p class="text-center" style="width:200px">Question_1:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label1" runat="server" Text="Label" Width="250px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_2:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label2" runat="server" Text="Label" Width="250px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_3:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label3" runat="server" Text="Label" Width="250px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_4:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label4" runat="server" Text="Label" Width="250px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_5:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label5" runat="server" Text="Label" Width="250px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_6:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label6" runat="server" Text="Label" Width="250px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_7:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label7" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_8:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label8" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_9:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label9" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_10:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label10" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_11:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label11" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_12:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label12" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_13:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label13" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_14:</p>
                    </td>
                    <td class="text-left"><asp:Label ID="Label14" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="height:50px">
     <p class="text-center" style="width:200px">Question_15:</p>
    
                    </td>
                    <td class="text-left"><asp:Label ID="Label15" runat="server" Text="Label" Width="400px" CssClass="form-control"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td></td>
                </tr>
                <tr>
                    <td style="text-align: center"></td>
                    <td style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="BackBtn" runat="server" Text="Back" OnClick="BackBtn_Click" CssClass="btn btn-large btn-primary" Width="100px"></asp:Button></td>
                </tr>
            </table>
    
        </div>
        
    </div>
    <asp:SqlDataSource ID="QuestionnaireSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" InsertCommand="INSERT INTO Answersheet(Username, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15) VALUES (@username, @q1, @q2, @q3, @q4, @q5, @q6, @q7, @q8, @q9, @q10, @q11, @q12, @q13, @q14, @q15)" SelectCommand="SELECT Id, Username, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15 FROM Answersheet WHERE (Username = @username)" >
        <InsertParameters>
            <asp:SessionParameter Name="username" SessionField="Username" />
            <asp:ControlParameter ControlID="Label1" Name="q1" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label2" Name="q2" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label3" Name="q3" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label4" Name="q4" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label5" Name="q5" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label6" Name="q6" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label7" Name="q7" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label8" Name="q8" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label9" Name="q9" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label10" Name="q10" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label11" Name="q11" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label12" Name="q12" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label13" Name="q13" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label14" Name="q14" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label15" Name="q15" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="Applicant_1" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

