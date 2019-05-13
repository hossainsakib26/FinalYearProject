<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="AuthorBooks.aspx.cs" Inherits="AuthorBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            -webkit-transition: none;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style3 {
            width: 100%;
            border: 3px solid #333399;
            background-color: #c0c0c0;
        }
        .auto-style5 {
            width: 95px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
           
        
    <div class="container">
        <h1 class="mt-4 mb-3 ">Author <small>books</small></h1>
        <hr class="featurette-divider">
        <h2 class="mt-4 mb-3"> Please Select Your Author: <asp:DropDownList ID="drpAuthor" CssClass="auto-style1" runat="server" Height="45px" Width="382px" OnSelectedIndexChanged="drpAuthor_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList></h2>

        <p class="mt-4 mb-3 "> 
            Cart Item:<asp:Label ID="lblInCart" runat="server"></asp:Label></p>
        
        <p class="mt-4 mb-3 ">
        <asp:HyperLink ID="HyperLinkShowCart" CssClass="glyphicon glyphicon-shopping-cart btn btn-info btn-lg" runat="server" NavigateUrl="~/CartItems.aspx">Show Cart</asp:HyperLink></p>
        <div class="mt-4 mb-3 "> 
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <table class="auto-style3">
                        <tr>
                            <td colspan="2">
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
                            <td colspan="2">
                                <asp:Button ID="btnCart" runat="server" Text="Add to Cart" CommandName="ac" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        
        
    </div>
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

