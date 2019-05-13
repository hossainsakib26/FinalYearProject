<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            left: 0px;
            top: 0px;
            width: 289px;
        }

        .auto-style4 {
            width: 92%;
            max-width: 1140px;
            min-width: 992px;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <header>
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="3" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <!-- Slide One - Set the background image for this slide in the line below -->
                        <div class="carousel-item active" style="background-image: url('myPic/Book1.jpg')">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Second Hand Book Library</h3>
                                <p>Bangladesh Neelkhet newmarket the biggest second hand book market.</p>
                            </div>
                        </div>
                        <!-- Slide Two - Set the background image for this slide in the line below -->
                        <div class="carousel-item" style="background-image: url('myPic/Book2.jpg')">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Second Hand Book Library</h3>
                                <p>Bangladesh Neelkhet newmarket the biggest second hand book market.</p>
                            </div>
                        </div>
                        <!-- Slide Three - Set the background image for this slide in the line below -->
                        <div class="carousel-item" style="background-image: url('myPic/Book3.jpg')">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>Second Hand Book Library</h3>
                                <p>Bangladesh Neelkhet newmarket the biggest second hand book market.</p>
                            </div>
                        </div>
                        <!-- Slide Three - Set the background image for this slide in the line below -->
                        <div class="carousel-item" style="background-image: url('myPic/Trinty College library.jpg')">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>TRINITY COLLEGE LIBRARY IRELAND</h3>
                                <p>Most Beautiful Academic Library in This world.</p>
                            </div>
                        </div>
                        <!-- Slide Three - Set the background image for this slide in the line below -->
                        <div class="carousel-item" style="background-image: url('myPic/the-klementinum-national-library-czech-republic.jpg')">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>The Klementinum National Library Czech Republic</h3>
                                <p>Most Beautiful Academic Library in This World.</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </header>


            <div class="container">
                <h1 class="mt-4 mb-3 breadcrumb-item active">Book For sell</h1>
                <hr class="featurette-divider">
                <br />
                <div class="container marketing" style="width: 95%">
                    <div class="col-lg-2">
                        <h3 class="panel panel-default">Cart: 
            <asp:Label ID="lblInCart" runat="server"></asp:Label>
                            <br />
                            <asp:HyperLink ID="HyperLinkShowCart" CssClass="glyphicon glyphicon-shopping-cart btn btn-info btn-lg" runat="server" NavigateUrl="~/CartItems.aspx">Show Cart</asp:HyperLink></h3>

                    </div>

                    <div class="container col-auto">
                        <div class="col-lg-8">
                            <asp:DataList ID="DataList1" runat="server" CellPadding="4" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="4"  CssClass="table table-responsive-md " Width="607px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" OnItemCommand="DataList1_ItemCommand" Style="margin-top: 0px" GridLines="Vertical" ForeColor="Black">
                                <AlternatingItemStyle BackColor="White" />
                                <FooterStyle CssClass="rounded" BackColor="#CCCC99" />
                                <HeaderStyle CssClass="rounded" BackColor="#6B696B" Font-Bold="True" Font-Names="Arial" Font-Size="Larger" ForeColor="White" HorizontalAlign="Center" />
                                <ItemStyle CssClass="rounded" BackColor="#F7F7DE" />
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="auto-style1">
                                            <div class="text-center">
                                                <asp:Image CssClass="card-img-top rounded" ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("ISBN","~/Users/Admin/myHandler.ashx?id={0}") %>' Width="163px" />
                                                <div class="card-body">
                                                    <h4 class="card-title">ISBN:
            <asp:Label ID="lblISBN" runat="server" Text='<%# Eval("ISBN") %>'></asp:Label>
                                                        Name:
            <asp:Label ID="lblName" runat="server" Text='<%# Eval("BookName") %>'></asp:Label>
                                                    </h4>
                                                    <p class="card-text">
                                                        Category:
            <asp:Label ID="lblCategory" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                                                        <br />
                                                        Quantity:
            <asp:DropDownList ID="DropDownList1" runat="server" Width="81px">
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
                                                    </p>
                                                    Author:
            <asp:Label ID="lblAuthor" runat="server" Text='<%# Eval("AuthorName") %>'></asp:Label>
                                                    <br />
                                                    Publisher:
            <asp:Label ID="lblPublisher" runat="server" Text='<%# Eval("PublisherName") %>'></asp:Label>
                                                    <br />
                                                    Price:
            <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price","{0: .00}") %>'></asp:Label>
                                                    <br />
                                                    Publish Date:
            <asp:Label ID="lblDate" runat="server" Text='<%# Eval("PublishDate","{0:yyyy/MM/dd}") %>'></asp:Label>
                                                    <br />
                                                    <asp:LinkButton ID="LinkButtonViewBook" runat="server" OnClick="LinkButtonViewBook_Click">View Book</asp:LinkButton>
                                                    <br />
                                                    <asp:Button ID="btnCart" class="btn btn-secondary" runat="server" Text="Add To Cart" CommandName="AddToCart" OnClick="btnCart_Click1" />
                                                </div>
                                            </div>
                                        </div>
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSourceBook" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\myDatabase.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [ISBN], [BookName], [CategoryId], [Image], [Price], [PublisherId], [AuthorId], [PublishDate] FROM [Books]"></asp:SqlDataSource>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

