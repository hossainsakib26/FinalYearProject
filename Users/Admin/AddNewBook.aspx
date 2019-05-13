<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddNewBook.aspx.cs" Inherits="Users_Admin_AddNewBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }

        .auto-style2 {
            text-align: right;
            width: 285px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
            <div class="container-fluid">
                <!-- Page Content -->
                <h1>Add New Book</h1>
                <hr>
            </div>
            <div class="card mb-3">
                <div class="card-header">
                    <i class="fas fa-table"></i>
                    Add Your new Book
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table class="table table-bordered" id="dataTable" style="width: 72%">
                            <tr>
                                <td class="auto-style1" colspan="2">
                                    <asp:Label ID="lblMessage" CssClass="form-control text-primary" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Book ISBN-</strong></td>
                                <td>
                                    <asp:TextBox ID="txtBookISBN" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Need ISBN" ControlToValidate="txtBookISBN"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Book Name-</strong></td>
                                <td>
                                    <asp:TextBox ID="txtBookName" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Add Your Book Name" ControlToValidate="txtBookName"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Category Name-</strong></td>
                                <td>
                                    <asp:DropDownList ID="drpCatID" CssClass="form-control" runat="server" OnSelectedIndexChanged="drpCatID_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>SubCategory Name-</strong></td>
                                <td>
                                    <asp:DropDownList ID="drpSbCat" CssClass="form-control" runat="server" AutoPostBack="true"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Photo-</strong></td>
                                <td>
                                    <asp:Image ID="Image1" runat="server" Height="70px" Width="70px" CssClass="ppp" />
                                    <br />
                                    <asp:Label ID="lblPhoto" runat="server"></asp:Label>
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" onchange="readURL(this);" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Price-</strong></td>
                                <td>
                                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Add book Price" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Quantity-</strong></td>
                                <td>
                                    <asp:TextBox ID="txtquantity" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Add Quantity" ControlToValidate="txtquantity"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Publisher Name-</strong></td>
                                <td>
                                    <asp:DropDownList ID="drpPubID" CssClass="form-control" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Author-</strong></td>
                                <td>
                                    <asp:DropDownList ID="drpAuID" CssClass="form-control" runat="server"></asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2"><strong>Publish Date-</strong></td>
                                <td>
                                    <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Add Your Date" ControlToValidate="txtDate"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tfoot>
                                <tr>
                                    <td class="auto-style2">
                                        <strong>
                                            <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary" OnClick="btnInsert_Load" />
                                        </strong>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-danger" Text="Cancel" OnClick="btnCancel_Click" />
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
</asp:Content>

