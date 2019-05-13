<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="Users_Admin_Book" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .auto-style2 {
            width: 1097px;
        }
    </style>
    <script type="text/javascript">
        $('#txtDate').datepicker();
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <p class="text-center">
            <asp:Button ID="btnAddBook" class="btn btn-success" runat="server" Text="Add New Book" OnClick="btnAddBook_Click" />
        </p>
        <div class="container-fluid">
            <h1>BOOK</h1>
            <hr>
        </div>
        <div class="card mb-3">
            <div class="card-header">
                <i class="fas fa-table"></i>
                Book For sell
            </div>
            <div class="card-body">
                <div class="table-responsive">

                    <%--<div style="margin-left: auto; margin-right: auto;" class="auto-style2">
                        <p class="text-center">--%>
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ISBN" Width="1085px" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" InsertVisible="False" ReadOnly="True" SortExpression="ISBN" />
                                    <asp:BoundField DataField="BookName" HeaderText="Book Name" SortExpression="BookName" />
                                    <asp:BoundField DataField="CategoryName" HeaderText="Category" SortExpression="CategoryId" />
                                    <asp:BoundField DataField="SubCategoryName" HeaderText="Sub Category" SortExpression="SubCategoryID" />

                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" DataFormatString="৳{0:00}" />
                                    <asp:BoundField DataField="PublisherName" HeaderText="Publisher Name" SortExpression="PublisherId" />
                                    <asp:BoundField DataField="AuthorName" HeaderText="Author Name" SortExpression="AuthorId" />
                                    <asp:BoundField DataField="PublishDate" HeaderText="Publish Date" SortExpression="PublishDate" DataFormatString="{0:yyyy/MM/dd}" />
                                    <asp:TemplateField HeaderText="Image">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Image ID="image2" runat="server" Height="115px" ImageUrl='<%# Eval("ISBN","myHandler.ashx?id={0}") %>' Width="100px" />
                                            <br />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:HyperLinkField DataNavigateUrlFields="ISBN" DataNavigateUrlFormatString="ModifyBook.aspx?d={0}" HeaderText="..." Text="Modify" />
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
                            <asp:SqlDataSource ID="SqlDataSourceBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\myDatabase.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [Books] WHERE [ISBN] = @original_ISBN AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([CategoryId] = @original_CategoryId) OR ([CategoryId] IS NULL AND @original_CategoryId IS NULL)) AND (([SubCategoryID] = @original_SubCategoryID) OR ([SubCategoryID] IS NULL AND @original_SubCategoryID IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PublisherId] = @original_PublisherId) OR ([PublisherId] IS NULL AND @original_PublisherId IS NULL)) AND (([AuthorId] = @original_AuthorId) OR ([AuthorId] IS NULL AND @original_AuthorId IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Books] ([BookName], [CategoryId], [SubCategoryID], [Image], [Price], [PublisherId], [AuthorId], [PublishDate]) VALUES (@BookName, @CategoryId, @SubCategoryID, @Image, @Price, @PublisherId, @AuthorId, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookName] = @BookName, [CategoryId] = @CategoryId, [SubCategoryID] = @SubCategoryID, [Image] = @Image, [Price] = @Price, [PublisherId] = @PublisherId, [AuthorId] = @AuthorId, [PublishDate] = @PublishDate WHERE [ISBN] = @original_ISBN AND (([BookName] = @original_BookName) OR ([BookName] IS NULL AND @original_BookName IS NULL)) AND (([CategoryId] = @original_CategoryId) OR ([CategoryId] IS NULL AND @original_CategoryId IS NULL)) AND (([SubCategoryID] = @original_SubCategoryID) OR ([SubCategoryID] IS NULL AND @original_SubCategoryID IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([PublisherId] = @original_PublisherId) OR ([PublisherId] IS NULL AND @original_PublisherId IS NULL)) AND (([AuthorId] = @original_AuthorId) OR ([AuthorId] IS NULL AND @original_AuthorId IS NULL)) AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_ISBN" Type="Int32" />
                                    <asp:Parameter Name="original_BookName" Type="String" />
                                    <asp:Parameter Name="original_CategoryId" Type="Int32" />
                                    <asp:Parameter Name="original_SubCategoryID" Type="Int32" />
                                    <asp:Parameter Name="original_Image" Type="Object" />
                                    <asp:Parameter Name="original_Price" Type="Decimal" />
                                    <asp:Parameter Name="original_PublisherId" Type="Int32" />
                                    <asp:Parameter Name="original_AuthorId" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="original_PublishDate" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="BookName" Type="String" />
                                    <asp:Parameter Name="CategoryId" Type="Int32" />
                                    <asp:Parameter Name="SubCategoryID" Type="Int32" />
                                    <asp:Parameter Name="Image" Type="Object" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="PublisherId" Type="Int32" />
                                    <asp:Parameter Name="AuthorId" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="BookName" Type="String" />
                                    <asp:Parameter Name="CategoryId" Type="Int32" />
                                    <asp:Parameter Name="SubCategoryID" Type="Int32" />
                                    <asp:Parameter Name="Image" Type="Object" />
                                    <asp:Parameter Name="Price" Type="Decimal" />
                                    <asp:Parameter Name="PublisherId" Type="Int32" />
                                    <asp:Parameter Name="AuthorId" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="PublishDate" />
                                    <asp:Parameter Name="original_ISBN" Type="Int32" />
                                    <asp:Parameter Name="original_BookName" Type="String" />
                                    <asp:Parameter Name="original_CategoryId" Type="Int32" />
                                    <asp:Parameter Name="original_SubCategoryID" Type="Int32" />
                                    <asp:Parameter Name="original_Image" Type="Object" />
                                    <asp:Parameter Name="original_Price" Type="Decimal" />
                                    <asp:Parameter Name="original_PublisherId" Type="Int32" />
                                    <asp:Parameter Name="original_AuthorId" Type="Int32" />
                                    <asp:Parameter DbType="Date" Name="original_PublishDate" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                       <%-- </p>
                    </div>--%>

                </div>
            </div>
        </div>
        <%--<asp:Literal ID="Literal1" runat="server"></asp:Literal>--%>
    </div>
</asp:Content>

