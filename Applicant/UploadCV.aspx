<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="UploadCV.aspx.cs" Inherits="aspx_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script runat="server">
    protected void Submit_CV_Click(object sender, EventArgs e)
    {
        if (CVUpload.HasFile)
            
            try
            {
                string TargetLocation = Server.MapPath("~/App_Data/Files/");
                CVUpload.SaveAs(TargetLocation + CVUpload.FileName);
                InfoLabel.Visible = true;
                InfoLabel2.Text = "File name: " +
                     CVUpload.PostedFile.FileName + "<br>" +
                     CVUpload.PostedFile.ContentLength + " kb<br>" +
                     "Content type: " +
                     CVUpload.PostedFile.ContentType;
                InfoLabel2.Visible = true;
                ResumeUrlLabel.Text = "~/App_Data/Files/" + CVUpload.FileName;
                ResumeSql.Update();
            }
            catch (Exception ex)
            {
                InfoLabel2.Visible = true;
                InfoLabel2.Text = "ERROR: " + ex.Message.ToString();
            }
        else
        {
            InfoLabel.Visible = true;
            InfoLabel.Text = "You have not specified a file.";
        }
    }
</script>
    <style>
       .cvtable {
             margin: auto;
             position: relative;
             top: 0px;
             left: -28px;
             width: 360px;
         }
        .auto-style1 {
            width: 150px;
        }
        .auto-style2 {
            width: 150px;
            text-align: center;
        }
    </style>
    <p style="color:#CC3300;text-align:center">Suggestion:Please Change the filename to "Your Name".pdf or doc before uploading!</p>
     <div id="container">
           <table class="cvtable">
               <tr>
                   <td class="auto-style2">Choose your CV:</td>
                   <td>
                        <asp:FileUpload ID="CVUpload" runat="server" />
                   </td>
               </tr>
               <tr>
                   <td class="auto-style2"></td>
                   <td>&nbsp;</td>
               </tr>
               <tr>
                   <td class="auto-style1">&nbsp;</td>
                   <td><asp:Button ID="Submit_CV" runat="server" Text="Submit" OnClick="Submit_CV_Click" CssClass="btn btn-large btn-primary" Width="80px" />&nbsp;<asp:Button ID="BackBtn" runat="server" Text="Back" OnClick="BackBtn_Click" CssClass="btn btn-large btn-primary" Width="80px" /></td>
               </tr>
           </table>
    </div>
    <div style="text-align: center">
        <asp:Label ID="InfoLabel" runat="server" Text="Upload Successfully!" ForeColor="#CC3300"></asp:Label>
        <br />
        <asp:Label ID="InfoLabel2" runat="server" Text="Upload Failed!" ForeColor="#CC3300"></asp:Label>
        <asp:SqlDataSource ID="ResumeSql" runat="server" ConnectionString="<%$ ConnectionStrings:ApplicantConnectionString %>" SelectCommand="SELECT Resume FROM Profiles WHERE (Email = @email)" InsertCommand="INSERT INTO Profiles(Resume) VALUES (@resumeurl)" UpdateCommand="UPDATE Profiles SET Resume = @resume WHERE (Email = @email)">
            <InsertParameters>
                <asp:ControlParameter ControlID="ResumeUrlLabel" Name="resumeurl" PropertyName="Text" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="Applicant" />
            </SelectParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="ResumeUrlLabel" Name="resume" PropertyName="Text" />
                <asp:SessionParameter Name="email" SessionField="Applicant" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="ResumeUrlLabel" runat="server" Visible="False"></asp:Label>
    </div>

</asp:Content>

