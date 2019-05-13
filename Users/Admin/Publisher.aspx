<%@ Page Title="" Language="C#" MasterPageFile="~/Users/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Publisher.aspx.cs" Inherits="Users_Admin_Publisher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="content-wrapper">
                <p class="text-center">
                    <button type="button" id="btnShowPopup" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add New Publisher</button>
                </p>
                <div class="modal fade" id="myModal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Add Publisher</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <table class="w-100">
                                    <%--<tr>
                                <td>Publisher Id</td>
                                <td>
                                    <asp:TextBox ID="txtpubId" runat="server"></asp:TextBox>
                                </td>
                            </tr>--%>
                                    <tr>
                                        <td>Publisher Name</td>
                                        <td>
                                            <asp:TextBox ID="txtPubName" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Publisher Phone Number</td>
                                        <td>
                                            <asp:TextBox ID="txtPubNum" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <%-- <tr>
                                <td>Category ID</td>
                                <td>
                                    <asp:TextBox ID="txtCatID" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>SubCategory ID</td>
                                <td>
                                    <asp:TextBox ID="txtSubCId" runat="server"></asp:TextBox>
                                </td>
                            </tr>--%>
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
                <p class="text-center">
                    All Publishers and their Book
                </p>
                <div style="margin-left: auto; margin-right: auto; width: 500px;">
                    <p class="text-center">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourcePublisher">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="PublisherName" HeaderText="PublisherName" SortExpression="PublisherName" />
                                <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                        <asp:SqlDataSource ID="SqlDataSourcePublisher" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\myDatabase.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [Publisher] WHERE [Id] = @original_Id AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL))" InsertCommand="INSERT INTO [Publisher] ([PublisherName], [PhoneNumber]) VALUES (@PublisherName, @PhoneNumber)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Publisher]" UpdateCommand="UPDATE [Publisher] SET [PublisherName] = @PublisherName, [PhoneNumber] = @PhoneNumber WHERE [Id] = @original_Id AND (([PublisherName] = @original_PublisherName) OR ([PublisherName] IS NULL AND @original_PublisherName IS NULL)) AND (([PhoneNumber] = @original_PhoneNumber) OR ([PhoneNumber] IS NULL AND @original_PhoneNumber IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_PublisherName" Type="String" />
                                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="PublisherName" Type="String" />
                                <asp:Parameter Name="PhoneNumber" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="PublisherName" Type="String" />
                                <asp:Parameter Name="PhoneNumber" Type="String" />
                                <asp:Parameter Name="original_Id" Type="Int32" />
                                <asp:Parameter Name="original_PublisherName" Type="String" />
                                <asp:Parameter Name="original_PhoneNumber" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </p>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

