<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Company_position.aspx.cs" Inherits="Company_Company_position" MasterPageFile="../MasterPage_Company.master" %>

<asp:Content ID="Content_Company_position" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
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
             color: black;
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


    <div class="container">
        <div class="center_container">
                  <h2>Post a Job Position &nbsp;&nbsp;&nbsp; <a href="Company_edit_positions.aspx">View Existed</a> </h2>
            <label>Position Name</label>    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Position name is required!" ControlToValidate="Textbox_job_position" ForeColor="#996600"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Textbox_job_position" Cssclass="form-control" runat="server"   />
            <br />
            <label>Position ID</label>    
            <asp:TextBox ID="Textbox_job_id" Cssclass="form-control" runat="server"  />
            <br />
            <h3>Contact Information</h3>
            <br />
            <label>Name</label>    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Contact people's name is required!" ControlToValidate="Textbox_person_name" ForeColor="#996600"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Textbox_person_name" Cssclass="form-control" runat="server"  />
            <br />
            <label>Email Address</label>    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Position name is required!" ControlToValidate="Textbox_person_email" ForeColor="#996600"></asp:RequiredFieldValidator>
            <asp:TextBox ID="Textbox_person_email" Cssclass="form-control" runat="server"  />
            <br />
            <h3>Job Description</h3>
            <asp:TextBox ID="Textbox_job_description" Cssclass="form-control" runat="server" TextMode="MultiLine" Rows="10" />
           
            <br />
            <asp:CheckBox ID="CheckBox_Questionnaire" runat="server" Text="  Include a questionnaire for this position"/>
            <br />
            <asp:Button ID="submit" CssClass="but but_red" runat="server" Text="SUBMIT" OnClick="submit_Click" />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT * FROM [Posi]" InsertCommand="INSERT INTO [Posi] ([Orgnization], [Position], [PositionID], [Name], [EmailAddress], [Description]) VALUES (@Orgnization, @Position, @PositionID, @Name, @EmailAddress, @Description)" UpdateCommand="UPDATE [Posi] SET [Orgnization] = @Orgnization, [Position] = @Position, [PositionID] = @PositionID, [Name] = @Name, [EmailAddress] = @EmailAddress, [Description] = @Description WHERE [Id] = @Id" DeleteCommand="DELETE FROM [Posi] WHERE [Id] = @Id" >
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:SessionParameter Name="Orgnization" SessionField="Orgnization" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_job_position" Name="Position" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_job_id" Name="PositionID" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_person_name" Name="Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_person_email" Name="EmailAddress" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_job_description" Name="Description" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:SessionParameter Name="Orgnization" SessionField="Orgnization" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_job_position" Name="Position" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_job_id" Name="PositionID" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_person_name" Name="Name" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_person_email" Name="EmailAddress" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="Textbox_job_description" Name="Description" PropertyName="Text" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
                </div>
    <br />
    </div>
</asp:Content>