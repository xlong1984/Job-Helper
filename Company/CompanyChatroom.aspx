<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Company.master" AutoEventWireup="true" CodeFile="CompanyChatroom.aspx.cs" Inherits="_Default" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <style>
        .chatroom_container{
            margin-top:80px;
            margin-left:70px;

        }
        .align_left{
            text-align:left;
        }
         .but {
            display: inline-block;
            padding: 6px 12px;
            margin-bottom: 30px;
            margin-left: 5px;
            margin-top: 20px;
            font-size: 14px;
            text-align: center;
            vertical-align: middle;
            cursor: pointer;
            border-radius: 4px;
        }
        .form-control {
            display: block;
            padding: 6px 12px;
            font-size: 14px;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            text-align: left;
            width: 300px;
        }
        .but_blue {
            color:white;
            background-color:#3399FF;
            border-color:white;
        }
         .but_blue:hover {
             background-color:#1F5C99;
         }
           .but_red {
            color:white;
            background-color:#d43f3a;
            border-color:white;
        }
           .but_red:hover {
               background-color: #942C29;
           }
    </style>
    <div class="chatroom_container">
        <div class="col-lg-8 col-lg-offset-2">
    
        <table class="table">
            <tr>
                <td class="auto-style2">
                    <asp:TextBox class="form-control align_left" ID="TextBox_Content" runat="server" Height="514px" Width="764px" TextMode="MultiLine"></asp:TextBox>
                </td>          
                <td>
                    <asp:ListBox ID="ListBox1" class="form-control" runat="server" Height="514px" Width="219px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox  ID="TextBox_Message" runat="server" Width="500px"></asp:TextBox>

                    <asp:Button ID="Button_Send" class="but but_blue" runat="server" OnClick="Button_Send_Click" Text="Send" />
                </td>
                <td>
                    <asp:Button ID="Button_Logout" class="but but_red" runat="server" OnClick="Button_Logout_Click" Text="Log out" Width="180px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
    </div>
</asp:Content>


