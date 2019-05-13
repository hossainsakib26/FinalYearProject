<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="SubCategory.aspx.cs" Inherits="Users_Admin_SubCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="content-wrapper">
        <%-- Popup Window --%>
        <p class="text-center">
            <button type="button" id="btnShowPopup" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add New Sub Category</button>
        </p>

        <div class="modal fade" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Add Sub Category</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <table class="w-100">
                             <tr>
                                <td>Category Name</td>
                                <td>
                                    <asp:dropdownlist id="drpCatID" runat="server"></asp:dropdownlist>
                                </td>
                            </tr>
                            <tr>
                                <td>Sub Category Name</td>
                                <td>
                                    <asp:TextBox ID="txtSubCategoryName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close </button>
                        <asp:Button ID="btnInsert" runat="server" Text="Insert" CssClass="btn btn-primary" OnClick="btnInsert_Click" />
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->


        <%-- Start to show grid view --%>
        <p class="text-center">
            Book SubCategory
        </p>
        <div style="margin-right: auto; margin-left: auto; width: 600px;">
            <p class="text-center">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Width="557px" DataKeyNames="Id" DataSourceID="SqlDataSourceSubCat">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategoryName" SortExpression="SubCategoryName" />
                        <asp:BoundField DataField="CategoryId" HeaderText="CategoryId" SortExpression="CategoryId" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#487575" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#275353" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceSubCat" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\myDatabase.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [SubCategory] WHERE [Id] = @original_Id AND (([SubCategoryName] = @original_SubCategoryName) OR ([SubCategoryName] IS NULL AND @original_SubCategoryName IS NULL)) AND [CategoryId] = @original_CategoryId" InsertCommand="INSERT INTO [SubCategory] ([SubCategoryName], [CategoryId]) VALUES (@SubCategoryName, @CategoryId)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [SubCategory]" UpdateCommand="UPDATE [SubCategory] SET [SubCategoryName] = @SubCategoryName, [CategoryId] = @CategoryId WHERE [Id] = @original_Id AND (([SubCategoryName] = @original_SubCategoryName) OR ([SubCategoryName] IS NULL AND @original_SubCategoryName IS NULL)) AND [CategoryId] = @original_CategoryId">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_SubCategoryName" Type="String" />
                        <asp:Parameter Name="original_CategoryId" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="SubCategoryName" Type="String" />
                        <asp:Parameter Name="CategoryId" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SubCategoryName" Type="String" />
                        <asp:Parameter Name="CategoryId" Type="Int32" />
                        <asp:Parameter Name="original_Id" Type="Int32" />
                        <asp:Parameter Name="original_SubCategoryName" Type="String" />
                        <asp:Parameter Name="original_CategoryId" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
        </div>
    </div>
</asp:Content>
