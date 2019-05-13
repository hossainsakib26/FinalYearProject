<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ModifyBook.aspx.cs" Inherits="Users_Admin_ModifyBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    ISBN :    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <table class="w-100">
                            <tr>
                                <td>Book Name</td>
                                <td>
                                    <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Category ID</td>
                                <td>
                                    <asp:DropDownList ID="drpCatID" runat="server"></asp:DropDownList>
                                    <%--<asp:TextBox ID="txtPubId" runat="server"></asp:TextBox>--%>
                                </td>
                            </tr>

                            <tr>
                                <td>SubCategory ID</td>
                                <td>
                                    <asp:DropDownList ID="drpSbCat" runat="server"></asp:DropDownList>
                                    <%--<asp:TextBox ID="txtAuID" runat="server"></asp:TextBox>--%>
                                </td>
                            </tr>

                            <%--<input type="date" name="PublishDate" />--%>                           
                            <tr>
                                <td class="auto-style1">Photo</td>
                                <td class="auto-style1">
                                    <asp:Image ID="Image1" runat="server" Height="70px" Width="70px" CssClass="ppp" />
                                    <br />
                                    <asp:Label ID="lblPhoto" runat="server"></asp:Label>
                                    <br />
                                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="readURL(this);" />
                                </td>
                            </tr>
                            <%--<asp:TextBox ID="txtAuID" runat="server"></asp:TextBox>--%>

                            <tr>
                                <td>Price</td>
                                <td>
                                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                                </td>
                            </tr>

                            <tr>
                                <td>Publisher ID</td>
                                <td>
                                    <asp:DropDownList ID="drpPubID" runat="server"></asp:DropDownList>
                                    <%--<input type="date" name="PublishDate" />--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Author ID</td>
                                <td>
                                    <asp:DropDownList ID="drpAuID" runat="server"></asp:DropDownList>
                                    <%--<asp:TextBox ID="txtAuID" runat="server"></asp:TextBox>--%>
                                </td>
                            </tr>
                            <tr>
                                <td>Publish Date</td>
                                <td>

                                    <%--<input type="date" name="PublishDate" />--%>
                                    <asp:TextBox ID="txtDate" runat="server" CssClass="myPicker"></asp:TextBox>

                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                                    <asp:Button ID="btnDelete" runat="server" OnClick="btnDelete_Click" Text="Delete" />
                                </td>
                            </tr>
                        </table>
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

