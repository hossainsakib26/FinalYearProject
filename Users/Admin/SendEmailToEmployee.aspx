<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SendEmailToEmployee.aspx.cs" Inherits="Users_Admin_SendEmailToEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 61%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-lg-2">
       <h1 class="display-4">Sent_Information</h1>
    <div class="row">
        <div class="col-lg-7">

        <table class="table table-bordered dataTable">
            <tr>
                <td class="odd">To: </td>
                <td class="bg-light">
                    <asp:TextBox CssClass="form-control" ID="txtTo" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="odd">Subject: </td>
                <td>
                    <asp:TextBox CssClass="form-control" ID="txtSubject" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="odd">&nbsp;</td>
                <td class="odd">
                    <asp:TextBox CssClass="form-control" ID="txtBody" runat="server" Height="109px" TextMode="MultiLine" Width="267px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="odd">Attach:</td>
                <td>
                    <asp:FileUpload CssClass="fa-file-upload" ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="odd">&nbsp;</td>
                <td>
                    <asp:Button CssClass="btn-info" ID="btnSend" runat="server" Text="Send" Width="113px" OnClick="btnSend_Click" />
                </td>
            </tr>
        </table>
            <br />
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</div>
        </div>
    </div>
</asp:Content>

<%--System.Net.Mail.MailMessage Email = new System.Net.Mail.MailMessage();
        Email.To.Add(txtEmail.Text);
        Email.From = new System.Net.Mail.MailAddress("sazzadhossainsakib@gmail.com", "Admin", System.Text.Encoding.UTF8);--%>