<%@ Page Title="" Language="C#" MasterPageFile="~/GroupMasterPage.master" AutoEventWireup="true" CodeFile="BillingShipping.aspx.cs" Inherits="BillingShipping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
        height: 27px;
    }
        .auto-style3 {
            height: 27px;
            width: 148px;
            text-align: right;
        }
        .auto-style4 {
            width: 148px;
            text-align: right;
        }
        .auto-style5 {
            display: block;
            width: 83%;
            overflow-x: auto;
            -webkit-overflow-scrolling: touch;
            -ms-overflow-style: -ms-autohiding-scrollbar;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-12 order-12">
            <h3 class="mt-4 mb-3 breadcrumb-item active">Shpping</h3>
            <hr class="featurette-divider">
            <br />
            <div class="col col-lg-6">
           <h3 class="alert-heading">Add Receiver Information</h3>
            <div class="auto-style5">
            <table class="table">
                <tr>
                    <td class="auto-style3">Receiving Person:</td>
                    <td class="auto-style2">
                        <asp:TextBox CssClass="form-control" ID="txtReceivingPerson" runat="server" Width="241px"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtReceivingPerson" ErrorMessage="Add Reciver Person"></asp:RequiredFieldValidator>
                        
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Phone Number:</td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="txtPhoneNumber" runat="server" Width="241px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Add Phone Number"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Address:</td>
                    <td>
                        <asp:TextBox CssClass="form-control" ID="txtAddress" runat="server" TextMode="MultiLine" Width="241px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddress" ErrorMessage="Please Give your address"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Delivary Process:</td>
                    <td>
                        <asp:DropDownList CssClass="auto-style7" ID="drpDelivaryProcess" runat="server" Width="230px">
                            <asp:ListItem>Cash On Delivary</asp:ListItem>
                            <asp:ListItem>Baksh</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="drpDelivaryProcess" ErrorMessage="Add your process"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button CssClass="btn btn-secondary" ID="btnOrderRequest" runat="server" Text="Order" OnClick="btnOrderRequest_Click"/>
                    &nbsp;
                        <asp:Button CssClass="btn btn-secondary" ID="btnOrderMore" runat="server" Text="Order More" OnClick="btnOrderMore_Click" />
                    </td>
                </tr>
            </table>
            </div>
                </div>
        </div>
    </div>
</asp:Content>

