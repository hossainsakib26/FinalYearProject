<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Author.aspx.cs" Inherits="Users_Admin_Author" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="content-wrapper">
                <p class="text-center">
                    <button type="button" id="btnShowPopup" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add New Author</button>
                </p>
                <p class="text-center">
                    All Authors 
                </p>
                <div class="modal fade" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Add Author</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <table class="w-100">

                                    <tr>
                                        <td>Author Name</td>
                                        <td>
                                            <asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Birth Date</td>
                                        <td>
                                            <asp:TextBox ID="txtBDate" runat="server" CssClass="myPicker"></asp:TextBox>

                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Address</td>
                                        <td>
                                            <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
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

                <div class="container">

                    <asp:GridView ID="GridViewAuthor" runat="server" Width="834px" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" OnRowEditing="GridViewAuthor_RowEditing" CssClass="table table-responsive table-bordered table-striped table-hover" DataSourceID="SqlDataSourceAuthor" Height="332px">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="AuthorName" HeaderText="Author Name" SortExpression="AuthorName" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="Birth Date" SortExpression="DateOfBirth" DataFormatString="{0:yyyy/MM/dd}" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:CommandField ButtonType="Image" CancelImageUrl="~/Icon/iconfinder_Delete_1493279.png" DeleteImageUrl="~/Icon/iconfinder_basket_1814090.png" EditImageUrl="~/Icon/iconfinder_icon-136-document-edit_314724.png" ShowDeleteButton="True" ShowEditButton="True" UpdateImageUrl="~/Icon/iconfinder_Folder_folder_up_folder_upload_update_folder_upload_1886931.png" />
                        </Columns>
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSourceAuthor" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\myDatabase.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [AUTHOR] WHERE [Id] = @original_Id AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))" InsertCommand="INSERT INTO [AUTHOR] ([AuthorName], [DateOfBirth], [Address]) VALUES (@AuthorName, @DateOfBirth, @Address)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [AUTHOR]" UpdateCommand="UPDATE [AUTHOR] SET [AuthorName] = @AuthorName, [DateOfBirth] = @DateOfBirth, [Address] = @Address WHERE [Id] = @original_Id AND (([AuthorName] = @original_AuthorName) OR ([AuthorName] IS NULL AND @original_AuthorName IS NULL)) AND (([DateOfBirth] = @original_DateOfBirth) OR ([DateOfBirth] IS NULL AND @original_DateOfBirth IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_AuthorName" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
                            <asp:Parameter Name="original_Address" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="AuthorName" Type="String" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="Address" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="AuthorName" Type="String" />
                            <asp:Parameter DbType="Date" Name="DateOfBirth" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="original_Id" Type="Int32" />
                            <asp:Parameter Name="original_AuthorName" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_DateOfBirth" />
                            <asp:Parameter Name="original_Address" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

