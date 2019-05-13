<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="UpdateOwnData.aspx.cs" Inherits="UpdateOwnData" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
        border: 3px solid #333399;
        background-color: #c0c0c0;
    }
    .auto-style2 {
        width: 253px;
        text-align: center;
    }
    .auto-style3 {
        width: 255px;
        text-align: center;
    }
    .auto-style4 {
        width: 255px;
        height: 26px;
        text-align: center;
    }
    .auto-style5 {
        width: 253px;
        height: 26px;
        text-align: center;
    }
    .auto-style6 {
        text-align: center;
    }
    .auto-style7 {
        width: 255px;
        text-align: center;
        height: 29px;
    }
    .auto-style8 {
        width: 253px;
        height: 29px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
    <tr>
        <td class="auto-style7">First Name-</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Last Name- </td>
        <td class="auto-style2">
            <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Email-</td>
        <td class="auto-style2">
            <asp:Label ID="lblEmail" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">Old Password-</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtOldPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOldPass" ErrorMessage="Field is Required by this systm vro"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">New Password-</td>
        <td class="auto-style2">
            <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPass" ErrorMessage="Field is Required by this systm vro"></asp:RequiredFieldValidator>
&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">Phone Number-</td>
        <td class="auto-style5">
            <asp:Label ID="lblPhone" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <asp:ImageButton ID="ibtnConfirm" runat="server" Height="30px" ImageUrl="~/Icon/Confirm.png" Width="30px" OnClick="ibtnConfirm_Click" />
&nbsp;<asp:ImageButton ID="ibtnCancel" runat="server" Height="30px" ImageUrl="~/Icon/iconfinder_Delete_1493279.png" Width="30px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </td>
    </tr>
</table>

</asp:Content>

