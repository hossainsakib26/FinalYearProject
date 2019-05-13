<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddEmployee.aspx.cs" Inherits="Users_Admin_AddEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 228px;
            text-align: right;
        }

        .auto-style4 {
            text-align: center;
        }
        .auto-style5 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Add Employee
            </h1>

        </div>
    </div>
    <div class="col-lg-7">
        <table class="table table-striped table-bordered table-hover">
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:Label ID="lblConfirmation" runat="server"></asp:Label>
                &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">First Name:</td>
                <td class="auto-style4">
                    <asp:textbox class="form-control" id="txtFirstName" runat="server" width="252px"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td class="auto-style4">
                    <asp:textbox class="form-control" id="txtLastName" runat="server" width="252px"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email:</td>
                <td class="auto-style5">
                    <asp:textbox class="form-control" id="txtEmail" runat="server" width="252px"></asp:textbox>
                    <div class="auto-style5">
                        <br />
                        <asp:Label ID="lblExistEmail" runat="server"></asp:Label>
                    </div>
                </td>
            </tr>
           <%-- <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    
                    <asp:textbox class="form-control" id="txtpassword" runat="server" width="252px"></asp:textbox>
                </td>
            </tr>--%>
            <tr>
                <td class="auto-style3">Gender:</td>
                <td class="auto-style4">
                    <asp:dropdownlist id="DropDownListGender" class="form-control" runat="server" height="40px" width="256px">
                        <asp:ListItem Class="dropdown-item-text">Male</asp:ListItem>
                        <asp:ListItem Class="dropdown-item-text">Female</asp:ListItem>
                    </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Number:</td>
                <td class="auto-style4">
                    <asp:textbox class="form-control" id="txtPhoneNUmber" runat="server" width="252px"></asp:textbox>
                </td>
            </tr>
           <tr>
                <td class="auto-style3">Type:</td>
                <td class="auto-style4">
                    <asp:dropdownlist id="DropDownList2" class="form-control" runat="server" height="40px" width="256px">
                        <asp:ListItem Class="dropdown-item-text">Admin</asp:ListItem>
                        <asp:ListItem Class="dropdown-item-text">Employee</asp:ListItem>
                    </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" colspan="2">
                    <asp:button class="btn btn-primary" id="btnAddEmployee" runat="server" text="Add Employee" onclick="btnAddEmployee_Click" />
                    &nbsp;
                    </td>
            </tr>
        </table>
    </div>


</asp:Content>

