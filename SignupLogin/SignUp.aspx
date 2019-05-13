<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignupLogin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book BD SignUp</title>
    <link href="../Users/Admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Users/Admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" />
    <link href="css/sb-admin.css" rel="stylesheet" />

    <!-- Bootstrap core JavaScript-->
    <script src="../Users/Admin/vendor/jquery/jquery.min.js"></script>
    <script src="../Users/Admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../Users/Admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            -ms-flex: 1 1 auto;
            flex: 1 1 auto;
            text-align: center;
        }
    </style>
</head>
<body>
    <form class="bg-white" id="form1" runat="server">

        <div class="container">
            <div class="card card-register mx-auto mt-5">
                <div class="card-header">Register an Account</div>
                <div class="auto-style1">
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtFirstName" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field Text Required" ControlToValidate="txtFirstName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    <label for="firstName">First name</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtLastName" class="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field Text Required" ControlToValidate="txtLastName" CssClass="alert-danger"></asp:RequiredFieldValidator>
                                    <label for="lastName">Last name</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email Required" ControlToValidate="txtEmail" CssClass="alert-danger"></asp:RequiredFieldValidator>
                            <label for="inputEmail">Email address</label>
                            <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <asp:TextBox ID="txtPhone" class="form-control" runat="server" TextMode="Phone"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone Number Needed" ControlToValidate="txtPhone" CssClass="alert-danger"></asp:RequiredFieldValidator>
                            <label for="inputEmail">Phone Number</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-label-group">
                            <asp:DropDownList CssClass="form-control" ID="drpGender" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtPassword" class="form-control" runat="server" TextMode="Password" ControlToCompare="txtPassword"></asp:TextBox>
                                    <label for="inputPassword">Password</label>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-label-group">
                                    <asp:TextBox ID="txtConfirmPassword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                    <label for="confirmPassword">Confirm password</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="password is not same" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ForeColor="#FF3300"></asp:CompareValidator>
                    <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                    <div class="text-center">
              <asp:LinkButton class="d-block small mt-3" ID="LinkButtonRegister" runat="server" href="~/SignupLogin/SignIn.aspx">Go to login Page</asp:LinkButton>
              <asp:LinkButton class="d-block small" ID="LinkButtonForgotPass" href="ForgotPassword.aspx" runat="server">Thinking about Forgot Password?</asp:LinkButton>
            
          </div>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
