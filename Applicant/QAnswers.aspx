<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="QAnswers.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Font-Bold="True" Width="500px">
         <p style="font-size: x-large" ><strong>Answersheet:</strong></p>
    <p class="text-left">Q1:<asp:Label ID="Label1" runat="server" Text="Label" Width="247px"></asp:Label>
    </p>
     <p class="text-left">Q2: <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q3: <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q4: <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q5: <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q6: <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q7: <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q8: <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q9: <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q10: <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q11: <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q12: <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q13: <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q14: <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
    </p>
     <p class="text-left">Q15: <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
    </p>
    </asp:Panel>
    <asp:Button ID="Button_Submit" runat="server" Text="Submit" OnClick="Button_Submit_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" InsertCommand="INSERT INTO Answersheet(Username, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15)VALUES(@Username, @Q1, @Q2, @Q3, @Q4, @Q5, @Q6, @Q7, @Q8, @Q9, @Q10, @Q11, @Q12, @Q13, @Q14, @Q15)" SelectCommand="SELECT * FROM [Answersheet]">
        <InsertParameters>
            <asp:SessionParameter Name="Username" SessionField="Applicant" />
            <asp:ControlParameter ControlID="Label1" Name="Q1" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label2" Name="Q2" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label3" Name="Q3" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label4" Name="Q4" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label5" Name="Q5" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label6" Name="Q6" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label7" Name="Q7" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label8" Name="Q8" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label9" Name="Q9" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label10" Name="Q10" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label11" Name="Q11" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label12" Name="Q12" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label13" Name="Q13" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label14" Name="Q14" PropertyName="Text" />
            <asp:ControlParameter ControlID="Label15" Name="Q15" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
    </asp:Content>

