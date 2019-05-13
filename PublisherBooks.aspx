<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="PublisherBooks.aspx.cs" Inherits="Publisher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 132px;
        }

        .auto-style2 {
            width: 267px;
        }

        .auto-style3 {
            text-align: center;
        }

        .auto-style4 {
            width: 95px;
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
                                <h1 class="page-header">Publisher's Book</h1>
                                <hr class="featurette-divider">
                            </div>
                            <div class="col-lg-11">
                                <h4 class="card-header text-center">Select Your Publisher</h4>
                                <asp:DropDownList CssClass="form-control" ID="DropDownListPublisher" Width="400px" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownListPublisher_SelectedIndexChanged"></asp:DropDownList>
                                <hr class="ui-menu-divider" />

                                <div class="col-lg-8">
                                    <p>
                                        <a>Item In Cart:</a><asp:Label ID="lblInCart" runat="server" Text=""></asp:Label>
                                    </p>
                                    <p>
                                        <asp:HyperLink ID="HyperLinkShowCart" CssClass="glyphicon glyphicon-shopping-cart btn btn-info btn-lg" runat="server" NavigateUrl="~/CartItems.aspx">Show Cart</asp:HyperLink>

                                    </p>
                                </div>

                                <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnItemCommand="DataList1_ItemCommand">
                                    <AlternatingItemStyle BackColor="#F7F7F7" />
                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                    <ItemTemplate>
                                        <table class="auto-style2">
                                            <tr>
                                                <td colspan="2" class="auto-style3">
                                                    <asp:Image ID="Image1" runat="server" Height="73px" ImageUrl='<%# Eval("ISBN","./Users/Admin/myHandler.ashx?id={0}") %>' Width="118px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">ISBN:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelISBN" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Name:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelName" runat="server" Text='<%# Eval("BookName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Category:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelCategory" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Quantity:</td>
                                                <td class="auto-style1">
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
                                                <td class="auto-style4">Author:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelAuthor" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Publisher:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelPublisher" runat="server" Text='<%# Eval("PublisherName") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Price:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelPrice" runat="server" Text='<%# Eval("Price","{0: .00}") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Publish Date:</td>
                                                <td class="auto-style1">
                                                    <asp:Label ID="LabelPublishDate" runat="server" Text='<%# Eval("PublishDate","{0:yyyy/MM/dd}") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="auto-style3">
                                                    <asp:Button ID="btnCart" runat="server" Text="Add to Cart" CommandName="pc" />
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                </asp:DataList>
                            </div>
                            <!-- /.col-lg-12 -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </div>
                <!-- /#page-wrapper -->
            </div>
            <!-- /#wrapper -->
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

