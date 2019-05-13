<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="OwnData.aspx.cs" Inherits="EditOwnData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        width: 273px;
        text-align: center;
    }
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <table class="auto-style3">
                <tr>
                    <td class="auto-style2">First Name-</td>
                    <td>
                        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Last Name-</td>
                    <td>
                        <asp:Label ID="lblLastName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender-</td>
                    <td>
                        <asp:Label ID="lblGender" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email-</td>
                    <td>
                        <asp:Label ID="lblEmail" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone Number-</td>
                    <td>
                        <asp:Label ID="lblPhone" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">
                        <asp:ImageButton ID="ibtnUpdate" runat="server" Height="30px" ImageUrl="~/Icon/iconfinder_Folder_folder_up_folder_upload_update_folder_upload_1886931.png" Width="30px" OnClick="ibtnUpdate_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ibtnBack" runat="server" Height="30px" ImageUrl="~/Icon/Back1.png" Width="30px" OnClick="ibtnBack_Click" />
                    </td>
                </tr>
            </table>

        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

