<%@ Page Title="" Language="C#" MasterPageFile="~/Applicant.master" AutoEventWireup="true" CodeFile="Applicant_Home.aspx.cs" Inherits="aspx_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript">
        function warning() {
            alert("Please Log Out First Before Login in!");
        }
    </script>
    <style>

        .HomePanel {
            position: relative;
            margin: auto;
        }

        .btnHome {
            position: relative;
            margin: auto;
        }

    </style>
    <asp:Panel ID="Panel1" runat="server" CssClass="HomePanel">
        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
            <asp:Image ID="ImageHome" runat="server" Height="600px" ImageAlign="Middle" ImageUrl="~/Images/applicant_home.jpg" Width="900px" />
        </asp:Panel>
        <br />
        <div class="btnHome" style="top: 0px; left: 0px; width: 420px">
            <asp:Button ID="RegBtn" runat="server" Height="50px" OnClick="RegBtn_Click" Text="Register" Width="200px" CssClass="btn btn-large btn-primary" />
            &nbsp;
            <asp:Button ID="LoginBtn" runat="server" Height="50px" OnClick="LoginBtn_Click" Text="Login in" Width="200px" CssClass="btn btn-large btn-primary" />
        </div>
    </asp:Panel>

</asp:Content>

