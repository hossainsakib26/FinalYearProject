<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="BookStock.aspx.cs" Inherits="Users_Admin_BookStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 607px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <!-- Page Content -->
        <h1>Book Stock</h1>
        <hr>
    </div>
    <div class="card mb-3">
        <div class="card-header">
            <i class="fas fa-table"></i>
            Book Stock Infomation
        </div>
        <div class="card-body">
            <div class="table-responsive">


                <p class="auto-style1">
                    <asp:GridView ID="GridView1" CssClass="table table-responsive form-check" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="StockId" CellPadding="4" ForeColor="#333333" GridLines="None" style="left: 0px; top: 0px; width: 99%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="StockId" HeaderText="StockId" ReadOnly="True" SortExpression="StockId" />
                            <asp:BoundField DataField="BookISBN" HeaderText="BookISBN" SortExpression="BookISBN" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
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
                </p>
            </div>
        </div>
    </div>
</asp:Content>

