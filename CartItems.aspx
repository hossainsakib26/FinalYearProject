<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="CartItems.aspx.cs" Inherits="CartItems" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
        <h1 class="mt-4 mb-3 breadcrumb-item active">Your Items in Cart</h1>

        <hr class="featurette-divider">
        <br />
        <div class="table table-info table-success" style="width: 66%">
            <asp:GridView CssClass="table table-hover table-striped" ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True" Width="538px" OnRowDeleting="GridView1_RowDeleting">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" OnClick="LinkButton1_Click" Text="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <br />
            Grand Total :
    <asp:Label ID="lblGtotal" runat="server" Text="0"></asp:Label>
            <br />
            <asp:Button ID="btnCheckout" CssClass="btn-light" runat="server" OnClick="btnCheckout_Click" Text="Check Out" />
            &nbsp;</div>
    </div>

</asp:Content>

