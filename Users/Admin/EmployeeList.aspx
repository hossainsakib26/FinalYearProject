<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EmployeeList.aspx.cs" Inherits="Users_Admin_EmployeeList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <h1 class="display-4">Employee</h1>
        <hr />
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Your Eployee
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <asp:GridView ID="GridView1" CssClass="table table-hover table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="608px" Height="227px" AllowPaging="True" DataKeyNames="UserId">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" InsertVisible="False" ReadOnly="True" Visible="False" />
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="UserRole" HeaderText="UserRole" SortExpression="UserRole" />
                            <asp:BoundField DataField="UserPhone" HeaderText="UserPhone" SortExpression="UserPhone" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [User] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [User] ([FirstName], [LastName], [Gender], [Email], [Password], [UserRole], [UserPhone]) VALUES (@FirstName, @LastName, @Gender, @Email, @Password, @UserRole, @UserPhone)" SelectCommand="SELECT * FROM [User] where UserRole = 'Employee'" UpdateCommand="UPDATE [User] SET [FirstName] = @FirstName, [LastName] = @LastName, [Gender] = @Gender, [Email] = @Email, [Password] = @Password, [UserRole] = @UserRole, [UserPhone] = @UserPhone WHERE [UserId] = @UserId">
                        <DeleteParameters>
                            <asp:Parameter Name="UserId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="UserRole" Type="String" />
                            <asp:Parameter Name="UserPhone" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Password" Type="String" />
                            <asp:Parameter Name="UserRole" Type="String" />
                            <asp:Parameter Name="UserPhone" Type="String" />
                            <asp:Parameter Name="UserId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

