<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ShowOrders.aspx.cs" Inherits="Users_Admin_ShowOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-lg-12">
            <h1>Customer Orders</h1>
            <hr class="featurette-divider">
            <br />
            <div class="card mb-3">
                <div class="table table-responsive">
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:HyperLinkField DataNavigateUrlFields="OrderId" DataNavigateUrlFormatString="~/Users/Admin/OrderReport.aspx?id={0}" HeaderText="View" Text="View" />
                            <asp:HyperLinkField DataNavigateUrlFields="OrderId" DataNavigateUrlFormatString="~/Users/Admin/EditOrders.aspx?id={0}" HeaderText="..." Text="Edit" />
                           
                             
                        </Columns>
                    </asp:GridView>
                    <br />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

