<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditOrders.aspx.cs" Inherits="Users_Admin_EditOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 187px;
            text-align: right;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="col-lg-12">
            <h1>Customer Orders</h1>
            <hr class="featurette-divider">
            <br />
            <div class="table">
                
                <table class="table table-responsive">
                    <tr>
                        <td class="auto-style1">Order ID:</td>
                        <td>
                            <asp:Label ID="lblOrderId" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">User ID:</td>
                        <td>
                            <asp:Label ID="lblUserID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">User Name:</td>
                        <td>
                            <asp:Label ID="lblUserName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Order Date:</td>
                        <td>
                            <asp:Label ID="lblOrderDate" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Grand Total:</td>
                        <td>
                            <asp:Label ID="lblGrandTotal" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">Delivery Status:</td>
                        <td>
                            <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server" Width="153px">
                                <asp:ListItem>Deliver</asp:ListItem>
                                <asp:ListItem>Undeliver</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" colspan="2">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
                
            </div>
        </div>
    </div>
</asp:Content>

