<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderReport.aspx.cs" Inherits="Users_Admin_OrderReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 3px solid #333399;
            background-color: #c0c0c0;
        }
        .auto-style2 {
            width: 156px;
            text-align: right;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <input id="Button1" type="button" value="Print" onclick="printDiv('report')" />

    <div id="report">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">OrderId:</td>
            <td class="auto-style3">
                <asp:Label ID="lblOrderId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">GrandTotal:</td>
            <td class="auto-style3">
                <asp:Label ID="lblGrandTotal" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">UserID:</td>
            <td class="auto-style3">
                <asp:Label ID="lblUserId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">UserName:</td>
            <td class="auto-style3">
                <asp:Label ID="lblUserName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">DelivaryStatus:</td>
            <td class="auto-style3">
                <asp:Label ID="lblDelivaryStatus" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Order Date:</td>
            <td class="auto-style3">
                <asp:Label ID="lblOrderDate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Person to Receive:</td>
            <td class="auto-style3">
                <asp:Label ID="lblRecvPerson" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Person Numer</td>
            <td class="auto-style3">
                <asp:Label ID="lblPersonPhoneNumber" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </div>
</asp:Content>

