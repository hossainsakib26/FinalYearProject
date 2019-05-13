<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="CategoryBooks.aspx.cs" Inherits="CategoryBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <!-- /#wrapper -->
            <div class="wrapper">
                <!-- Page Content -->
                <div id="page-wrapper">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12">
                                <h1 class="page-header">Book Category</h1>
                                <hr class="featurette-divider">
                            </div>
                            <div class="col-lg-11">
                                <h4 class="card-header text-center">Select Your Category</h4>
                                <asp:DropDownList CssClass="form-control" ID="DropDownListCategory" Width="400px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListCategory_SelectedIndexChanged"></asp:DropDownList>
                                <hr class="ui-menu-divider" />

                                <div class="col-lg-8">
                                    <p>
                                        <a>Item In Cart:</a><asp:Label ID="lblInCart" runat="server" Text=""></asp:Label>
                                    </p>
                                    <p>
                                        <asp:HyperLink ID="HyperLinkShowCart" CssClass="glyphicon glyphicon-shopping-cart btn btn-info btn-lg" runat="server" NavigateUrl="~/CartItems.aspx">Show Cart</asp:HyperLink>
                                    </p>
                                    <p>
                                        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
                                            <ItemTemplate>
                                                <table class="auto-style3">
                                                    <tr>
                                                        <td colspan="2" class="auto-style1">
                                                            <asp:Image ID="Image1" runat="server" Height="73px" ImageUrl='<%# Eval("ISBN","./Users/Admin/myHandler.ashx?id={0}") %>' Width="118px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">ISBN:</td>
                                                        <td>
                                                            <asp:Label ID="LabelISBN" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Name:</td>
                                                        <td>
                                                            <asp:Label ID="LabelName" runat="server" Text='<%# Eval("BookName") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Category:</td>
                                                        <td>
                                                            <asp:Label ID="LabelCategory" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Quantity:</td>
                                                        <td>
                                                            <asp:DropDownList ID="drpQuantity" runat="server">
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                                <asp:ListItem>5</asp:ListItem>
                                                                <asp:ListItem>6</asp:ListItem>
                                                                <asp:ListItem>7</asp:ListItem>
                                                                <asp:ListItem>8</asp:ListItem>
                                                                <asp:ListItem>9</asp:ListItem>
                                                                <asp:ListItem>10</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Author:</td>
                                                        <td>
                                                            <asp:Label ID="LabelAuthor" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Publisher:</td>
                                                        <td>
                                                            <asp:Label ID="LabelPublisher" runat="server" Text='<%# Eval("PublisherName") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Price:</td>
                                                        <td>
                                                            <asp:Label ID="LabelPrice" runat="server" Text='<%# Eval("Price","{0: .00}") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style5">Publish Date:</td>
                                                        <td>
                                                            <asp:Label ID="LabelPublishDate" runat="server" Text='<%# Eval("PublishDate","{0:yyyy/MM/dd}") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" class="auto-style1">
                                                            <asp:Button ID="btnCart" runat="server" Text="Add to Cart" CommandName="cc" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:DataList>
                                    </p>

                                </div>
                                <br />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
